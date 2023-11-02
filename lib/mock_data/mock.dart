import 'package:citadel/models/comment.dart';
import 'package:citadel/models/user.dart';
import 'package:citadel/models/video.dart';

User currentUser = User(username: "Henry", profileImageUrl: "https://i.pinimg.com/474x/94/1e/44/941e44034dc32705948bc7666d2d9f8f.jpg", followers: "22M");


User demoUser1 = User(username: "Karsten Winegeart", profileImageUrl: "https://images.unsplash.com/profile-1583427783052-3da8ceab5579image?auto=format&fit=crop&q=60&bg=fff&crop=faces&dpr=1&h=150&w=150.webp", followers: "252K");
User demoUser2 = User(username: "Altein Ferreria", profileImageUrl: "https://images.unsplash.com/profile-1679463697548-2af2168daf18image?auto=format&fit=crop&q=60&bg=fff&crop=faces&dpr=1&h=150&w=150.webp", followers: "220");
User demoUser3 = User(username: "imad_786", profileImageUrl: "https://images.unsplash.com/profile-1683636599744-9e964a80dc93image?auto=format&fit=crop&q=60&bg=fff&crop=faces&dpr=1&h=150&w=150.webp", followers: "10K");
User demoUser4 = User(username: "Soheb Zaldi", profileImageUrl: "https://images.unsplash.com/photo-1698250403749-8d3e0e5f507b?auto=format&fit=crop&q=80&w=1932&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D.webp", followers: "12");



final List<Video> videos = [
  Video(videoUrl: "vid1.mp4", postedBy: demoUser1, videoTitle: "Glory Deficiency", caption: "caption1", likes: "18.0K", comments: "2008", videoComment: comment1),
  Video(videoUrl: "vid2.mp4", postedBy: demoUser2, videoTitle: "Magestic Transfusion", caption: "caption2", likes: "28", comments: "2", videoComment: comment2),
  Video(videoUrl: "vid3.mp4", postedBy: demoUser3, videoTitle: "Celebrate Life", caption: "caption3", likes: "10M", comments: "23.9K", videoComment: comment3),
  Video(videoUrl: "vid1.mp4", postedBy: demoUser4, videoTitle: "Treasure Guarantee", caption: "caption4", likes: "880", comments: "240", videoComment: comment4),
];

final List<Comment> comment1 = [
  Comment(profileImageUrl: "https://images.unsplash.com/photo-1695902173528-0b15104c4554?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8fA%3D%3D.webp", comment: "Aliquam diam nulla, vestibulum sodales felis in, finibus condimentum tellus.", likes: "763"),
  Comment(profileImageUrl: "https://images.unsplash.com/photo-1698188154086-724fda0f5989?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNXx8fGVufDB8fHx8fA%3D%3D.webp", comment: "Praesent in enim eget dolor pretium ultricies vel id urna. Mauris ut urna eget enim dignissim interdum. Nulla eu finibus tortor. In a ornare elit.", likes: "30K"),
  Comment(profileImageUrl: "https://images.unsplash.com/photo-1698276174058-c55a056de145?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOXx8fGVufDB8fHx8fA%3D%3D.webp", comment: "Phasellus laoreet elementum interdum. Donec semper turpis a vehicula rutrum. Curabitur non porta arcu. Vestibulum pretium ante et massa tincidunt bibendum.", likes: "7638"),
  Comment(profileImageUrl: "https://images.unsplash.com/photo-1698162940489-f8fa0c76ddd6?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNHx8fGVufDB8fHx8fA%3D%3D.webp", comment: "Ut tempus mi vitae congue luctus.", likes: "286K"),
  Comment(profileImageUrl: "https://images.unsplash.com/photo-1698674913743-88148adc7b26?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0OXx8fGVufDB8fHx8fA%3D%3D.webp", comment: "Vivamus vehicula erat eu accumsan lacinia. Etiam eget iaculis lectus. Nulla eu eleifend nibh. Duis sit amet nulla ut odio accumsan maximus ac at mauris. Nulla facilisi. Nunc et vulputate metus, ut aliquam ipsum. Vivamus faucibus bibendum accumsan. Cras tempor nec risus ut condimentum. Cras vulputate aliquam nisl a egestas.", likes: "5654"),
  Comment(profileImageUrl: "https://images.unsplash.com/photo-1698399134669-a820330f3220?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1OXx8fGVufDB8fHx8fA%3D%3D.webp", comment: "Vivamus ante lacus, maximus non lectus sit amet, tincidunt congue orci. Nullam convallis rhoncus posuere. Pellentesque sollicitudin, eros id vehicula accumsan, tortor turpis sodales arcu, pulvinar convallis mi augue nec odio. Donec luctus, erat vel ultrices lobortis, arcu metus tincidunt nulla, et gravida quam quam nec erat.", likes: "876"),
  Comment(profileImageUrl: "https://images.unsplash.com/photo-1698728877137-963bca5b5310?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3M3x8fGVufDB8fHx8fA%3D%3D.webp", comment: "Ut placerat, massa id fermentum fermentum, mi justo finibus justo, egestas aliquet nulla lacus semper justo. Curabitur ultrices vel nisi sed pulvinar.", likes: "65K"),
  Comment(profileImageUrl: "https://images.unsplash.com/photo-1698747484795-ef774ea0cdff?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4MHx8fGVufDB8fHx8fA%3D%3D.webp", comment: "Morbi et eros eu arcu ornare fermentum a at arcu. Phasellus ut leo aliquam, sollicitudin risus sit amet, consequat libero. Sed a nunc dictum magna feugiat fringilla vel non neque. Sed tortor orci, lacinia vitae sollicitudin at, condimentum sed augue. Donec varius consectetur tellus, in molestie felis posuere non.", likes: "1K"),
  Comment(profileImageUrl: "https://images.unsplash.com/photo-1698713056888-871ab0249d66?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5M3x8fGVufDB8fHx8fA%3D%3D.webp", comment: "Sed ut erat quis risus auctor cursus eu eget nunc. Fusce dictum sem metus, id accumsan nisl lobortis facilisis. Sed sed tempus quam.", likes: "2"),
];


