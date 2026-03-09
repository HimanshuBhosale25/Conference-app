import 'package:flutter/material.dart';

class Person {
  final String name;
  final String role;
  final String category;
  final String bio;
  final String imageAsset;

  const Person({
    required this.name,
    required this.role,
    required this.category,
    required this.bio,
    required this.imageAsset,
  });
}

class Poll {
  final String question;
  final List<String> options;
  const Poll({required this.question, required this.options});
}

class TimelinePost {
  final String author;
  final String timeAgo;
  final String imageUrl;
  final List<String> hashtags;
  final String caption;
  final int likes;
  final int comments;

  const TimelinePost({
    required this.author,
    required this.timeAgo,
    required this.imageUrl,
    required this.hashtags,
    required this.caption,
    required this.likes,
    required this.comments,
  });
}

class MockData {
  static const String userName = 'Arjun';
  static const String userFullName = 'Arjun Mehta';
  static const String userEmail = 'arjun.mehta@brainallianz.org';

  static const String conferenceName = 'BRAINCON 2026';
  static const String conferenceFullName =
      'Bharat Research in AI and NextGen (BRAIN) Flagship International Conference';
  static const String conferenceTheme =
      'Frugal, Sovereign, Societal Scale AI and Agentic AI';
  static const String conferenceDates = '20–22 March 2026';
  static const String conferenceVenue =
      'MDIS, 501 Stirling Rd, Singapore 148951';
  static const String conferenceOrganiser =
      'BRAIN Foundation & GH Raisoni College of Engineering & Management, Pune';

  // ── ADVISORY BOARD ──────────────────────────────────────────────
  static const List<Person> advisoryBoard = [
    Person(
      name: 'P.K. Sinha',
      role: 'Former VC & Director, IIIT Raipur | C-DAC',
      category: 'Advisory Board',
      bio:
          'Fellow of IEEE, AAIA & CSI. Led national programs in Supercomputing, Grid Computing & Health Informatics. ACM Distinguished Engineer.',
      imageAsset: 'assets/pk_sinha.jpg',
    ),
    Person(
      name: 'Dr. C.P. Ramanarayanan',
      role: 'Former Vice Chancellor, DIAT Pune | DRDO',
      category: 'Advisory Board',
      bio:
          'Distinguished Scientist, former Director General Aeronautical Systems at DRDO. 36+ years in Defence R&D. Scientist of the Year 2005.',
      imageAsset: 'assets/cp_ramanarayanan.jpg',
    ),
    Person(
      name: 'Prof. G.S. Mani',
      role: 'Advisory Board Member',
      category: 'Advisory Board',
      bio:
          'Eminent academician and researcher with decades of experience in computer science and engineering education.',
      imageAsset: 'assets/gs_mani.jpg',
    ),
    Person(
      name: 'Mr. Aditya Kumar Sinha',
      role: 'Executive Director, C-DAC Mumbai',
      category: 'Advisory Board',
      bio:
          'Led teams across 35 countries. Authored 35+ research papers. Chaired India\'s first semiconductor-based Quantum Computing Reference Facility.',
      imageAsset: 'assets/aditya_sinha.jpg',
    ),
    Person(
      name: 'Dr. Anu Gokhale',
      role: 'Professor & Chair, CIS | Saint Augustine\'s University',
      category: 'Advisory Board',
      bio:
          'Four-time Fulbright Award recipient. Expert in AI, Data Analytics & Cybersecurity. IEEE Third Millennium Medal awardee.',
      imageAsset: 'assets/anu_gokhale.jpg',
    ),
    Person(
      name: 'Dr. Shruti Mantri',
      role: 'Associate Director, Institute of Data Science | ISB',
      category: 'Advisory Board',
      bio:
          'Expert in AI, ML, Cybersecurity & Fraud Analytics. Chevening Cyber Security Fellow (UK, 2017). Outstanding Women Leader in Cyber Security 2023.',
      imageAsset: 'assets/shruti_mantri.jpg',
    ),
    Person(
      name: 'Prof. Dr. Neel Mani',
      role: 'Advisory Board Member',
      category: 'Advisory Board',
      bio:
          'Senior academic and researcher with expertise in artificial intelligence, machine learning and data-driven systems.',
      imageAsset: 'assets/neel_mani.jpg',
    ),
    Person(
      name: 'Mohamed Rawidean',
      role: 'Advisory Board Member',
      category: 'Advisory Board',
      bio:
          'International AI researcher and advisor with expertise in intelligent systems and cross-border technology collaboration.',
      imageAsset: 'assets/rawidean.jpg',
    ),
    Person(
      name: 'Mohd Helmy',
      role: 'Advisory Board Member',
      category: 'Advisory Board',
      bio:
          'Expert in AI applications and engineering education with strong international research collaborations across Asia.',
      imageAsset: 'assets/mohd_helmy.jpg',
    ),
    Person(
      name: 'Dr. Sumitra Iyer',
      role: 'Advisory Board Member',
      category: 'Advisory Board',
      bio:
          'Researcher and academic with deep expertise in data science, AI ethics and societal applications of machine learning.',
      imageAsset: 'assets/sumitra_iyer.jpg',
    ),
    Person(
      name: 'Dr. Lipika Dey',
      role: 'Professor, CS | Ashoka University',
      category: 'Advisory Board',
      bio:
          'Former Chief Scientist at TCS. Fellow of Indian National Academy of Engineering. Expert in AI, NLP & Data Analytics. PhD from IIT Kharagpur.',
      imageAsset: 'assets/lipika_dey.jpg',
    ),
    Person(
      name: 'Dr. Rajeeb Dey',
      role: 'Advisory Board Member',
      category: 'Advisory Board',
      bio:
          'Distinguished researcher in control systems, AI and biomedical engineering with numerous international publications.',
      imageAsset: 'assets/rajeeb_dey.jpg',
    ),
  ];

