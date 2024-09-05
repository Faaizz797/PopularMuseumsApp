
class MuseumPlace {
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;
  String imageAsset;
  List<String> imageUrls;

  MuseumPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var museumPlaceList = [
  MuseumPlace(
    name: 'The Louvre Museum',
    location: 'Paris, France',
    description:
        'The Louvre is the world’s largest art museum and a historic monument in Paris. It houses thousands of works, including the Mona Lisa, the Venus de Milo, and countless others spanning from ancient civilizations to the 19th century. The museum’s collection is divided into eight departments, covering a vast range of art forms and historical periods.',
    openDays: 'Open Every day except Tuesday',
    openTime: '09:00 AM - 06:00 PM',
    ticketPrice: '€17',
    imageAsset: 'assets/images/louvre_museum.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/13/2a/ae/16.jpg',
      'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/07/1b/0e/cf.jpg',
      'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/07/1a/f6/ce.jpg',
      'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/0d/17/38/b7.jpg',
    ],
  ),
  MuseumPlace(
    name: 'The British Museum',
    location: 'London, UK',
    description:
        'The British Museum in London is dedicated to human history, art, and culture, and boasts an incredible collection of over 8 million works. Highlights include the Rosetta Stone, the Parthenon sculptures, and extensive Egyptian and Greek artifacts.',
    openDays: 'Open Every day',
    openTime: '10:00 AM - 05:30 PM',
    ticketPrice: 'Free',
    imageAsset: 'assets/images/british_museum.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/56/93/aa/great-court-at-the-british.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/48/ce/0d/caption.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/48/ce/0a/caption.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0e/ef/2d/8e/photo1jpg.jpg?w=1800&h=1000&s=1',

    ],
  ),
  MuseumPlace(
    name: 'The Metropolitan Museum of Art',
    location: 'New York, USA',
    description:
        'The Met is one of the largest and most comprehensive art museums in the world, with a collection that spans 5,000 years of art from across the globe. It includes everything from classical antiquity and ancient Egypt to modern American art.',
    openDays: 'Open Every day',
    openTime: '10:00 AM - 05:30 PM',
    ticketPrice: '\$25',
    imageAsset: 'assets/images/metropolitan_museum.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/24/f2/a5/07/a-view-of-museum-goers.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/24/f2/a2/39/a-tour-group-listens.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/3e/19/65/caption.jpg?w=1100&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/3e/19/5e/caption.jpg?w=1400&h=-1&s=1'
    ],
  ),
  MuseumPlace(
    name: 'The Prado Museum',
    location: 'Madrid, Spain',
    description:
        'The Prado Museum is the main Spanish national art museum, renowned for its extensive collection of European art, including works by Velázquez, Goya, and El Greco. The museum is one of the most significant art museums in Europe.',
    openDays: 'Open Every day except Monday',
    openTime: '10:00 AM - 08:00 PM',
    ticketPrice: '€15',
    imageAsset: 'assets/images/prado_museum.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/e4/c5/97/caption.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/e4/c5/96/caption.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2c/d7/12/a8/caption.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/9f/4d/2e/caption.jpg?w=1100&h=-1&s=1',
    ],
  ),
  MuseumPlace(
    name: 'Smithsonian Natural History Museum',
    location: 'Washington D.C., USA',
    description:
        'The Smithsonian National Museum of Natural History holds the largest natural history collection in the world, featuring everything from dinosaur fossils to gems like the Hope Diamond. It offers educational exhibits about our planet and its inhabitants.',
    openDays: 'Open Every day',
    openTime: '10:00 AM - 05:30 PM',
    ticketPrice: 'Free',
    imageAsset: 'assets/images/smithsonian_museum.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/34/86/36/aerik-von.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/2d/f3/8b/caption.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/2d/f3/8a/caption.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/18/2c/8d/caption.jpg?w=1400&h=-1&s=1',
    ],
  ),
  MuseumPlace(
    name: 'Uffizi Gallery',
    location: 'Florence, Italy',
    description:
        'The Uffizi Gallery is one of the most famous museums in Italy and is known for its outstanding collection of Renaissance art. It houses works by Michelangelo, Leonardo da Vinci, and Botticelli, among others.',
    openDays: 'Open Every day except Monday',
    openTime: '08:15 AM - 06:50 PM',
    ticketPrice: '€20',
    imageAsset: 'assets/images/uffizi_gallery.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/2f/5e/15/caption.jpg?w=1100&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/2f/5e/11/caption.jpg?w=1100&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/21/c0/6f/caption.jpg?w=1100&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/1b/a1/bc/caption.jpg?w=1100&h=-1&s=1'
    ],
  ),
  MuseumPlace(
    name: 'The Reina Sofía Museum',
    location: 'Madrid, Spain',
    description:
        'The Reina Sofía Museum is Spain’s national museum of 20th-century art, best known for Picasso’s "Guernica" and its vast collection of surrealist, cubist, and modern art. It is a centerpiece of Madrid’s "Golden Triangle of Art."',
    openDays: 'Open Every day except Tuesday',
    openTime: '10:00 AM - 09:00 PM',
    ticketPrice: '€10',
    imageAsset: 'assets/images/reina_sofia_museum.jpg',
    imageUrls: [
      'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/11/ef/02/b6.jpg',
      'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/07/bc/07/02.jpg',
      'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/07/bc/07/01.jpg',
      'https://media-cdn.tripadvisor.com/media/attractions-splice-spp-720x480/07/bc/07/00.jpg',
    ],
  ),
  MuseumPlace(
    name: 'The State Historical Museum',
    location: 'Moscow, Russia',
    description:
        'The State Historical Museum is Russia’s largest museum, displaying a wide range of artifacts that span the entirety of Russian history, from the Stone Age to the present day. The museum is located at Red Square and is a must-visit for anyone interested in Russia’s past.',
    openDays: 'Open Every day except Tuesday',
    openTime: '10:00 AM - 09:00 PM',
    ticketPrice: '₽700',
    imageAsset: 'assets/images/state_historical_museum.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/b0/e5/c0/photo4jpg.jpg?w=1100&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/4c/17/d7/caption.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/dc/7d/06/17.jpg?w=600&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2a/b5/1c/a3/caption.jpg?w=1100&h=-1&s=1',
    ],
  ),
  MuseumPlace(
    name: 'Rijksmuseum',
    location: 'Amsterdam, Netherlands',
    description:
        'The Rijksmuseum is the national museum of the Netherlands, dedicated to arts and history. It is known for its masterpieces from the Dutch Golden Age, including works by Rembrandt, Vermeer, and Hals, and a vast collection of Asian art.',
    openDays: 'Open Every day',
    openTime: '09:00 AM - 05:00 PM',
    ticketPrice: '€20',
    imageAsset: 'assets/images/rijks_museum.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/73/a6/e6/rijksmuseum.jpg?w=2000&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/73/a6/de/rijksmuseum.jpg?w=1100&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-s/02/ef/ed/f9/rijksmuseum.jpg?w=600&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-s/02/ef/ed/e4/rijksmuseum.jpg?w=600&h=-1&s=1',
    ],
  ),
  MuseumPlace(
    name: 'The Acropolis Museum',
    location: 'Athens, Greece',
    description:
        'The Acropolis Museum is focused on the findings of the archaeological site of the Acropolis of Athens. The museum offers an extensive collection of ancient Greek artifacts and sculptures, including the Parthenon marbles.',
    openDays: 'Open Every day except Monday',
    openTime: '08:00 AM - 08:00 PM',
    ticketPrice: '€10',
    imageAsset: 'assets/images/acropolis_museum.jpg',
    imageUrls: [
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/3e/34/2b/caption.jpg?w=1100&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/3b/32/97/caption.jpg?w=1400&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/2e/67/01/caption.jpg?w=1100&h=-1&s=1',
      'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/2e/67/00/caption.jpg?w=1100&h=-1&s=1',
    ],
  ),
];
