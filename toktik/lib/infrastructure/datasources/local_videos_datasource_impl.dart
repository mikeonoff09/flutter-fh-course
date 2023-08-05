


import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_post.dart';

class LocalVideoDataSource implements VideoPostDataSource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser() {
    // TODO: implement getFavoriteVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getVideoPostsByPage(int page) async {
    
    await Future.delayed(const Duration(seconds: 2));
    
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();
    return newVideos;
  }

}