  // ── GENERAL CHAIRS ───────────────────────────────────────────────
  static const List<Person> generalChairs = [
    Person(
      name: 'Dr. R.D. Kharadkar',
      role: 'Vice Chancellor, GHRISTU & Campus Director, GHRCEM Pune',
      category: 'General Chair',
      bio:
          '40 years academic experience. 4 patents, 121 copyrights. Best Director Award by SPPU (2020). IETE Shri P P Malhotra Memorial Award (2021).',
      imageAsset: 'assets/rd_kharadkar.jpg',
    ),
    Person(
      name: 'Dr. Neha Sharma',
      role: 'President, BRAIN Foundation | TCS',
      category: 'General Chair',
      bio:
          'AI & Data Science crusader, Founder Secretary of Society for Data Science, Senior IEEE Member, ACM Distinguished Speaker. PhD from IIT (ISM) Dhanbad.',
      imageAsset: 'assets/neha_sharma.jpg',
    ),
  ];

  // ── TECHNICAL PROGRAMME CHAIRS ───────────────────────────────────
  static const List<Person> technicalProgrammeChairs = [
    Person(
      name: 'Dr. Seema Purohit',
      role: 'Technical Programme Chair | Golden Gate University, CA',
      category: 'Technical Programme Chair',
      bio:
          'EC Member, BRAIN Foundation. 90+ research papers, 5 Indian patents. Guided 12 PhD & 32 M.Phil students. Climate Reality Project Leader.',
      imageAsset: 'assets/seema_purohit.jpg',
    ),
    Person(
      name: 'Dr. Rachna Sable',
      role: 'Head, AI & AIML Dept | GHRCEM Pune',
      category: 'Technical Programme Chair',
      bio:
          'PhD from Bennett University. Expert in ML, Deep Learning & Predictive Analytics. Jyeshta Acharya Award 2024.',
      imageAsset: 'assets/rachna_sable.jpg',
    ),
  ];

