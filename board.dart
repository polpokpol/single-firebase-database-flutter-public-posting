import 'package:firebase_database/firebase_database.dart';

class Board{
  Board(this.subject, this.body);

  String key;
  String subject;
  String body;

  Board.fromSnapshot(DataSnapshot snapshot):
    key = snapshot.key,
    subject = snapshot.value["subject"],
    body = snapshot.value["body"];

  toJson(){
    return{
      "subject":subject,
      "body":body,
    };
  }
}
