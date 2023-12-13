enum Sex {
  male(1),
  female(2),
  ;

  const Sex(this.number);
  final int number;
}

enum Measure {
  recumbent,
  standing,
  unknown,
  ;
}

enum Months {
  januari(1, 'Januari', 31),
  februari(2, 'Februari', 28),
  // februariLeap(2, 'Februari', 29),
  maret(3, 'Maret', 31),
  april(4, 'April', 30),
  mei(5, 'Mei', 31),
  juni(6, 'Juni', 30),
  juli(7, 'Juli', 31),
  agustus(8, 'Agustus', 31),
  september(9, 'September', 30),
  oktober(10, 'Oktober', 31),
  november(11, 'November', 30),
  desember(12, 'Desember', 31),
  ;

  const Months(this.number, this.text, this.date);
  final int date;
  final int number;
  final String text;
}
