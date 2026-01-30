import 'package:hive/hive.dart';
//part directive to link the generated adapter code
part 'note_model.g.dart';

//first determine a unique typeId for each model class
@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  //second determine a unique fieldId for each field
  @HiveField(0)
  String title;
  @HiveField(1)
  String content;
  @HiveField(2)
  //changed DateTime to String for Hive compatibility
  final String date;
  @HiveField(3)
  int color;
  NoteModel({
    required this.title,
    required this.content,
    required this.date,
    required this.color,
  });
}
