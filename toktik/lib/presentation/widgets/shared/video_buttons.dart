import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik/config/helpers/human_formats.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost videoPost;

  const VideoButtons({
    Key? key,
    required this.videoPost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          icon: Icons.favorite,
          label: videoPost.likes,
        ),
        const SizedBox(height: 20),
        _CustomIconButton(
          icon: Icons.remove_red_eye_outlined,
          label: videoPost.views,
        ),
        const SizedBox(height: 20),
        SpinPerfect(
          duration: const Duration(seconds: 5),
          infinite: true,
          child: const _CustomIconButton(
            icon: Icons.play_circle_outline,
            label: 0,
          ),
        ),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final int label;
  const _CustomIconButton({
    super.key,
    required this.icon,
    required this.label,
    Color? iconColor,
  }) : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: color,
            size: 40,
          ),
        ),
        label > 0
            ? Text(
                HumanFormats.formatNumber(label),
                style: const TextStyle(
                  color: Colors.white,
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
