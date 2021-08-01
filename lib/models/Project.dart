class Project {
  final String? title, description;

  Project({this.title, this.description});
}

List<Project> demo_projects = [
  Project(
    title: "Kontra App",
    description:
        "My First big Flutter project. A news App with an custom API, Dark and Light Theme, Notifications, Favourites and Caching  Feature.",
  ),
  Project(
    title: "Door Opener App",
    description:
        "Big School project which I made with a class mate to open a electronic door with the app and an raspberry Pi. Connection works with a custom TCP Socket. One Time Passwords for one time access to a door and fully encrypted.",
  ),
  Project(
    title: "Travel App",
    description:
        "A design challenge Project which I made with my friend ATS. Custom Animations and responsive User Interface.",
  ),
  Project(
    title: "Simple Blockchain",
    description:
        "I made a very simple Blockchain in NodeJS to understand how Blockchains work. Proof-of-work and increasing Difficulty.",
  ),
  Project(
    title: "Github Webhook",
    description:
        "I made a Github Webhook Handler in NodeJS to get notified in Discord after someone did an Action on one of my projects.",
  ),
  Project(
    title: "Kontra App Api",
    description:
        "I made together with my Friend ScarVite an API to extract BlogPosts from the official Kontra Blog and save it in a MongoDB Database. The API send the Articles over to the App after a request and also notify the user after a new article is available.",
  ),
];
