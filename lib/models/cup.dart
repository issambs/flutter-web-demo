class Cup {
  final String id;
  final String name;
  final String date;
  final String location;
  final String type;
  final String section; // "Pågående", "Kommande", "Genomförda"
  final String description;

  Cup({
    required this.id,
    required this.name,
    required this.date,
    required this.location,
    required this.type,
    required this.section,
    required this.description,
  });
}

// Mock data
List<Cup> mockCups = [
  // Pågående Cuper (7)
  Cup(
      id: '1',
      name: "Höstcupen U16",
      date: "2025-09-11",
      location: "Avesta",
      type: "U16",
      section: "Pågående",
      description: "Avesta BK Morakniv"),
  Cup(
      id: '2',
      name: "Stockholm Cup U14",
      date: "2025-09-12",
      location: "Stockholm",
      type: "U14",
      section: "Pågående",
      description: "Stockholm FC"),
  Cup(
      id: '3',
      name: "Göteborg Cup U12",
      date: "2025-09-13",
      location: "Göteborg",
      type: "U12",
      section: "Pågående",
      description: "Göteborg FC"),
  Cup(
      id: '4',
      name: "Mora Cup U11",
      date: "2025-09-14",
      location: "Mora",
      type: "U11",
      section: "Pågående",
      description: "Mora IK"),
  Cup(
      id: '5',
      name: "Västerås Trophy U13",
      date: "2025-09-15",
      location: "Västerås",
      type: "U13",
      section: "Pågående",
      description: "Västerås BK"),
  Cup(
      id: '6',
      name: "Skellefteå Cup U14",
      date: "2025-09-16",
      location: "Skellefteå",
      type: "U14",
      section: "Pågående",
      description: "Skellefteå IK"),
  Cup(
      id: '7',
      name: "Uppsala Cup U15",
      date: "2025-09-17",
      location: "Uppsala",
      type: "U15",
      section: "Pågående",
      description: "Uppsala FC"),

  // Kommande Cuper (8)
  Cup(
      id: '8',
      name: "Vintercupen U14",
      date: "2025-10-05",
      location: "Stockholm",
      type: "U14",
      section: "Kommande",
      description: ""),
  Cup(
      id: '9',
      name: "Sommarcupen U12",
      date: "2025-11-10",
      location: "Göteborg",
      type: "U12",
      section: "Kommande",
      description: ""),
  Cup(
      id: '10',
      name: "Tranebergs Cup U11",
      date: "2025-11-25",
      location: "Stockholm",
      type: "U11",
      section: "Kommande",
      description: ""),
  Cup(
      id: '11',
      name: "Flickor 2010 Trophy",
      date: "2025-12-05",
      location: "Göteborg",
      type: "Flickor 2010",
      section: "Kommande",
      description: ""),
  Cup(
      id: '12',
      name: "Stora Uplandia U15",
      date: "2026-01-15",
      location: "Stockholm",
      type: "U15",
      section: "Kommande",
      description: ""),
  Cup(
      id: '13',
      name: "Resport Trophy '13",
      date: "2026-02-20",
      location: "Stockholm",
      type: "U13",
      section: "Kommande",
      description: ""),
  Cup(
      id: '14',
      name: "Mora IK Winter Cup",
      date: "2026-03-01",
      location: "Mora",
      type: "U14",
      section: "Kommande",
      description: ""),
  Cup(
      id: '15',
      name: "Göteborg Spring Cup",
      date: "2026-03-20",
      location: "Göteborg",
      type: "U12",
      section: "Kommande",
      description: ""),

  // Genomförda Cuper (6)
  Cup(
      id: '16',
      name: "Klimpen Cup",
      date: "2025-08-01",
      location: "Skellefteå",
      type: "U14",
      section: "Genomförda",
      description: ""),
  Cup(
      id: '17',
      name: "Vårcupen U13",
      date: "2025-05-18",
      location: "Malmö",
      type: "U13",
      section: "Genomförda",
      description: ""),
  Cup(
      id: '18',
      name: "Sommar Trophy U15",
      date: "2025-06-20",
      location: "Stockholm",
      type: "U15",
      section: "Genomförda",
      description: ""),
  Cup(
      id: '19',
      name: "U11 Challenge",
      date: "2025-07-05",
      location: "Göteborg",
      type: "U11",
      section: "Genomförda",
      description: ""),
  Cup(
      id: '20',
      name: "Mora Summer Cup",
      date: "2025-06-15",
      location: "Mora",
      type: "U14",
      section: "Genomförda",
      description: ""),
  Cup(
      id: '21',
      name: "Stockholm Trophy",
      date: "2025-07-10",
      location: "Stockholm",
      type: "U12",
      section: "Genomförda",
      description: ""),
];
