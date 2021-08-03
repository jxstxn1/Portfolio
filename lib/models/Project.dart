import 'package:flutter_profile/models/image.dart';

class Project {
  final String? title, description, startReason, resume, language;
  final List<String>? achievements;
  final List<ImageData>? images;

  Project({
    this.title,
    this.language,
    this.description,
    this.startReason,
    this.achievements,
    this.resume,
    this.images,
  });
}

List<Project> demo_projects = [
  Project(
    title: "Kontra App",
    language: "Flutter",
    description:
        "My First big Flutter project. A news App with an custom API, Dark and Light Theme, Notifications, Favourites and Caching  Feature.",
    startReason:
        "I've got asked by my ex boss if its possible to make an app for our Blog. At this point I was just into basic Java Coding. So i tried it with different technologies, first with Java after that with Kotlin. But all this was not suitable for our small blog because we still need an IOS App and I am the only developer. So I went to Flutter and started learning it and stayed on Flutter.",
    achievements: [
      "Connection with Custom API",
      "Notifications",
      "Light and Dark Theme",
      "Favourites",
      "Caching"
    ],
    resume:
        "In the end the project was and is bigger than expected, but I learned so much during the main development process. I planned a complete rewrite of the app with all the stuff I learned in the past year",
    images: [
      ImageData(
        imageSource:
            "assets/images/projects/kontra-app/accept_notifications.png",
        description:
            "This is the screen which shows up to ask the User for the notification permission",
      ),
      ImageData(
        imageSource: "assets/images/projects/kontra-app/home_screen.png",
        description:
            "This is the Home Screen where the user can see all articles",
      ),
      ImageData(
        imageSource: "assets/images/projects/kontra-app/search_screen.png",
        description:
            "This is the Search Screen where the user can search in all existing articles",
      ),
      ImageData(
        imageSource: "assets/images/projects/kontra-app/article_screen.png",
        description:
            "This is the Article Screen where the user can read the article, like it and share it",
      ),
    ],
  ),
  Project(
    title: "Door Opener App",
    language: "Flutter",
    description:
        "Big School project which I made with a class mate to open a electronic door with the app and an raspberry Pi. Connection works with a custom TCP Socket. One Time Passwords for one time access to a door and fully encrypted.",
    startReason:
        "In our Computer Science Lessons we had to do a Project. A classmate had the Idea to make a Opener for Electronic Doors, which can be opened with a Smartphone App.",
    achievements: [
      "Custom TCP Server Connection",
      "Encryption",
      "AutoUpdater",
      "One Time Passwords",
      "Multiple Devices",
      "Multi Language"
    ],
    resume:
        "In the End it was a very nice Project. We both learned so much about network communication and encryption. I learned a lot about User Friendly App Design",
    images: [
      ImageData(
        imageSource: "assets/images/projects/door-opener-app/no_update.png",
        description:
            "This is the Screen which shows up if there is no update available",
      ),
      ImageData(
        imageSource:
            "assets/images/projects/door-opener-app/update_available.png",
        description:
            "This is the Screen which shows up if there is an update available",
      ),
      ImageData(
        imageSource:
            "assets/images/projects/door-opener-app/error_screen_1.png",
        description:
            "This is the Screen which shows up if the encryption key is lost somewhere between the App and the Raspberry Pi",
      ),
      ImageData(
          imageSource:
              "assets/images/projects/door-opener-app/error_screen_2.png",
          description:
              "This is the Screen which shows up if the Raspberry PI you want to set up is used by someone else"),
    ],
  ),
  Project(
      title: "Travel App",
      language: "Flutter",
      description:
          "A design challenge Project which I made with my friend ATS. Custom Animations and responsive User Interface.",
      startReason:
          "My friend ATS and I received a Flutter Challenge from Yash Jain to copy a given design in Flutter.",
      achievements: [
        "Design Practicing",
        "Animation Practicing",
        "Cooperative Work",
        "Responsive User Interface"
      ],
      resume:
          "In the end we made the App in less than a week. It was a lot of fun to make the app working.",
      images: [
        ImageData(
            imageSource: "assets/images/projects/travel-app/startscreen.jpg",
            description: "Here you can see the start screen of our Travel App"),
        ImageData(
            imageSource: "assets/images/projects/travel-app/homescreen.jpg",
            description: "Here you can see the main screen of our Travel App"),
      ]),
  Project(
    title: "Simple Blockchain",
    language: "NodeJS",
    description:
        "I made a very simple Blockchain in NodeJS to understand how Blockchains work. Proof-of-work and increasing Difficulty.",
    startReason:
        "I wanted to make a presentation in Economics about blockchains and to understand the principes and show something to the listeners i decided to make this little NodeJS Programm",
    achievements: [
      "Understanding how Blockchains Work",
      "Proof-of-Work",
      "Increasing Difficulty"
    ],
    resume:
        "It was a very small project but I learned a lot about Blockchains.",
    images: [],
  ),
  Project(
    title: "Github Webhook",
    language: "NodeJS",
    description:
        "I made a Github Webhook Handler in NodeJS to get notified in Discord after someone did an Action on one of my projects.",
    startReason:
        "I was annoyed by watching all the time on Github to see if something happened on my important repos. So I watched",
    achievements: [
      "Webhook Connection",
      "Discord API",
      "Error-Handling (more or less)",
      "User Image in the notification",
      "Executed Action"
    ],
    resume:
        "It was a small project but I learned something new about Webhooks. In the end it doesnt work like expected but it works that it can full fill his originaly given task.",
    images: [],
  ),
  Project(
    title: "Kontra App Api",
    language: "NodeJS",
    description:
        "I made together with my Friend ScarVite an API to extract BlogPosts from the official Kontra Blog and save it in a MongoDB Database. The API send the Articles over to the App after a request and also notify the user after a new article is available.",
    startReason:
        "For the Kontra App we required an API, because the Kontra App is a Wordpress Page. So we made a Web Scrapper and an API.",
    achievements: [
      "Firebase Messaging",
      "Read the Sitemap",
      "Scrap only new articles",
      "Custom API",
      "MongoDB insert and read",
      "Scrap data from HTML file"
    ],
    resume:
        "It was a bigger project than expected and also my first NodeJS Project. But due this I learned so much. In the end we realised that Wordpress offers more or less an API, so we decided to rewrite the scrapper in the summer.",
    images: [],
  ),
];
