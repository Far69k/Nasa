import 'package:flutter/material.dart';
import 'package:nasa_space_apps/pages/mainpages/articlepage.dart';
import 'package:google_fonts/google_fonts.dart';

class Articles extends StatefulWidget {
  const Articles({super.key});
  static final route = '/articles';
  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: BuildArticleCard(),
        ),
      ),
    );
  }
}

class BuildArticleCard extends StatelessWidget {
  const BuildArticleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];
        return Column(
          children: [
            Card(
              elevation: 0,
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: ListTile(
                title: Text(article.title,
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Colors.blue,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    )),
                subtitle: Text(article.preview,
                    style: GoogleFonts.montserrat(textStyle: TextStyle())),
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(ArticlePage.route, arguments: article);
                },
              ),
            ),
            Divider(
              height: 10,
              thickness: 1.25,
              indent: 30,
              endIndent: 30,
            )
          ],
        );
      },
    );
  }
}

class ArticleData {
  final String image;
  final String body;

  ArticleData(this.image, this.body);
}

class Article {
  final String title;
  final String preview;
  final String body;
  final String image;
  final String image2;
  final List<String> questions;
  final List<List<String>> answers;

  Article(
    this.title,
    this.preview,
    this.body,
    this.image,
    this.image2, {
    required this.questions,
    required this.answers,
  });
}

