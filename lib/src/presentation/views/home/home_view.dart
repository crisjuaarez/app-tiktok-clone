import 'package:flutter/material.dart';

import '../../../domain/entities/video.dart';

import 'components/home_appbar.dart';
import 'components/bottom_navbar.dart';
import 'components/tiktok_widget.dart';
import 'components/create_tiktok_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: const BottomNavBar(),
      floatingActionButton: const CreateTikTokButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: PageView.builder(
                itemCount: videos.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (_, i) => TikTokWidget(videos[i]),
              ),
            ),
            const Positioned(top: 0, left: 0, right: 0, child: HomeAppBar()),
          ],
        ),
      ),
    );
  }
}