  // ── ORGANISING CHAIRS ────────────────────────────────────────────
  static const List<Person> organisingChairs = [
    Person(
      name: 'Prof. Abhijit Khurpe',
      role: 'Secretary, BRAIN Foundation | AISSMS Institute of Management',
      category: 'Organising Chair',
      bio:
          'Honorary Secretary, IEEE Pune Section. Senior IEEE Member, Certified ISO 9001:2015 Lead Auditor.',
      imageAsset: 'assets/abhijit_khurpe.jpg',
    ),
    Person(
      name: 'Dr. Pradheep K.',
      role: 'Associate Professor, CSIS | BITS Pilani',
      category: 'Organising Chair',
      bio:
          'Executive Body Member, BRAIN. Expert in Quantum Computing, Quantum AI & Quantum Machine Learning. PhD from Anna University.',
      imageAsset: 'assets/pradheep_k.jpg',
    ),
    Person(
      name: 'Dr. Nagnath Hulle',
      role: 'I/C Director, GHRCEM Pune',
      category: 'Organising Chair',
      bio:
          'IETE Prof. K. Sreenivasan Memorial National Award (2021). Expert in VLSI Design & Educational Technology.',
      imageAsset: 'assets/nagnath_hulle.jpg',
    ),
    Person(
      name: 'Dr. Vaibhav Hendre',
      role: 'Organising Chair | GHRCEM Pune',
      category: 'Organising Chair',
      bio:
          'Researcher and academician with expertise in computer engineering and academic administration at GHRCEM Pune.',
      imageAsset: 'assets/vaibhav_hendre.jpg',
    ),
    Person(
      name: 'Dr. Nitin Korde',
      role: 'Organising Chair | GHRCEM Pune',
      category: 'Organising Chair',
      bio:
          'Faculty and organiser at GHRCEM Pune with active contributions to AI research and conference management.',
      imageAsset: 'assets/nitin_korde.jpg',
    ),
    Person(
      name: 'Dr. Sonali Sonavane',
      role: 'Organising Chair | GHRCEM Pune',
      category: 'Organising Chair',
      bio:
          'Academician and researcher at GHRCEM Pune with expertise in machine learning and intelligent systems.',
      imageAsset: 'assets/sonali_sonavane.jpg',
    ),
  ];

// ── PUBLICATIONS CHAIR ───────────────────────────────────────────
static const List<Person> publicationsChair = [
  Person(
    name: 'Mr. Mrityunjoy Panday',
    role: 'Vice-President, BRAIN Foundation | Cognizant',
    category: 'Publications Chair',
    bio:
        'Principal Architect AI/ML. Expert in GPT, NLP, time series analysis & quantum hardware optimization. Leading AI initiatives since 2021.',
    imageAsset: 'assets/mrityunjoy_panday.jpg',
  ),
  Person(
    name: 'Dr. Trupti Mohota',
    role: 'Assistant Professor, AIML | GHRCEM Pune',
    category: 'Publications Chair',
    bio:
        'PhD in Electronics & Telecom Engineering. 20+ years experience. Expert in Biomedical Signal Processing, Time Series Analysis & ML. Laxmi Shanti Award recipient.',
    imageAsset: 'assets/trupti_mohota.jpg',
  ),
  Person(
    name: 'Prof. Komal Jadhav',
    role: 'Assistant Professor, AIML | GHRCEM Pune',
    category: 'Publications Chair',
    bio:
        'Researcher in AI, ML, Deep Learning & Medical Imaging. 8+ years teaching experience. AI & Coding Club Coordinator. Coordinated National Level FDP on Generative AI with AICTE.',
    imageAsset: 'assets/komal_jadhav.jpg',
  ),
  Person(
    name: 'Dr. Dhanamma Jagli',
    role: 'Assistant Professor & Deputy Head, MCA | VESIT Mumbai',
    category: 'Publications Chair',
    bio:
        '19+ years teaching experience. 112 research publications, 2 patents. Expert in AI, ML & Data Science. Approved Mendeley Adviser of Elsevier since 2012.',
    imageAsset: 'assets/dhanamma_jagli.jpg',
  ),
  Person(
    name: 'Dr. Krantee Jamdaade',
    role: 'Publications Chair | KJSIM',
    category: 'Publications Chair',
    bio:
        'Academic and researcher contributing to publications coordination and research dissemination for BRAINCON 2026.',
    imageAsset: 'assets/krantee_jamdaade.jpg',
  ),
];

// ── ORGANISING COMMITTEE ─────────────────────────────────────────
static const List<Person> organisingCommittee = [];