final List<Comment> comment2 = [
  Comment(profileImageUrl: "https://images.unsplash.com/photo-1695902173528-0b15104c4554?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8fA%3D%3D.webp", comment: "Aliquam diam nulla, vestibulum sodales felis in, finibus condimentum tellus.", likes: "763"),
  Comment(profileImageUrl: "https://images.unsplash.com/photo-1698188154086-724fda0f5989?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNXx8fGVufDB8fHx8fA%3D%3D.webp", comment: "Praesent in enim eget dolor pretium ultricies vel id urna. Mauris ut urna eget enim dignissim interdum. Nulla eu finibus tortor. In a ornare elit.", likes: "30K"),
  Comment(profileImageUrl: "https://images.unsplash.com/photo-1698674913743-88148adc7b26?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0OXx8fGVufDB8fHx8fA%3D%3D.webp", comment: "Vivamus vehicula erat eu accumsan lacinia. Etiam eget iaculis lectus. Nulla eu eleifend nibh. Duis sit amet nulla ut odio accumsan maximus ac at mauris. Nulla facilisi. Nunc et vulputate metus, ut aliquam ipsum. Vivamus faucibus bibendum accumsan. Cras tempor nec risus ut condimentum. Cras vulputate aliquam nisl a egestas.", likes: "5654"),
  Comment(profileImageUrl: "https://images.unsplash.com/photo-1698713056888-871ab0249d66?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5M3x8fGVufDB8fHx8fA%3D%3D.webp", comment: "Sed ut erat quis risus auctor cursus eu eget nunc. Fusce dictum sem metus, id accumsan nisl lobortis facilisis. Sed sed tempus quam.", likes: "2"),
];

final List<Comment> comment3 = [
  Comment(profileImageUrl: "https://images.unsplash.com/photo-1695902173528-0b15104c4554?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8fA%3D%3D.webp", comment: "Aliquam diam nulla, vestibulum sodales felis in, finibus condimentum tellus.", likes: "763"),
  Comment(profileImageUrl: "https://images.unsplash.com/photo-1698188154086-724fda0f5989?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNXx8fGVufDB8fHx8fA%3D%3D.webp", comment: "Praesent in enim eget dolor pretium ultricies vel id urna. Mauris ut urna eget enim dignissim interdum. Nulla eu finibus tortor. In a ornare elit.", likes: "30K"),
  Comment(profileImageUrl: "https://images.unsplash.com/photo-1698399134669-a820330f3220?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1OXx8fGVufDB8fHx8fA%3D%3D.webp", comment: "Vivamus ante lacus, maximus non lectus sit amet, tincidunt congue orci. Nullam convallis rhoncus posuere. Pellentesque sollicitudin, eros id vehicula accumsan, tortor turpis sodales arcu, pulvinar convallis mi augue nec odio. Donec luctus, erat vel ultrices lobortis, arcu metus tincidunt nulla, et gravida quam quam nec erat.", likes: "876"),
  Comment(profileImageUrl: "https://images.unsplash.com/photo-1698728877137-963bca5b5310?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3M3x8fGVufDB8fHx8fA%3D%3D.webp", comment: "Ut placerat, massa id fermentum fermentum, mi justo finibus justo, egestas aliquet nulla lacus semper justo. Curabitur ultrices vel nisi sed pulvinar.", likes: "65K"),
  Comment(profileImageUrl: "https://images.unsplash.com/photo-1698713056888-871ab0249d66?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5M3x8fGVufDB8fHx8fA%3D%3D.webp", comment: "Sed ut erat quis risus auctor cursus eu eget nunc. Fusce dictum sem metus, id accumsan nisl lobortis facilisis. Sed sed tempus quam.", likes: "2"),
];

final List<Comment> comment4 = [
  Comment(profileImageUrl: "https://images.unsplash.com/photo-1698728877137-963bca5b5310?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3M3x8fGVufDB8fHx8fA%3D%3D.webp", comment: "Ut placerat, massa id fermentum fermentum, mi justo finibus justo, egestas aliquet nulla lacus semper justo. Curabitur ultrices vel nisi sed pulvinar.", likes: "65K"),
  Comment(profileImageUrl: "https://images.unsplash.com/photo-1698747484795-ef774ea0cdff?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4MHx8fGVufDB8fHx8fA%3D%3D.webp", comment: "Morbi et eros eu arcu ornare fermentum a at arcu. Phasellus ut leo aliquam, sollicitudin risus sit amet, consequat libero. Sed a nunc dictum magna feugiat fringilla vel non neque. Sed tortor orci, lacinia vitae sollicitudin at, condimentum sed augue. Donec varius consectetur tellus, in molestie felis posuere non.", likes: "1K"),
  Comment(profileImageUrl: "https://images.unsplash.com/photo-1698713056888-871ab0249d66?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5M3x8fGVufDB8fHx8fA%3D%3D.webp", comment: "Sed ut erat quis risus auctor cursus eu eget nunc. Fusce dictum sem metus, id accumsan nisl lobortis facilisis. Sed sed tempus quam.", likes: "2"),
];