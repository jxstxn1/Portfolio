class Recommendation {
  final String? name, source, text;

  Recommendation({this.name, this.source, this.text});
}

final List<Recommendation> demo_recommendations = [
  Recommendation(
      name: "Anu Thampi A S",
      source: "LinkedIn",
      text:
          "Collaborating with Justin was a pleasant experience.Myself being a novice to the field,Justin's patience and assistance made the collaboration smooth.Even being in a tight schedule,his dedication to the work was top-notch. As a team member or a leader,Justin earns my highest recommendation."),
  Recommendation(
      name: "Dark Shred",
      source: "LinkedIn",
      text:
          "We’ve joined our hands on several projects, and Justin is one of the best people I had as a partner. I highly recommend his expertise to any person looking for a good Flutter dev. He is the most profound person I have met, and his ability to tackle any problem is remarkable and with a warm smile. Justin would become an appreciated member of any team."),
];