  // ── FINANCE CHAIRS ───────────────────────────────────────────────
  static const List<Person> financeChairs = [
    Person(
      name: 'Dr. Bhagyashri Wankar',
      role: 'Finance Chair | GHRCEM Pune',
      category: 'Finance Chair',
      bio:
          'Oversees financial planning and budget management for BRAINCON 2026. Faculty at GHRCEM Pune.',
      imageAsset: 'assets/bhagyashri_wankar.jpg',
    ),
    Person(
      name: 'Dr. Devidas Thosar',
      role: 'Finance Chair | GHRCEM Pune',
      category: 'Finance Chair',
      bio:
          'Co-manages conference finances and resource allocation. Experienced academician at GHRCEM Pune.',
      imageAsset: 'assets/devidas_thosar.jpg',
    ),
  ];

  // ── WEBSITE & PUBLICITY ──────────────────────────────────────────
  static const List<Person> websitePublicity = [
    Person(
      name: 'Dhiraj Mani Chaurasia',
      role: 'Website & Publicity | GHRCEM Pune',
      category: 'Website & Publicity',
      bio:
          'Manages digital presence, website development and social media outreach for BRAINCON 2026.',
      imageAsset: 'assets/dhiraj_chaurasia.jpg',
    ),
    Person(
      name: 'Dr. Jasbir Kaur',
      role: 'Website & Publicity | GHRCEM Pune',
      category: 'Website & Publicity',
      bio:
          'Contributes to conference publicity, outreach campaigns and online communication strategies.',
      imageAsset: 'assets/jasbir_kaur.jpg',
    ),
    Person(
      name: 'Dr. Radha Shirbhate',
      role: 'Website & Publicity | GHRCEM Pune',
      category: 'Website & Publicity',
      bio:
          'Supports digital marketing and branding efforts for BRAINCON 2026 across online platforms.',
      imageAsset: 'assets/radha_shirbhate.jpg',
    ),
    Person(
      name: 'Prof. Sakharam Kolpe',
      role: 'Website & Publicity | GHRCEM Pune',
      category: 'Website & Publicity',
      bio:
          'Handles publicity coordination and digital content for the BRAINCON 2026 conference.',
      imageAsset: 'assets/sakharam_kolpe.jpg',
    ),
  ];

  // ── INTERNATIONAL LIAISON ────────────────────────────────────────
  static const List<Person> internationalLiaison = [
    Person(
      name: 'Dr. Juergen Seitz',
      role: 'International Liaison | Baden-Wuerttemberg CDSU, Germany',
      category: 'International Liaison',
      bio:
          'Head, Business Information Systems Dept. Research in e-finance, e-health & IT security. Member of AIS & Gesellschaft für Informatik.',
      imageAsset: 'assets/juergen_seitz.jpg',
    ),
    Person(
      name: 'Dr. Deepak Waikar',
      role: 'International Liaison | MDIS Singapore',
      category: 'International Liaison',
      bio:
          'Senior IEEE Member. Expert in Sustainable Energy & Education. Keynote speaker across North & South America, Europe, Australia and Asia.',
      imageAsset: 'assets/deepak_waikar.jpg',
    ),
  ];

