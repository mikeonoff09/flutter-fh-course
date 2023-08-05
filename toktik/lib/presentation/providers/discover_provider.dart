import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostRepository videoPostRepository;

  bool initialLoading = true;
  List<VideoPost>? videos;
  DiscoverProvider({this.videos, required this.videoPostRepository});

  Future<void> loadingNextPage() async {
    // changed to use repository
    // await Future.delayed(const Duration(seconds: 2));
    // final List<VideoPost> newVideos = videoPosts
    //     .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
    //     .toList();
    // videos = [...videos ?? [], ...newVideos];

    final newVideos = await videoPostRepository.getVideoPostsByPage(1);
    videos = [...videos ?? [], ...newVideos];
    notifyListeners();
  }
}
