import 'package:equatable/equatable.dart';

class Quote extends Equatable {
  final id;
  final String quoteText;
  final String quoteAuthor;
  const Quote({this.id, this.quoteText, this.quoteAuthor});

  @override
  List<Object> get props => [id, quoteText, quoteAuthor];

  static Quote fromJson(dynamic json) {
    return Quote(
        id: json['_id'],
        quoteText: json['_quoteText'],
        quoteAuthor: json['_quoteAuthor']);
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Quote {id: $id}';
  }
}
