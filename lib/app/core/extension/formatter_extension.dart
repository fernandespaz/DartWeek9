import 'package:intl/intl.dart';

extension FormatterExtension on double{
  String get currencyPTBR{
    final currancyFormat = NumberFormat.currency(
      locale: 'pt_br',
      symbol: r'R$'
    );
    return currancyFormat.format(this);
  }
}