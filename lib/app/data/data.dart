class Data {
  List<Map<String, dynamic>> chats = [
    {
      "image": "https://evoimprese.it/wp-content/uploads/jobs.jpg",
      "name": "Group 01",
      "type": "group",
      "send_by": "Employer",
      "last_message": "Amazing app.",
      "timestamp": "Now",
      "status": "pinned",
      "unread": 10
    },
    {
      "image":
          "https://cdn.newsapi.com.au/image/v1/7d8eea7c0455bbf61aa1d1c771f886f7",
      "name": "Gandalf",
      "type": "person",
      "send_by": "Gandalf",
      "last_message": "You shall not pass!",
      "timestamp": "14:24",
      "status": "none",
      "unread": 1
    },
    {
      "image":
          "https://i.pinimg.com/originals/ed/4e/15/ed4e150c0d4ef10dfb2603ec85325f06.jpg",
      "name": "Person 02",
      "type": "person",
      "send_by": "Me",
      "last_message": "Say hello to my little friend.",
      "timestamp": "Yesterday",
      "status": "silenced",
      "unread": 0
    }
  ];

  List<Map<String, dynamic>> stories = [
    {
      "user_name": "Gandalf",
      "image": "https://i.pinimg.com/originals/6b/c8/e6/6bc8e6d3257d29b41b619f90a6cb2177.jpg",
      "day": "Yesterday",
      "hour": "12:00",
      "watched": true
    },
    {
      "user_name": "Flutter Dev",
      "image": "https://specials-images.forbesimg.com/imageserve/5d9c1de8793bd50006ea0f22/960x0.jpg",
      "day": "Yesterday",
      "hour": "14:12",
      "watched": false
    }
  ];

  List<Map<String, dynamic>> getChats() {
    return chats;
  }

  List<Map<String, dynamic>> getStories() {
    return this.stories;
  }
}
