class Speaker {
  final String name;
  final String company;
  final String role;
  final String bio;
  final String imageUrl;

  Speaker({required this.name, required this.company, required this.role, required this.bio, required this.imageUrl});
}

class Poll {
  final String question;
  final List<String> options;

  Poll({required this.question, required this.options});
}

class TimelinePost {
  final String author;
  final String timeAgo;
  final String imageUrl;
  final List<String> hashtags;
  final String caption;
  int likes;
  int comments;

  TimelinePost({required this.author, required this.timeAgo, required this.imageUrl, required this.hashtags, required this.caption, this.likes = 0, this.comments = 0});
}

class MockData {
  // Logged in user
  static const String userName = 'Nirvaan';
  static const String userFullName = 'Nirvaan User';
  static const String userEmail = 'event.testing@nirvaan.in';

  // Speakers
  static List<Speaker> speakers = [
    Speaker(name: 'John Doe', company: 'TechWorld', role: 'CTO', bio: 'Experienced keynote speaker with 20 years in tech industry.', imageUrl: 'https://randomuser.me/api/portraits/men/1.jpg'),
    Speaker(name: 'Jane Smith', company: 'InnovateNow', role: 'CEO', bio: 'Renowned public speaker and innovation thought leader.', imageUrl: 'https://randomuser.me/api/portraits/women/2.jpg'),
    Speaker(name: 'Michael Green', company: '', role: 'Senior Software Engineer', bio: 'Expert in distributed systems and cloud architecture.', imageUrl: 'https://randomuser.me/api/portraits/men/3.jpg'),
    Speaker(name: 'Alex Taylor', company: 'FutureTech', role: 'Lead AI Scientist', bio: 'Specialist in AI and machine learning for enterprise solutions.', imageUrl: 'https://randomuser.me/api/portraits/men/4.jpg'),
  ];

  // Teams
  static List<Speaker> teams = [
    Speaker(name: 'Emily Brown', company: 'AgileSolutions', role: 'Project Manager', bio: 'Dedicated project manager ensuring smooth event operations.', imageUrl: 'https://randomuser.me/api/portraits/women/5.jpg'),
    Speaker(name: 'Sophia White', company: 'PixelPerfect', role: 'Lead Designer', bio: 'Creative designer with a focus on user experience.', imageUrl: 'https://randomuser.me/api/portraits/women/6.jpg'),
    Speaker(name: 'Raj Patel', company: 'DataBridge', role: 'Data Engineer', bio: 'Building robust data pipelines for real-time analytics.', imageUrl: 'https://randomuser.me/api/portraits/men/7.jpg'),
    Speaker(name: 'Priya Sharma', company: 'CloudNine', role: 'DevOps Lead', bio: 'Automating infrastructure for seamless deployments.', imageUrl: 'https://randomuser.me/api/portraits/women/8.jpg'),
  ];

  // Polls
  static List<Poll> polls = [
    Poll(
      question: 'What is the best approach to ensure ethical data usage?',
      options: ['Establishing strict regulatory frameworks', 'Promoting transparency in data handling', 'Educating stakeholders about ethical practices', 'Adopting privacy-focused technologies'],
    ),
    Poll(
      question: 'Which sector is leading in leveraging data for innovation?',
      options: ['Healthcare', 'Finance', 'E-commerce', 'Manufacturing'],
    ),
    Poll(
      question: 'What is the most critical factor for driving innovation in data management?',
      options: ['Advanced AI tools', 'Skilled workforce', 'Strong data governance', 'Cloud infrastructure'],
    ),
  ];

  // Timeline Posts
  static List<TimelinePost> posts = [
    TimelinePost(author: 'ICDMAI OFFICIAL', timeAgo: '16 hours ago', imageUrl: 'https://via.placeholder.com/400x200.png?text=ICDMAI', hashtags: ['#WELCOME', '#ICDMAI'], caption: 'Welcome to ICDMAI', likes: 0, comments: 0),
    TimelinePost(author: 'S4DS OFFICIAL', timeAgo: '1 day ago', imageUrl: 'https://via.placeholder.com/400x200.png?text=S4DS', hashtags: ['#DATA', '#SCIENCE'], caption: 'Society for Data Science welcomes you!', likes: 4, comments: 2),
  ];

  // Agenda
  static List<Map<String, String>> agenda = [
    {'time': '09:00 AM', 'title': 'Registration & Welcome Coffee', 'location': 'Main Lobby'},
    {'time': '10:00 AM', 'title': 'Keynote: Future of AI in Data', 'location': 'Main Hall'},
    {'time': '11:30 AM', 'title': 'Panel: Ethical Data Practices', 'location': 'Hall A'},
    {'time': '01:00 PM', 'title': 'Lunch Break', 'location': 'Dining Area'},
    {'time': '02:00 PM', 'title': 'Workshop: Machine Learning Pipelines', 'location': 'Lab 1'},
    {'time': '03:30 PM', 'title': 'Talk: Data Governance Frameworks', 'location': 'Hall B'},
    {'time': '05:00 PM', 'title': 'Networking Session', 'location': 'Rooftop'},
    {'time': '06:30 PM', 'title': 'Closing Ceremony', 'location': 'Main Hall'},
  ];
}
