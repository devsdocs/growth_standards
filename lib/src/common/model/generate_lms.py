import glob
import numpy as np
import pandas as pd
from scipy.optimize import minimize


def estimate_lms(sds, values):
    """
    Estimate LMS parameters from given SD scores and values.
    Uses nonlinear optimization to fit the Box-Cox (LMS) model:
    value = M * (1 + L * S * z) ** (1 / L)  if L != 0
    value = M * exp(S * z)                  if L == 0
    """
    sds = np.array(sds)
    values = np.array(values)

    def lms_loss(params):
        L, M, S = params
        # Avoid invalid values
        if M <= 0 or S <= 0:
            return np.inf
        if abs(L) < 1e-6:
            pred = M * np.exp(S * sds)
        else:
            pred = M * np.power(1 + L * S * sds, 1 / L)
        return np.sum((pred - values) ** 2)

    # Initial guesses
    M0 = values[3]  # SD0
    S0 = (values[4] - values[2]) / (2 * M0)  # Approximate S
    L0 = 0.1  # Small value for L

    res = minimize(
        lms_loss,
        x0=[L0, M0, S0],
        bounds=[(-2, 2), (1e-3, None), (1e-6, None)],
        method="L-BFGS-B",
    )
    L, M, S = res.x
    return float(L), float(M), float(S)


def process_file(input_csv, output_csv):
    df = pd.read_csv(input_csv)
    if "l" in df.columns and "m" in df.columns and "s" in df.columns:
        # If LMS parameters already exist, skip processing
        print(f"Skipping {input_csv}, LMS parameters already present.")
        df.to_csv(output_csv, index=False)
        return

    print(f"Processing {input_csv}...")
    # Prepare output
    output = []
    for _, row in df.iterrows():
        value = row[df.columns[0]]
        sds = [-3, -2, -1, 0, 1, 2, 3]
        values = [row[f"sd{n if n >= 0 else str(abs(n)) + 'neg'}"] for n in sds]
        L, M, S = estimate_lms(sds, values)
        output.append(
            {
                df.columns[0]: value,
                "l": L,
                "m": M,
                "s": S,
                "sd3neg": values[0],
                "sd2neg": values[1],
                "sd1neg": values[2],
                "sd0": values[3],
                "sd1": values[4],
                "sd2": values[5],
                "sd3": values[6],
            }
        )

    out_df = pd.DataFrame(output)
    out_df.to_csv(output_csv, index=False)


def main():
    source_list = glob.glob("data/tables/*.csv")
    for csv_ in source_list:
        process_file(csv_, csv_.replace("tables", "lms"))


if __name__ == "__main__":
    main()
