import 'package:flutter/material.dart';
import 'package:worlds_popular_museums/model/museum_place.dart';

class MuseumDetail extends StatelessWidget {
  final MuseumPlace place;
  const MuseumDetail({required this.place, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: LayoutBuilder(builder: (context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 700) {
            return DetailMobileScreen(place: place);
          } else {
            return DetailWebScreen(place: place);
          }
        }),
      ),
    );
  }
}

class DetailMobileScreen extends StatelessWidget {
  const DetailMobileScreen({
    super.key,
    required this.place,
  });

  final MuseumPlace place;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Image.asset(place.imageAsset),
            ),
            Positioned(
              top: 40,
              left: 20,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16), // Added spacing here
        LikeableCard(place: place),
        Card(
          elevation: 5,
          margin: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Image Gallery',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.orange[700],
                  ),
                ),
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: place.imageUrls.length,
                  itemBuilder: (context, index) {
                    final String image = place.imageUrls[index];
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Image.network(image),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class LikeableCard extends StatefulWidget {
  final MuseumPlace place;
  const LikeableCard({required this.place, super.key});

  @override
  _LikeableCardState createState() => _LikeableCardState();
}

class _LikeableCardState extends State<LikeableCard> {
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                widget.place.name,
                style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.calendar_month_outlined,
                    color: Colors.red,),
                    const SizedBox(width: 8),
                    Text(widget.place.openDays),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _isLiked = !_isLiked;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _isLiked ? Colors.red : Colors.grey[300],
                    ),
                    child: Icon(
                      _isLiked ? Icons.favorite : Icons.favorite_border,
                      color: _isLiked ? Colors.white : Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.access_time),
                const SizedBox(width: 8),
                Text(widget.place.openTime),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.monetization_on,
                color: Colors.orange,),
                const SizedBox(width: 8),
                Text(widget.place.ticketPrice),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              widget.place.description,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailWebScreen extends StatefulWidget {
  final MuseumPlace place;
  const DetailWebScreen({required this.place, super.key});

  @override
  State<DetailWebScreen> createState() => _DetailWebScreenState();
}

class _DetailWebScreenState extends State<DetailWebScreen> {
  final _scrollbarController = ScrollController();
  bool _isLiked = false;

  @override
  void dispose() {
    _scrollbarController.dispose();
    super.dispose();
  }

  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64, vertical: 16),
      child: Center(
        child: SizedBox(
          width: 1200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Worlds Popular Museum',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(widget.place.imageAsset),
                        ),
                        const SizedBox(height: 16),
                        Scrollbar(
                          controller: _scrollbarController,
                          child: SizedBox(
                            height: 150,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: widget.place.imageUrls.length,
                              itemBuilder: (context, index) {
                                final String image =
                                    widget.place.imageUrls[index];
                                return Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.network(image),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                widget.place.name,
                                style: const TextStyle(
                                  fontSize: 25,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(Icons.calendar_month_outlined, color: Colors.red,),
                                    const SizedBox(width: 8),
                                    Text(widget.place.openDays),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: _toggleLike,
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                    padding: const EdgeInsets.all(6),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: _isLiked ? Colors.red : Colors.grey[300],
                                    ),
                                    child: Icon(
                                      _isLiked ? Icons.favorite : Icons.favorite_border,
                                      color: _isLiked ? Colors.white : Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Icon(Icons.access_time),
                                const SizedBox(width: 8),
                                Text(widget.place.openTime),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const Icon(Icons.monetization_on, color: Colors.orange,),
                                const SizedBox(width: 8),
                                Text(widget.place.ticketPrice),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Text(
                              widget.place.description,
                              textAlign: TextAlign.justify,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}