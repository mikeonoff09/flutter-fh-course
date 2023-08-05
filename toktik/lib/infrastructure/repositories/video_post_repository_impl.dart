import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';

class VideoPostRepositoryImpl implements VideoPostRepository {
  final VideoPostDataSource videoPostDataSource;

  VideoPostRepositoryImpl({required this.videoPostDataSource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser() {
    // TODO: implement getFavoriteVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getVideoPostsByPage(int page) {
    return videoPostDataSource.getVideoPostsByPage(page);
  }
}
