
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
      "image": "https://cdn.newsapi.com.au/image/v1/7d8eea7c0455bbf61aa1d1c771f886f7",
      "name": "Gandalf",
      "type": "person",
      "send_by": "Gandalf",
      "last_message": "You should not pass!",
      "timestamp": "14:24",
      "status": "none",
      "unread": 1
    },
    {
      "image": "https://i.pinimg.com/originals/ed/4e/15/ed4e150c0d4ef10dfb2603ec85325f06.jpg",
      "name": "Person 02",
      "type": "person",
      "send_by": "Me",
      "last_message": "Say hello to my little friend.",
      "timestamp": "Yesterday",
      "status": "silenced",
      "unread": 0
    }
  ];

  getChats() {
    return chats;
  }

}