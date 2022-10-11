import 'dart:math';

import 'package:flutter/material.dart';

import 'components/home_appbar.dart';
import '../../../domain/entities/video.dart';
import 'components/interaction_buttons.dart';
import 'components/video_details.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final _random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 30,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: const LinearGradient(
            colors: [
              Colors.lightBlueAccent,
              Colors.pink,
            ],
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Container(
          height: 30,
          width: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.add, color: Colors.black, size: 24),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        elevation: 0,
        currentIndex: 0,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_outlined),
            label: 'Friends',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inbox_outlined),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: PageView.builder(
                itemCount: videos.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (_, i) {
                  final video = videos[i];
                  return Stack(
                    children: [
                      Positioned.fill(
                        child: Image.network(video.url, fit: BoxFit.cover),
                        // child: Placeholder(),
                      ),
                      Positioned(
                        left: 8,
                        bottom: 12,
                        child: VideoDetails(video),
                      ),
                      Positioned(
                        right: 8,
                        bottom: 12,
                        child: InteractionButtons(video: video),
                      ),
                    ],
                  );
                },
              ),
            ),
            //AppBar
            const Positioned(top: 0, left: 0, right: 0, child: HomeAppBar()),
          ],
        ),
      ),
    );
  }
}
