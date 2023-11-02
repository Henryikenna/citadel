

import 'package:citadel/models/comment.dart';
import 'package:citadel/models/user.dart';

class Video {
  final String videoUrl;
  final User postedBy;
  final List<Comment> videoComment;
  final String videoTitle;
  final String caption;
  final String likes;
  final String comments;

  Video({required this.videoUrl, required this.postedBy, required this.videoComment, required this.videoTitle, required this.caption, required this.likes, required this.comments});

  



}