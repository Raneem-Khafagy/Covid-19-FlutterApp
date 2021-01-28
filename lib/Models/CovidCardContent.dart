class SubContent {
  final String titleSubContent;
  final String detailsSubContent;
  final String imagePathSubContent;

  SubContent(
      {this.titleSubContent, this.detailsSubContent, this.imagePathSubContent});
}

class PageContent {
  final String heading1;
  final String heading2;
  final String heading3;
  final String imagePathPageContent;
  final List<SubContent> content;

  PageContent({
    this.heading1,
    this.heading2,
    this.heading3,
    this.content,
    this.imagePathPageContent,
  });
}

var symotoms = PageContent(
    heading1: 'Covid-19',
    heading2: 'Symptoms',
    heading3: 'These symptoms may appear 2-14 days after exposure.',
    imagePathPageContent: "assets/images/symptoms.png",
    content: <SubContent>[
      SubContent(
        titleSubContent: 'High Fever',
        detailsSubContent:
            'People who are older with edical conditions such as heart or lung desease..',
        imagePathSubContent: 'assets/images/symptoms/HighFever.png',
      ),
      SubContent(
        titleSubContent: 'Sore Throat',
        detailsSubContent:
            'The severity of COVID-19 symptoms can range from very mild to severe.',
        imagePathSubContent: 'assets/images/symptoms/soreThroat.png',
      ),
      SubContent(
        titleSubContent: 'Trouble Breathing',
        detailsSubContent:
            'Breathlessness is a common symptom of COVID-19. Some people describe it as feeling ‘short of breath’ or ‘winded’.',
        imagePathSubContent: 'assets/images/symptoms/troubleBreathing.png',
      ),
      SubContent(
        titleSubContent: 'Dry Cough',
        detailsSubContent:
            'It appears to spred form person to person among those in colse contact.',
        imagePathSubContent: 'assets/images/symptoms/DryCough.png',
      ),
      SubContent(
        titleSubContent: 'Runny Nose',
        detailsSubContent:
            'A runny nose is not a reason to get tested for coronavirus, says NHS Scotland.',
        imagePathSubContent: 'assets/images/symptoms/RunnyNose.png',
      ),
      SubContent(
        titleSubContent: 'Trouble Breathing',
        detailsSubContent:
            'Breathlessness is a common symptom of COVID-19. Some people describe it as feeling ‘short of breath’ or ‘winded’.',
        imagePathSubContent: 'assets/images/symptoms/troubleBreathing.png',
      )
    ]);

var prevention = PageContent(
    heading1: 'Covid-19',
    heading2: 'Prevention',
    heading3: 'Do these things to prevent Conid-19.',
    imagePathPageContent: "assets/images/prevention.png",
    content: <SubContent>[
      SubContent(
        titleSubContent: 'Wash hands',
        detailsSubContent:
            'Wash your hands regularly for 20 seconds, with soap and water or alcohol-based hand rub.',
        imagePathSubContent: 'assets/images/prevention/washHands.png',
      ),
      SubContent(
        titleSubContent: 'Wear Face Mask',
        detailsSubContent:
            'Always cover your mouth and nose with mask whenever going outside.',
        imagePathSubContent: 'assets/images/prevention/WearFaceMask.png',
      ),
      SubContent(
        titleSubContent: 'Avoid contact',
        detailsSubContent:
            'Avoid close contact (1 meter or 3 feet) with people who are unwell.',
        imagePathSubContent: 'assets/images/prevention/AvoidContact.png',
      ),
      SubContent(
        titleSubContent: 'Clean Surfaces',
        detailsSubContent:
            'Clean surfaces using soap and water, then use disinfectant.',
        imagePathSubContent: 'assets/images/prevention/CleanSurfaces.png',
      ),
      SubContent(
        titleSubContent: 'Eat Healthy',
        detailsSubContent:
            'Eating a healthy is very important during the pandemic. What we eat and drink affect our body\'s ability to prevent, fight and recover.',
        imagePathSubContent: 'assets/images/prevention/EatHealthy.png',
      ),
      SubContent(
        titleSubContent: 'Exercise',
        detailsSubContent:
            'Regular exercise may reduce the risk of acute respiratory distress syndrome, a major cause of death in patients with the COVID-19.',
        imagePathSubContent: 'assets/images/prevention/Exercise.png',
      ),
      SubContent(
        titleSubContent: 'Sleep Well',
        detailsSubContent:
            'Your immune system is working best if you are well-rested. This works on overall improvement and prevention of the COVID-19.',
        imagePathSubContent: 'assets/images/prevention/SleepWell.png',
      ),
      SubContent(
        titleSubContent: 'Wear Gloves',
        detailsSubContent:
            'Use disposable gloves when cleaning and disinfecting the area around the person who is sick or other surfaces that may be frequently touched.',
        imagePathSubContent: 'assets/images/prevention/WearGloves.png',
      ),
    ]);
