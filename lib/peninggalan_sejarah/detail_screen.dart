import 'package:first_flutter_app/model/data_histhory.dart';
import 'package:flutter/material.dart';



class DetailScreen extends StatelessWidget {
  final PlaceHisthory place;
  const DetailScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: LayoutBuilder(
            builder: (context,BoxConstraints constraints){
              if (constraints.maxWidth < 700) {
                return DetailMobileScreen(place: place);
              }else{
                return DetailWebScreen(place: place);
              }
            }
          ),
        ),
      ),
    );
  }
}
class DetailMobileScreen extends StatelessWidget {
  const DetailMobileScreen({
    super.key,
    required this.place,
  });

  final PlaceHisthory place;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          fit: StackFit.passthrough,
          children: [
            Image.asset(
              place.imageAsset,
              fit: BoxFit.cover,
            ),
            Positioned(
              left: 15,
              top: 15,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: 50,
                  padding: const EdgeInsets.all(2),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                  ),
                  child: const Icon(Icons.arrow_back,),
                ),
              ),
            ),
          ]
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 30),
          child:  Text(place.name,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Icon(Icons.location_on),
                  Text(place.location)
                ],
              ),
              Column(
                children: [
                  const Icon(Icons.access_time),
                  Text(place.years)
                ],),
              Column(
                children: [
                  const Icon(Icons.person_pin),
                  Text(place.founder)
                ],)
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: Text(
            place.description,
          textAlign: TextAlign.center,),
        ),
        SizedBox(
          height: 230,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: place.imageUrls.length,
            itemBuilder: (context, index) {
              final String image = place.imageUrls[index];
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(image),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class DetailWebScreen extends StatefulWidget {
  final PlaceHisthory place;

  const DetailWebScreen({super.key, required this.place});

  @override
  State<DetailWebScreen> createState() => _DetailWebScreenState();
}

class _DetailWebScreenState extends State<DetailWebScreen> {
  final _scrollbarController = ScrollController();

  @override

  void dispose(){
    _scrollbarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 64,
        vertical: 16
      ),
      child: Card(
        child: SizedBox(
          width: 1200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(200)),
                        child: Image.asset(
                          widget.place.imageNation,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                    ),  
                  ),
                  Text(
                    widget.place.nameAcount,
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  ] 
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            widget.place.imageAsset,
                          ),
                        ),
                        const SizedBox(height: 16,),
                        Scrollbar(
                          controller: _scrollbarController,
                          child: SizedBox(
                            height: 150,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: widget.place.imageUrls.length,
                              itemBuilder: (context, index) {
                                final String image = widget.place.imageUrls[index];
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
                    )
                  ),
                  const SizedBox(width: 16,),
                  Expanded(
                    child: Card(
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              widget.place.name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(Icons.location_on),
                                    const SizedBox(width: 8,),
                                    Text(widget.place.location)
                                  ],
                                ),
                                IconButton(onPressed: ()=> setState(() {
                                  widget.place.isFavorite = !widget.place.isFavorite;
                                }), icon: Icon(
                                  widget.place.isFavorite == true ? Icons.favorite : Icons.favorite_border_outlined,
                                  color: Colors.red
                                ),)
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Icon(Icons.access_time),
                                const SizedBox(width: 8,),
                                Text(widget.place.years)
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Icon(Icons.person_pin),
                                const SizedBox(width: 8,),
                                Text(widget.place.founder)
                              ],
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Text(
                                  widget.place.description,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}