  // ── TUTORIAL & WORKSHOP ──────────────────────────────────────────
  static const List<Person> tutorialWorkshop = [
    Person(
      name: 'Dr. Harshali Patil',
      role: 'Tutorial & Workshop Chair | GHRCEM Pune',
      category: 'Tutorial & Workshop',
      bio:
          'Coordinates workshops and tutorial sessions at BRAINCON 2026. Researcher in AI and computational intelligence.',
      imageAsset: 'assets/harshali_patil.jpg',
    ),
    Person(
      name: 'Dr. Neelam Naik',
      role: 'Tutorial & Workshop Chair | GHRCEM Pune',
      category: 'Tutorial & Workshop',
      bio:
          'Co-organises tutorial and workshop tracks with focus on emerging AI tools and hands-on learning sessions.',
      imageAsset: 'assets/neelam_naik.jpg',
    ),
  ];

  // ── SPECIAL SESSION ──────────────────────────────────────────────
  static const List<Person> specialSession = [
    Person(
      name: 'Dr. Ranjan Bala Jain',
      role: 'Special Session Chair',
      category: 'Special Session',
      bio:
          'Curates and manages special sessions at BRAINCON 2026 covering cutting-edge and interdisciplinary AI topics.',
      imageAsset: 'assets/ranjan_bala_jain.jpg',
    ),
  ];

  // ── AGENDA ───────────────────────────────────────────────────────
  static const List<Map<String, String>> agenda = [
    {'day': 'Day 1', 'time': '09:00 AM', 'title': 'Registration & Welcome Coffee', 'location': 'MDIS Foyer, Singapore'},
    {'day': 'Day 1', 'time': '10:00 AM', 'title': 'Inaugural Ceremony & Opening Keynote', 'location': 'Main Auditorium, MDIS'},
    {'day': 'Day 1', 'time': '11:30 AM', 'title': 'Keynote: Frugal & Sovereign AI — The Next Frontier', 'location': 'Main Auditorium, MDIS'},
    {'day': 'Day 1', 'time': '01:00 PM', 'title': 'Lunch Break & Networking', 'location': 'MDIS Cafeteria'},
    {'day': 'Day 1', 'time': '02:00 PM', 'title': 'Track 1: Foundations of Frugal and Efficient AI', 'location': 'Hall A, MDIS'},
    {'day': 'Day 1', 'time': '02:00 PM', 'title': 'Track 2: AI Sovereignty — Policy, Governance & Security', 'location': 'Hall B, MDIS'},
    {'day': 'Day 1', 'time': '04:00 PM', 'title': 'Track 3: AI for Societal Impact — Verticals & Deployment', 'location': 'Hall A, MDIS'},
    {'day': 'Day 1', 'time': '04:00 PM', 'title': 'Track 4: Human-Centered and Ethical AI', 'location': 'Hall B, MDIS'},
    {'day': 'Day 1', 'time': '06:00 PM', 'title': 'Day 1 Wrap-Up & Cultural Evening', 'location': 'Main Auditorium, MDIS'},
    {'day': 'Day 2', 'time': '09:30 AM', 'title': 'Day 2 Keynote: Agentic AI — Autonomous & Collaborative Systems', 'location': 'Main Auditorium, MDIS'},
    {'day': 'Day 2', 'time': '11:00 AM', 'title': 'Special Session: Quantum-Enabled Frugal & Societal-Scale AI', 'location': 'Hall C, MDIS'},
    {'day': 'Day 2', 'time': '11:00 AM', 'title': 'Special Session: Sustainable Green AI', 'location': 'Hall D, MDIS'},
    {'day': 'Day 2', 'time': '01:00 PM', 'title': 'Lunch Break', 'location': 'MDIS Cafeteria'},
    {'day': 'Day 2', 'time': '02:00 PM', 'title': 'Track 5: Infrastructure for Decentralized and Edge AI', 'location': 'Hall A, MDIS'},
    {'day': 'Day 2', 'time': '02:00 PM', 'title': 'Track 6: NextGen AI for Cybersecurity & Threat Detection', 'location': 'Hall B, MDIS'},
    {'day': 'Day 2', 'time': '04:30 PM', 'title': 'Hackathon Finals & Demo Session', 'location': 'Innovation Lab, MDIS'},
    {'day': 'Day 3', 'time': '09:30 AM', 'title': 'Day 3 Keynote: Edge AI for Healthcare, Agriculture & Smart Villages', 'location': 'Main Auditorium, MDIS'},
    {'day': 'Day 3', 'time': '11:00 AM', 'title': 'Workshop: Emerging AI Technologies for Human-Centric Systems', 'location': 'Hall C, MDIS'},
    {'day': 'Day 3', 'time': '01:00 PM', 'title': 'Lunch Break', 'location': 'MDIS Cafeteria'},
    {'day': 'Day 3', 'time': '02:30 PM', 'title': 'Panel Discussion: Responsible AI & Future of Governance', 'location': 'Main Auditorium, MDIS'},
    {'day': 'Day 3', 'time': '04:30 PM', 'title': 'Valedictory Ceremony & Awards', 'location': 'Main Auditorium, MDIS'},
  ];

