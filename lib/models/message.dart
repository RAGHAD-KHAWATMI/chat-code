import 'package:chat/models/user.dart';

class Message{
  final User sender;
  final String time;
  final String text;
  final bool unread;
  Message({
    required this.sender,
    required this.time,
    required this.unread,
    required this.text});
}
List img = [
    "conor-obrien-nKZuhvCGGQU-unsplash.jpg",
    "michael-dam-mEZ3PoFGs_k-unsplash.jpg",
    "linkedin-sales-navigator-pAtA8xe_iVM-unsplash.jpg",
    "rafaella-mendes-diniz-et_78QkMMQs-unsplash.jpg",
    "joseph-gonzalez-iFgRcqHznqg-unsplash.jpg",
    "conor-obrien-nKZuhvCGGQU-unsplash.jpg",
    "michael-dam-mEZ3PoFGs_k-unsplash.jpg",
    "linkedin-sales-navigator-pAtA8xe_iVM-unsplash.jpg",
    "rafaella-mendes-diniz-et_78QkMMQs-unsplash.jpg",
    "joseph-gonzalez-iFgRcqHznqg-unsplash.jpg",
  ];

  List name = [
    "Abbla Kamel",
    "Yosra",
    "Donald Trumb",
    "Rahaf",
    "Mo Ramadan",
    "Abbla Kamel",
    "Yosra",
    "Donald Trumb",
    "Rahaf",
    "Mo Ramadan"
  ];
  List id=[0,1,2,3,4,5,6,7,8,9,10];
  User currentuser=User(id:0,name:name[0],imgurl:img[0]);
  User user1=User(id:1,name:name[1],imgurl:img[1]);
  User user2=User(id:2,name:name[2],imgurl:img[2]);
  User user3=User(id:3,name:name[3],imgurl:img[3]);
  User user4=User(id:4,name:name[4],imgurl:img[4]);
  User user5=User(id:5,name:name[5],imgurl:img[5]);
  User user6=User(id:6,name:name[6],imgurl:img[6]);
  User user7=User(id:7,name:name[7],imgurl:img[7]);
  User user8=User(id:8,name:name[8],imgurl:img[8]);
  User user9=User(id:9,name:name[9],imgurl:img[9]);
  
  List<Message> chats = [
  Message(
    sender: user1,
    time: "5:30",
    text: 'Hey, how\'s it going? What did you do today?',
    
    unread: true,
  ),
  Message(
    sender: user2,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    
    unread: true,
  ),
  Message(
    sender: user3,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    
    unread: false,
  ),
  Message(
    sender: user4,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    
    unread: true,
  ),
  Message(
    sender: user5,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    
    unread: false,
  ),
  Message(
    sender: user6,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    
    unread: false,
  ),
  Message(
    sender: user7,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    
    unread: false,
  ),
  Message(
    sender: user8,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    
    unread: false,
  ),
  Message(
    sender: user9,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    
    unread: false,
  ),
  
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: user1,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    
    unread: true,
  ),
  Message(
    sender: currentuser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    
    unread: true,
  ),
  Message(
    sender: user1,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    
    unread: true,
  ),
  Message(
    sender: user1,
    time: '3:15 PM',
    text: 'All the food',
    
    unread: true,
  ),
  Message(
    sender: currentuser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    
    unread: true,
  ),
  Message(
    sender: user1,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    unread: true,
  ),
  
  
];