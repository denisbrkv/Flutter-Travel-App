class PlaceInfo {
  final String location, image, name, description;
  final int distance, days;

  PlaceInfo({
    required this.description,
    required this.name,
    required this.image,
    required this.location,
    required this.days,
    required this.distance,
  });
}

List places = [
  PlaceInfo(
    image: 'assets/images/chittorhath-fort-india.jpg',
    days: 12,
    distance: 50000,
    description:
        'This 590 foot high fort spread across 692 acres is the largest fort in India and a World Heritage Site.',
    location: 'India',
    name: 'Chittorhath Fort',
  ),
  PlaceInfo(
    image: 'assets/images/Cinque-Terre-Italy.jpeg',
    days: 7,
    distance: 22500,
    description:
        'Cinque Terre literally means "Five Lands", and consists of 5 villages located across the rugged hillside.',
    location: 'Italy',
    name: 'Cinque Terre',
  ),
  PlaceInfo(
    image: 'assets/images/Galapagos-Islands.jpeg',
    days: 22,
    distance: 47000,
    description:
        'Named one of the natural wonders of the UK, the Giansts Causeway is an area with about 40,000 interconners.',
    location: 'Ireland',
    name: 'Cinque Terre',
  ),
  PlaceInfo(
    image: 'assets/images/Kyoto-Japan.jpeg',
    days: 15,
    distance: 17000,
    description:
        'Kyoto is one of the most favourite Japanese cities for tourists. From the iconic temples, palaces, bambook.',
    location: 'Japan',
    name: 'Kyoto',
  ),
];
