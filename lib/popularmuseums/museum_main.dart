import 'package:flutter/material.dart';
import 'package:worlds_popular_museums/model/museum_place.dart';
import 'package:worlds_popular_museums/popularmuseums/museum_detail.dart';

// original

class MuseumMain extends StatelessWidget {
  const MuseumMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "World's Popular Museum",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: LayoutBuilder(builder: (context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 550) {
          return const MyListView();
        } else if (constraints.maxWidth <= 700) {
          return const MyGridView(crossAxisCount: 2);
        } else if (constraints.maxWidth <= 1000) {
          return const MyGridView(crossAxisCount: 3);
        } else if (constraints.maxWidth <= 1200) {
          return const MyGridView(crossAxisCount: 4);
        } else {
          return const MyGridView(crossAxisCount: 5);
        }
      }),
    );
  }
}

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  String query = '';
  final Set<int> likedItems = {}; // Menyimpan status like tiap item

  @override
  Widget build(BuildContext context) {
    final filteredList = museumPlaceList
        .where((place) => place.name.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: (value) {
              setState(() {
                query = value;
              });
            },
            decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
        Expanded(
          child: filteredList.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.sentiment_very_dissatisfied,
                        size: 100,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Not Available',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black.withOpacity(0.5), // Transparansi warna
                        ),
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  itemCount: filteredList.length,
                  itemBuilder: (context, index) {
                    final MuseumPlace place = filteredList[index];
                    final bool isLiked = likedItems.contains(index); // Status like

                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MuseumDetail(
                              place: place,
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          elevation: 5,
                          child: Stack(
                            children: [
                              // Gambar Museum
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  place.imageAsset,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: 200,
                                ),
                              ),
                              // Overlay gelap di atas gambar
                              Container(
                                width: double.infinity,
                                height: 200,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [Colors.black.withOpacity(1), Colors.transparent],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              // Teks di atas gambar
                              Positioned(
                                bottom: 10,
                                left: 10,
                                right: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      place.name,
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.orange),
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.location_on,
                                          color: Colors.red,
                                          size: 20,
                                        ),
                                        const SizedBox(width: 5),
                                        Text(
                                          place.location,
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              // Tombol like di sudut kanan atas
                              Positioned(
                                bottom: 25,
                                right: 10,
                                child: IconButton(
                                  icon: Icon(
                                    isLiked ? Icons.favorite : Icons.favorite_border,
                                    color: isLiked ? Colors.red : Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (isLiked) {
                                        likedItems.remove(index);
                                      } else {
                                        likedItems.add(index);
                                      }
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }
}

class MyGridView extends StatefulWidget {
  final int crossAxisCount;
  const MyGridView({required this.crossAxisCount, super.key});

  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  String query = '';
  final Set<int> likedItems = {}; // Menyimpan status like tiap item

  @override
  Widget build(BuildContext context) {
    final filteredList = museumPlaceList
        .where((place) => place.name.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 250, // Lebar search bar
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    query = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: widget.crossAxisCount,
            children: filteredList.isEmpty
                ? [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.help_outline,
                            size: 100,
                            color: Colors.black.withOpacity(0.5),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Not Available',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    )
                  ]
                : filteredList
                    .asMap()
                    .entries
                    .map(
                      (entry) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MuseumDetail(
                                        place: entry.value,
                                      )));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 5,
                            child: Stack(
                              children: [
                                // Gambar Museum
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    entry.value.imageAsset,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                  ),
                                ),
                                // Overlay gelap di atas gambar
                                Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.black.withOpacity(0.8),
                                        Colors.transparent
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                // Teks di atas gambar
                                Positioned(
                                  bottom: 10,
                                  left: 10,
                                  right: 10,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        entry.value.name,
                                        style: const TextStyle(
                                            fontSize: 18, color: Colors.orange),
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.location_on,
                                            color: Colors.red,
                                            size: 20,
                                          ),
                                          const SizedBox(width: 5),
                                          Text(
                                            entry.value.location,
                                            style: const TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                // Tombol like di sudut kanan atas
                                Positioned(
                                  bottom: 3,
                                  right: 15,
                                  child: IconButton(
                                    icon: Icon(
                                      likedItems.contains(entry.key) ? Icons.favorite : Icons.favorite_border,
                                      color: likedItems.contains(entry.key) ? Colors.red : Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (likedItems.contains(entry.key)) {
                                          likedItems.remove(entry.key);
                                        } else {
                                          likedItems.add(entry.key);
                                        }
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
          ),
        ),
      ],
    );
  }
}
