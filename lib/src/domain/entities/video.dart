class Video {
  const Video({
    required this.title,
    required this.description,
    required this.url,
    required this.userName,
    required this.userAvatar,
    required this.likes,
    required this.comments,
    required this.saves,
    required this.shares,
  });

  final String title, description, url, userName, userAvatar;
  final int likes, comments, saves, shares;
}

const videos = <Video>[
  Video(
    title: 'Title',
    description: 'Description',
    url: 'https://c.tenor.com/rGlJRTpiBr8AAAAM/tiktok-dance.gif',
    userName: 'Dash',
    userAvatar:
        'https://ih1.redbubble.net/image.1076687066.0716/st,small,507x507-pad,600x600,f8f8f8.jpg',
    likes: 986,
    comments: 32,
    saves: 329,
    shares: 678,
  ),
  Video(
    title: 'Title',
    description: 'Description',
    url: 'https://c.tenor.com/wSL8W4ewz3AAAAAC/tiktok-dancing.gif',
    userName: 'Dash',
    userAvatar:
        'https://ih1.redbubble.net/image.1076687066.0716/st,small,507x507-pad,600x600,f8f8f8.jpg',
    likes: 986,
    comments: 32,
    saves: 329,
    shares: 678,
  ),
  Video(
    title: 'Title',
    description: 'Description',
    url:
        'https://i.pinimg.com/originals/30/7c/de/307cde68b1313fb6fe1f958f6a043959.gif',
    userName: 'Dash',
    userAvatar:
        'https://ih1.redbubble.net/image.1076687066.0716/st,small,507x507-pad,600x600,f8f8f8.jpg',
    likes: 986,
    comments: 32,
    saves: 329,
    shares: 678,
  ),
];
