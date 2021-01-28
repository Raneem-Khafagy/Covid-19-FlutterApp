class SubContent {
  final String title;
  final String details;
  final String imagePath;

  SubContent({this.title, this.details, this.imagePath});
}

class PageContent {
  final String pageHeading;
  final String heading1;
  final String heading2;
  final String heading3;
  final List<SubContent> content;

  PageContent(
      {this.pageHeading,
      this.heading1,
      this.heading2,
      this.heading3,
      this.content});
}

List<PageContent> pageContentList = [
  PageContent(
      pageHeading: "4 Symptoms of\nCovid-19",
      heading1: 'Covid-19',
      heading2: 'Symptoms',
      heading3: 'These symptoms may appear 2-14 days after exposure.',
      content: <SubContent>[
        SubContent(
          title: 'Dry Cough',
          details:
              'It appears to spred form person to person among those in colse contact.',
          imagePath: 'assets/images/symptoms/Drycough.png',
        ),
        SubContent(
          title: 'Sore Throat',
          details:
              'The severity of COVID-19 symptoms can range from very mild to severe.',
          imagePath: 'assets/images/symptoms/soreThroat.png',
        ),
        SubContent(
          title: 'Trouble Breathing',
          details:
              'Breathlessness is a common symptom of COVID-19. Some people describe it as feeling ‘short of breath’ or ‘winded’.',
          imagePath: 'assets/images/symptoms/troubleBreathing.png',
        ),
        SubContent(
          title: 'High Fever',
          details:
              'People who are older with edical conditions such as heart or lung desease..',
          imagePath: 'assets/images/symptoms/Highfever.png',
        ),
        SubContent(
          title: 'Runny Nose',
          details:
              'A runny nose is not a reason to get tested for coronavirus, says NHS Scotland.',
          imagePath: 'assets/images/symptoms/RunnyNose.png',
        ),
        SubContent(
          title: 'Trouble Breathing',
          details:
              'Breathlessness is a common symptom of COVID-19. Some people describe it as feeling ‘short of breath’ or ‘winded’.',
          imagePath: 'assets/images/symptoms/troubleBreathing.png',
        )
      ]),
  PageContent(
      pageHeading: "Covid-19\nprevention",
      heading1: 'Covid-19',
      heading2: 'Prevention',
      heading3: 'Do these things to prevent Conid-19.',
      content: <SubContent>[
        SubContent(
          title: 'Wash hands',
          details:
              'Wash your hands regularly for 20 seconds, with soap and water or alcohol-based hand rub.',
          imagePath: 'assets/images/prevention/washHands.png',
        ),
        SubContent(
          title: 'Wear Face Mask',
          details:
              'Always cover your mouth and nose with mask whenever going outside.',
          imagePath: 'assets/images/prevention/WearFaceMask.png',
        ),
        SubContent(
          title: 'Avoid contact',
          details:
              'Avoid close contact (1 meter or 3 feet) with people who are unwell.',
          imagePath: 'assets/images/prevention/AvoidContact.png',
        ),
        SubContent(
          title: 'Clean Surfaces',
          details:
              'Clean surfaces using soap and water, then use disinfectant.',
          imagePath: 'assets/prevention/CleanSurfaces.png',
        ),
        SubContent(
          title: 'Eat Healthy',
          details:
              'Eating a healthy is very important during the pandemic. What we eat and drink affect our body\'s ability to prevent, fight and recover.',
          imagePath: 'assets/images/prevention/EatHealthy.png',
        ),
        SubContent(
          title: 'Exercise',
          details:
              'Regular exercise may reduce the risk of acute respiratory distress syndrome, a major cause of death in patients with the COVID-19.',
          imagePath: 'assets/images/prevention/Exercise.png',
        ),
        SubContent(
          title: 'Sleep Well',
          details:
              'Your immune system is working best if you are well-rested. This works on overall improvement and prevention of the COVID-19.',
          imagePath: 'assets/images/prevention/SleepWell.png',
        ),
        SubContent(
          title: 'Wear Gloves',
          details:
              'Use disposable gloves when cleaning and disinfecting the area around the person who is sick or other surfaces that may be frequently touched.',
          imagePath: 'assets/images/prevention/WearGloves.png',
        ),
      ]),
];
