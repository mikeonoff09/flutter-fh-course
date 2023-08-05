import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostDataSource {
  Future<List<VideoPost>> getVideoPostsByPage(int page);
  Future<List<VideoPost>> getFavoriteVideosByUser();
}
