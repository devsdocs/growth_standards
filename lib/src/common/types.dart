import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'number')
enum Sex {
  male(1),
  female(2),
  both(3),
  ;

  const Sex(this.number);
  final int number;
}

/// [LengthHeightMeasurementPosition.recumbent] for age <= 730 days
///
/// [LengthHeightMeasurementPosition.standing] for age > 730 days
@JsonEnum(valueField: 'value')
enum LengthHeightMeasurementPosition {
  /// [recumbent] for age <= 730 days
  recumbent('recumbent'),

  /// [standing] for age > 730 days
  standing('standing'),
  ;

  const LengthHeightMeasurementPosition(this.value);
  final String value;
}

@JsonEnum(valueField: 'number')
enum Months {
  january(DateTime.january, 'January', 31),
  february(DateTime.february, 'February', 28),
  march(DateTime.march, 'March', 31),
  april(DateTime.april, 'April', 30),
  may(DateTime.may, 'May', 31),
  june(DateTime.june, 'June', 30),
  july(DateTime.july, 'July', 31),
  august(DateTime.august, 'August', 31),
  september(DateTime.september, 'September', 30),
  october(DateTime.october, 'October', 31),
  november(DateTime.november, 'November', 30),
  december(DateTime.december, 'December', 31),
  ;

  const Months(this.number, this.text, this.date);
  final int date;
  final int number;
  final String text;
}

enum ZScoreValue {
  neg5(-5),
  neg4(-4),
  neg3(-3),
  neg2(-2),
  neg1(-1),
  zero(0),
  pos1(1),
  pos2(2),
  pos3(3),
  pos4(4),
  pos5(5),
  ;

  const ZScoreValue(this.value);
  final int value;
}

enum PercentileValue {
  $1(1),
  $2(2),
  $3(3),
  $4(4),
  $5(5),
  $6(6),
  $7(7),
  $8(8),
  $9(9),
  $10(10),
  $11(11),
  $12(12),
  $13(13),
  $14(14),
  $15(15),
  $16(16),
  $17(17),
  $18(18),
  $19(19),
  $20(20),
  $21(21),
  $22(22),
  $23(23),
  $24(24),
  $25(25),
  $26(26),
  $27(27),
  $28(28),
  $29(29),
  $30(30),
  $31(31),
  $32(32),
  $33(33),
  $34(34),
  $35(35),
  $36(36),
  $37(37),
  $38(38),
  $39(39),
  $40(40),
  $41(41),
  $42(42),
  $43(43),
  $44(44),
  $45(45),
  $46(46),
  $47(47),
  $48(48),
  $49(49),
  $50(50),
  $51(51),
  $52(52),
  $53(53),
  $54(54),
  $55(55),
  $56(56),
  $57(57),
  $58(58),
  $59(59),
  $60(60),
  $61(61),
  $62(62),
  $63(63),
  $64(64),
  $65(65),
  $66(66),
  $67(67),
  $68(68),
  $69(69),
  $70(70),
  $71(71),
  $72(72),
  $73(73),
  $74(74),
  $75(75),
  $76(76),
  $77(77),
  $78(78),
  $79(79),
  $80(80),
  $81(81),
  $82(82),
  $83(83),
  $84(84),
  $85(85),
  $86(86),
  $87(87),
  $88(88),
  $89(89),
  $90(90),
  $91(91),
  $92(92),
  $93(93),
  $94(94),
  $95(95),
  $96(96),
  $97(97),
  $98(98),
  $99(99),
  ;

  const PercentileValue(this.value);
  final num value;
}

enum AdjustedLengthType {
  who(0.7),
  cdc(0.8),
  ;

  const AdjustedLengthType(this.value);

  final num value;
}