  // ── POLLS ────────────────────────────────────────────────────────
  static const List<Poll> polls = [
    Poll(
      question: 'Which AI track are you most excited about at BRAINCON 2026?',
      options: ['Frugal & Efficient AI', 'AI Sovereignty & Governance', 'AI for Societal Impact', 'Agentic AI Systems'],
    ),
    Poll(
      question: 'What is the biggest challenge for AI adoption in India?',
      options: ['Data availability & quality', 'Infrastructure & compute costs', 'Regulatory & policy gaps', 'Lack of skilled talent'],
    ),
    Poll(
      question: 'Which emerging technology excites you most in 2026?',
      options: ['Agentic AI', 'Quantum AI', 'Edge AI', 'Generative AI'],
    ),
    Poll(
      question: 'How important is Frugal AI for developing nations?',
      options: ['Extremely important', 'Very important', 'Somewhat important', 'Not a priority'],
    ),
  ];

  // ── TIMELINE POSTS ───────────────────────────────────────────────
  static const List<TimelinePost> posts = [
    TimelinePost(
      author: 'BRAIN Foundation',
      timeAgo: '2h ago',
      imageUrl: 'https://picsum.photos/seed/braincon1/600/400',
      hashtags: ['#BRAINCON2026', '#AgenticAI', '#Singapore'],
      caption: 'Excited to welcome delegates from 30+ countries to BRAINCON 2026 in Singapore! Three days of groundbreaking AI research, workshops & hackathons. See you at MDIS! 🚀',
      likes: 142,
      comments: 18,
    ),
    TimelinePost(
      author: 'Dr. Neha Sharma',
      timeAgo: '5h ago',
      imageUrl: 'https://picsum.photos/seed/braincon2/600/400',
      hashtags: ['#FrugalAI', '#SovereignAI', '#BRAIN'],
      caption: 'The future of AI is not just about autonomy — it\'s about frugality, inclusivity and democratization of technology. Can\'t wait to discuss this at BRAINCON 2026!',
      likes: 98,
      comments: 12,
    ),
    TimelinePost(
      author: 'GHRCEM Pune',
      timeAgo: '1d ago',
      imageUrl: 'https://picsum.photos/seed/braincon3/600/400',
      hashtags: ['#GHRCEM', '#BRAINCON2026', '#AI'],
      caption: 'Our faculty and students are ready to represent GHRCEM Pune at BRAINCON 2026, Singapore. Proud collaborators of this flagship international conference! 🇮🇳',
      likes: 211,
      comments: 34,
    ),
    TimelinePost(
      author: 'MDIS Singapore',
      timeAgo: '2d ago',
      imageUrl: 'https://picsum.photos/seed/braincon4/600/400',
      hashtags: ['#MDIS', '#Singapore', '#AIConference'],
      caption: 'MDIS is proud to host BRAINCON 2026 from 20–22 March. The campus is all set to welcome the global AI community. Register now!',
      likes: 175,
      comments: 22,
    ),
  ];
}