final List<Article> articles = [
  Article(
      'Happy EMIT day!',
      'EMIT completes 1 year of mapping earth\'s surface at 10/5/2023.',
      '•	2016: The EMIT project was selected as one of the five Earth Venture Instrument (EVI) missions by NASA.\n\n•	2017: The EMIT project team was formed and started the design and development of the instrument.\n\n•	2018: The EMIT instrument passed the Preliminary Design Review (PDR) and the Critical Design Review (CDR), demonstrating its readiness for fabrication and testing.\n\n•	2019: The EMIT instrument completed the environmental testing, including vibration, thermal vacuum, and electromagnetic interference tests.\n\n•	2020: The EMIT instrument passed the Pre-Ship Review (PSR) and was delivered to NASA’s Kennedy Space Center for integration with the SpaceX Dragon capsule.\n\n•	2021: The EMIT instrument underwent the final functional testing and calibration at the Kennedy Space Center.\n\n•	July 14, 2022: The EMIT instrument was launched on a SpaceX Falcon 9 rocket from Cape Canaveral, Florida, as part of the CRS-23 mission to the International Space Station (ISS) .\n\n•	July 16, 2022: The EMIT instrument was successfully captured by the ISS robotic arm and installed on the ExPRESS Logistics Carrier (ELC)-4 platform on the ISS.\n\n•	July 18, 2022: The EMIT instrument was powered on and started its commissioning phase, which included checking its health and status, performing alignment and focus adjustments, and acquiring initial data over selected targets .\n\n•	August 1, 2022: The EMIT instrument completed its commissioning phase and entered its science operations phase, which involved mapping the mineral composition of the Earth’s arid land dust source regions .\n\n•	September 15, 2022: The EMIT instrument detected methane emissions from a natural gas pipeline leak in Algeria using its imaging spectroscopy technology.\n\n•	October 5, 2022. It completed its commissioning phase and entered its science operations phase, which involved mapping the mineral composition of the Earth’s arid land dust source regions\n\n•	October 5, 2023: The EMIT instrument has been making measurements of the dust source regions for over a year, and an exact 1 year has passed since it started mapping the earth composition, providing unprecedented data for improving our understanding of how mineral dust affects the Earth’s climate and human health.',
      'assets/article1.png',
      'assets/EMIT_history_teacher.png',
      questions: [
        'What is EMIT, as mentioned in the article?',
        'What is the primary focus of EMIT\'s mission?',
        'What is the International Space Station used for in the context of the article?',
        'What is the main function of an imaging spectrometer, like EMIT?',
        'How does EMIT contribute to our understanding of mineral dust?',
      ],
      answers: [
        [
          'A type of camera',
          'A mission to study dust on Earth',
          'A laboratory for scientific research',
          'A computer program'
        ],
        [
          'Studying the International Space Station',
          'Measuring the composition of minerals on the Moon',
          'Understanding how dust affects the Earth\'s system',
          'Observing the behavior of ocean currents'
        ],
        [
          'To launch EMIT into space',
          'As a platform for observing the Earth',
          'To study minerals on other planets',
          'To conduct experiments on human health'
        ],
        [
          'To capture images of space objects',
          '''To analyze the composition of rocks''',
          'To create maps of spectral signatures',
          'To measure radiation in the atmosphere'
        ],
        [
          'By studying the impact of dust on the Moon',
          'By using Earth system models to assess its effects',
          '''By analyzing dust samples brought from space''',
          'By educating the public about space exploration'
        ]
      ]),
  Article(
      "How EMIT works and what it can do.",
      "Explore the mechanism and functionality of EMIT sensor.",
      'Climate change is a big problem that affects everyone on Earth. One of the causes of climate change is the greenhouse effect, which is when some gases in the atmosphere trap heat and make the planet warmer. Some of these gases are natural, like water vapor and carbon dioxide, but some are man-made, like methane and nitrous oxide. These gases are called greenhouse gases.\n\nOne of the things that can affect the greenhouse effect is dust. Dust is tiny particles of soil, sand, or rock that are blown by the wind from dry places like deserts. Dust can have different effects on the climate, depending on its color, size, shape, and composition. Some dust can reflect sunlight back to space, which can cool the Earth. Some dust can absorb sunlight and heat the atmosphere, which can warm the Earth. Some dust can also change the clouds, rain, and snow, which can affect the water cycle.\n\nEMIT is a mission that can help us understand how dust affects the climate. EMIT is a special camera that can see the colors of minerals on the Earth’s surface. Minerals are the building blocks of rocks and soils. Different minerals have different colors and properties. EMIT can measure the mineral composition of dust sources and how they change over time. EMIT can also use computer models to predict how dust will affect the climate in the future. EMIT can help us find ways to reduce the negative impacts of dust and enhance the positive ones.',
      'assets/article2.png',
      'assets/EMIT_scientist.png',
      questions: [
        'What is the greenhouse effect, as mentioned in the article?',
        'Which of the following is NOT mentioned as a greenhouse gas in the article?',
        '''How can dust affect the Earth's climate, according to the article?''',
        'What is EMIT, and how does it contribute to climate research?',
        'What is one of the ways EMIT helps us understand the impact of dust on the climate?'
      ],
      answers: [
        [
          '''A process that cools the Earth's surface''',
          'A natural phenomenon caused by water vapor',
          'A warming effect due to certain atmospheric gases',
          'A cooling effect caused by man-made gases'
        ],
        ['Water vapor', 'Methane', 'Carbon dioxide', 'Oxygen'],
        [
          'By increasing oxygen levels in the atmosphere',
          'By absorbing sunlight and cooling the Earth',
          'By changing the color of the sky',
          'By reflecting sunlight and warming the Earth'
        ],
        [
          'EMIT is a weather forecasting tool',
          '''EMIT is a camera that measures mineral colors on Earth's surface and predicts dust's impact on the climate''',
          'EMIT is a spacecraft that studies asteroids',
          'EMIT is a greenhouse gas monitoring station'
        ],
        [
          'By creating artificial dust clouds in the atmosphere',
          'By studying the properties of water vapor',
          '''By measuring the color of minerals on the Moon's surface''',
          'By using computer models to predict future climate changes caused by dust'
        ]
      ]),
  Article(
      "How EMIT can help us fight climate change.",
      "This is the preview for the article that will appeart for the users",
      'The environment is the natural world that surrounds us. It includes the air, water, land, plants, animals, and humans. The environment is important for our health and well-being. It provides us with food, water, oxygen, and other resources. It also supports biodiversity, which is the variety of life on Earth. Biodiversity is essential for the balance and stability of ecosystems.\n\nOne of the things that can affect the environment is dust. Dust is not only a problem for the climate, but also for the ecosystems. Dust can have different effects on the environment, depending on its origin, destination, and composition. Some of these effects are:\n\n•	Dust can carry nutrients, like iron and phosphorus, that can fertilize the oceans and the lands. This can boost the growth of plants and algae, which can increase the productivity and diversity of the ecosystems.\n\n•	Dust can also carry pollutants, like heavy metals and pesticides, that can harm the ecosystems. These pollutants can contaminate the water and the soil and affect the health and survival of organisms.\n\n•	Dust can also affect visibility and air quality, which can affect human health and activities. Dust can cause respiratory problems, allergies, infections, and eye irritation. Dust can also reduce the visibility and the safety of transportation and tourism.\n\nEMIT is a mission that can help us protect the environment. EMIT is a special camera that can see the colors of minerals on the Earth’s surface. Minerals are the building blocks of rocks and soils. Different minerals have different colors and properties. EMIT can measure the mineral composition of dust sources and how they change over time. EMIT can also use computer models to assess the current and future impacts of dust on the ecosystems and human health. EMIT can help us find ways to prevent and reduce the pollution and the damage caused by dust and enhance the benefits and the services provided by dust.',
      'assets/lol.png',
      'assets/climate_acivist.png',
      questions: [
        'What does biodiversity refer to in the context of the article?',
        'How can dust affect the environment, according to the article?',
        'What pollutants can dust carry, leading to harm in ecosystems?',
        'What is the primary purpose of EMIT, as mentioned in the article?',
        'How does EMIT contribute to protecting the environment, as described in the article?'
      ],
      answers: [
        [
          '''The variety of minerals in the Earth's crust''',
          'The diversity of plant and animal species on Earth',
          'The different types of gases in the atmosphere',
          'The variety of human activities in natural environments'
        ],
        [
          'By increasing oxygen levels in the atmosphere',
          'By reducing the growth of plants and algae',
          'By carrying nutrients that can fertilize ecosystems',
          'By decreasing the productivity of ecosystems'
        ],
        [
          'Iron and phosphorus',
          'Heavy metals and pesticides',
          'Oxygen and nitrogen',
          'Water and carbon dioxide'
        ],
        [
          'To capture images of endangered species',
          '''To study the colors of minerals on Earth's surface and assess the impact of dust on ecosystems and human health''',
          'To monitor air quality in urban areas',
          'To study the migration patterns of birds'
        ],
        [
          'By launching satellites to collect data on dust sources',
          'By increasing the visibility of transportation and tourism',
          'By developing new ways to reduce dust emissions',
          'By measuring mineral composition and using computer models to assess the impact of dust on ecosystems and human health'
        ],
      ]),
  Article(
      "How EMIT can help us protect the environment.",
      "EMIT can help us find ways to prevent and reduce pollution and the damage caused by dust.",
      'The Earth is a very old planet. It is about 4.6 billion years old. That means it has a long and rich history. The history of the Earth is recorded in the rocks and the soil. Rocks and soil are made of minerals. Minerals are the building blocks of rocks and soils. Different minerals have different colors and properties. Minerals can tell us a lot about the history of the Earth.\n\nOne of the ways to study the history of the Earth is to study the dust. Dust is tiny particles of soil, sand, or rock that are blown by the wind from dry places like deserts. Dust can carry minerals from different places and times. Dust can tell us about the past climate, the past environment, and the past life on Earth.\n\nEMIT is a mission that can help us study the dust and the history of the Earth. EMIT is a special camera that can see the colors of minerals on the Earth’s surface. EMIT can measure the mineral composition of dust sources and how they change over time.\n\nEMIT can help us learn about the history of the Earth in different ways. Some of these ways are:\n\n•	EMIT can help us learn about the origin and the evolution of dust sources. Dust sources are the places where dust comes from. They are usually dry and barren places like deserts. EMIT can help us understand how these places formed and how they changed over time. EMIT can help us identify the types and the ages of the rocks and the soils that make up the dust sources. EMIT can also help us detect the changes in the vegetation and the land use that affect the dust sources.\n\n•	EMIT can help us learn about transport and the deposition of dust. Dust transport is the movement of dust by the wind from the dust sources to other places. Dust deposition is the settling of dust on the ground or water. EMIT can help us understand how the wind patterns and the weather conditions affect the dust transport and the deposition. EMIT can also help us trace the pathways and the destinations of the dust. EMIT can also help us measure the amount and the frequency of the dust deposition.\n\n•	EMIT can help us learn about the interactions and the feedback of the dust with the Earth system. Dust can affect the climate, the environment, and human health in different ways. EMIT can help us understand how dust affects the radiative forcing, atmospheric chemistry, the cryosphere melt, ocean biogeochemistry, the fertilization of terrestrial ecosystems, and the human health. EMIT can also help us understand how these effects can change the dust sources, the dust transport, and the dust deposition in return.\n\nEMIT is a mission that can help us study the dust and the history of the Earth. EMIT can help us learn about the past, present, and future of the Earth and its dust. EMIT can also help us appreciate the beauty and the diversity of the Earth and its minerals.',
      'assets/article4.png',
      'assets/environmental_scientists.png',
      questions: [
        'What are rocks and soil made of, according to the article?',
        'How does dust help us learn about the Earth\'s history, as mentioned in the article?',
        'What is EMIT, and what is its primary function, as described in the article?',
        'How can EMIT help us learn about dust sources, as mentioned in the article?',
        'What aspects of the Earth system can dust affect, according to the article?'
      ],
      answers: [
        ['Dust particles', 'Minerals', 'Water and air', 'Fossils'],
        [
          'Dust carries minerals from different places and times, providing insights into past climates and environments.',
          'Dust records the history of human activities on Earth.',
          'Dust is a recent phenomenon and does not have a significant impact on Earth\'s history.',
          'Dust provides information about the Earth\'s future.'
        ],
        [
          'EMIT is a weather forecasting tool.',
          'EMIT is a camera that measures the colors of minerals on Earth\'s surface and tracks changes in dust sources over time.',
          'EMIT is a spacecraft that studies asteroids.',
          'EMIT is a greenhouse gas monitoring station.'
        ],
        [
          'By studying the history of dust on other planets',
          'By detecting the changes in vegetation and land use in dust sources',
          'By measuring the age of rocks and soils',
          'By assessing the impact of dust on human health'
        ],
        [
          'Only the climate',
          'Atmospheric chemistry and ocean currents',
          'Cryosphere melt and terrestrial ecosystems',
          'All of the above'
        ]
      ]),
  Article(
      "How EMIT can help us learn about the history of the Earth.",
      "EMIT can measure the mineral composition of dust sources and how they change over time which can help us learn about the history of Earth in differant ways.",
      'The Earth is a very special planet. It is the only planet in our solar system that has life. It is also the only planet that has liquid water on its surface. It is also the only planet that has a thick atmosphere that protects us from the harmful radiation and the meteorites. The Earth is a very complex and dynamic planet that is constantly changing.\n\nOne of the ways to study the Earth is to compare it with other planets. Other planets in our solar system also have dust, but they are very different from the Earth. They have different sizes, shapes, orbits, temperatures, pressures, atmospheres, geologies, and histories. By comparing the Earth with other planets, we can learn more about the similarities and the differences between them. We can also learn more about the origins and the evolution of the planets and the solar system.\n\nEMIT is a mission that can help us compare the Earth with other planets. EMIT is a special camera that can see the colors of minerals on the Earth’s surface. Minerals are the building blocks of rocks and soils. Different minerals have different colors and properties. EMIT can measure the mineral composition of dust sources and how they change over time.\n\nEMIT can help us compare the Earth with other planets in different ways. Some of these ways are:\n\n•	EMIT can help us compare the mineralogy and the chemistry of the planets. Mineralogy is the study of minerals and their properties. Chemistry is the study of the elements and their interactions. EMIT can help us identify and quantify the minerals on the Earth’s surface and compare them with the minerals on other planets. EMIT can also help us understand the chemical processes that form and transform the minerals on the planets.\n\n•	EMIT can help us compare the climate and the weather of the planets. Climate is the average condition of the atmosphere over a long period of time. Weather is the condition of the atmosphere at a specific time and place. EMIT can help us understand how dust affects the climate and the weather on the Earth and other planets. EMIT can also help us understand how the climate and the weather affect the dust sources, the dust transport, and the dust deposition on the planets.\n\n•	EMIT can help us compare the habitability and the biosignatures of the planets. Habitability is the ability of a planet to support life. Biosignatures are the signs of life on a planet. EMIT can help us understand how dust affects the habitability and the biosignatures on the Earth and other planets. EMIT can also help us understand how habitability and the biosignatures affect the dust sources, the dust transport, and the dust deposition on the planets.\n\nEMIT is a mission that can help us compare the Earth with other planets. EMIT can help us learn more about the Earth and its place in the solar system. EMIT can also help us search for other Earth-like planets and life beyond our solar system.',
      'assets/article5.png',
      'assets/geologist.png',
      questions: [
        'What makes Earth unique among the planets in our solar system, according to the article?',
        'How can comparing Earth with other planets help us, as mentioned in the article?',
        'What is mineralogy, as described in the article?',
        'How does EMIT contribute to the comparison of Earth with other planets?',
        'What does \"habitability\" refer to in the context of the article?'
      ],
      answers: [
        [
          'Its thick atmosphere',
          'Its liquid water on the surface',
          'The presence of life',
          'All of the above'
        ],
        [
          'By finding similarities and differences between them',
          'By determining the age of Earth',
          'By studying the history of the solar system',
          'By identifying the origin of life'
        ],
        [
          'The study of climate on different planets',
          'The study of elements and their interactions',
          'The study of minerals and their properties',
          'The study of biosignatures on planets'
        ],
        [
          'By analyzing the age of Earth\'s rocks',
          'By measuring the composition of minerals on Earth\'s surface and comparing them with other planets',
          'By searching for signs of life on other planets',
          'By studying the orbits and shapes of planets in the solar system'
        ],
        [
          'The ability of a planet to support life',
          'The study of minerals',
          'The thickness of a planet\'s atmosphere',
          'The presence of liquid water on a planet'
        ]
      ]),
  Article(
      'How EMIT can help us compare the Earth with other planets.',
      'EMIT can help us compare the mineralogy chemistry, and climate of plantes',
      'The Earth is a very special planet. It is the only planet in our solar system that has life. It is also the only planet that has liquid water on its surface. It is also the only planet that has a thick atmosphere that protects us from the harmful radiation and the meteorites. The Earth is a very complex and dynamic planet that is constantly changing.\n\nOne of the ways to study the Earth is to compare it with other planets. Other planets in our solar system also have dust, but they are very different from the Earth. They have different sizes, shapes, orbits, temperatures, pressures, atmospheres, geologies, and histories. By comparing the Earth with other planets, we can learn more about the similarities and the differences between them. We can also learn more about the origins and the evolution of the planets and the solar system.\n\nEMIT is a mission that can help us compare the Earth with other planets. EMIT is a special camera that can see the colors of minerals on the Earth’s surface. Minerals are the building blocks of rocks and soils. Different minerals have different colors and properties. EMIT can measure the mineral composition of dust sources and how they change over time.\n\nEMIT can help us compare the Earth with other planets in different ways. Some of these ways are:\n\n•	EMIT can help us compare the mineralogy and the chemistry of the planets. Mineralogy is the study of minerals and their properties. Chemistry is the study of the elements and their interactions. EMIT can help us identify and quantify the minerals on the Earth’s surface and compare them with the minerals on other planets. EMIT can also help us understand the chemical processes that form and transform the minerals on the planets.\n\n•	EMIT can help us compare the climate and the weather of the planets. Climate is the average condition of the atmosphere over a long period of time. Weather is the condition of the atmosphere at a specific time and place. EMIT can help us understand how dust affects the climate and the weather on the Earth and other planets. EMIT can also help us understand how the climate and the weather affect the dust sources, the dust transport, and the dust deposition on the planets.\n\n•	EMIT can help us compare the habitability and the biosignatures of the planets. Habitability is the ability of a planet to support life. Biosignatures are the signs of life on a planet. EMIT can help us understand how dust affects the habitability and the biosignatures on the Earth and other planets. EMIT can also help us understand how habitability and the biosignatures affect the dust sources, the dust transport, and the dust deposition on the planets.\n\nEMIT is a mission that can help us compare the Earth with other planets. EMIT can help us learn more about the Earth and its place in the solar system. EMIT can also help us search for other Earth-like planets and life beyond our solar system.',
      'assets/article6.png',
      'assets/astronomer.png',
      questions: [
        'What is one of the key purposes of the EMIT mission, as mentioned in the article?',
        'How does EMIT help inspire and educate the next generation of scientists and explorers?',
        'What does EMIT use to study the Earth\'s surface from space?',
        'What does "spectral signatures" refer to in the context of the article?',
        'How does EMIT contribute to preparing the next generation of scientists and explorers?'
      ],
      answers: [
        [
          'To explore other planets in the solar system',
          'To study the diversity of minerals on Earth',
          'To mitigate the effects of climate change',
          'To capture images of distant galaxies',
        ],
        [
          'By creating stunning images of distant galaxies',
          'By involving students in space exploration missions',
          'By providing resources and opportunities for learning and participation',
          'By developing innovative technology for interstellar travel'
        ],
        [
          'A special camera',
          'A robotic rover',
          'A network of satellites',
          'A fleet of drones'
        ],
        [
          'The unique colors of minerals on Earth' 's surface',
          'The sound vibrations produced by dust particles',
          'The visible spectrum of light',
          'The temperature variations on the Earth\'s surface'
        ],
        [
          'By teaching them about space exploration',
          'By sparking their curiosity and passion for Earth and its dust',
          'By providing direct opportunities for space travel',
          'By funding their research projects'
        ]
      ]),
];
