bool topIsSelected = true;
  bool albumsIsSelected = false;
  bool artistsIsSelected = false;
  bool songsIsSelected = false;
  bool playlistsIsSelected = false;
  bool videosIsSelected = false;
  bool podcastIsSelected = false;

  void topButtonPressed() {
      topIsSelected = true;
      albumsIsSelected = false;
      artistsIsSelected = false;
      songsIsSelected = false;
      playlistsIsSelected = false;
      videosIsSelected = false;
      podcastIsSelected = false;
  }
  void albumsButtonPressed() {
      topIsSelected = false;
      albumsIsSelected = true;
      artistsIsSelected = false;
      songsIsSelected = false;
      playlistsIsSelected = false;
      videosIsSelected = false;
      podcastIsSelected = false;
  }
  void artistsButtonPressed() {
      topIsSelected = false;
      albumsIsSelected = false;
      artistsIsSelected = true;
      songsIsSelected = false;
      playlistsIsSelected = false;
      videosIsSelected = false;
      podcastIsSelected = false;
  }
  void songsButtonPressed() {
      topIsSelected = false;
      albumsIsSelected = false;
      artistsIsSelected = false;
      songsIsSelected = true;
      playlistsIsSelected = false;
      videosIsSelected = false;
      podcastIsSelected = false;
  }
  void playlistsButtonPressed() {
      topIsSelected = false;
      albumsIsSelected = false;
      artistsIsSelected = false;
      songsIsSelected = false;
      playlistsIsSelected = true;
      videosIsSelected = false;
      podcastIsSelected = false;
  }
  void videosButtonPressed() {
      topIsSelected = false;
      albumsIsSelected = false;
      artistsIsSelected = false;
      songsIsSelected = false;
      playlistsIsSelected = false;
      videosIsSelected = true;
      podcastIsSelected = false;
  }
  void podcastsButtonPressed() {
      topIsSelected = false;
      albumsIsSelected = false;
      artistsIsSelected = false;
      songsIsSelected = false;
      playlistsIsSelected = false;
      videosIsSelected = false;
      podcastIsSelected = true;
  }