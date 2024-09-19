import 'package:first_flutter_app/model/data_histhory.dart';
import 'package:first_flutter_app/peninggalan_sejarah/detail_screen.dart';
import 'package:flutter/material.dart';



class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HISTORY",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: false,
      ),
      
      body: LayoutBuilder(
        builder: (context,BoxConstraints constraints){
          if (constraints.maxWidth < 550) {
            return MyGridView(crossAxisCount: 1,);
          }else if (constraints.maxWidth < 700){
            return MyGridView(crossAxisCount: 2,);
          } else if (constraints.maxWidth < 1000){
            return MyGridView(crossAxisCount: 3,);
          } else if (constraints.maxWidth < 1200){
            return MyGridView(crossAxisCount: 4,);
          }else{
            return MyGridView(crossAxisCount: 5,);
          }
        }
      )
    );
  }
}
class MyGridView extends StatefulWidget {
  final int  crossAxisCount;
  const MyGridView({super.key, required this.crossAxisCount});

  @override
  State<MyGridView> createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {

  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: GridView.count(
        crossAxisCount: widget.crossAxisCount,
        children: placeHisthoryList.map((place) => InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return DetailScreen(place: place,);
            }));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(200)),
                              child: Image.asset(
                                place.imageNation,
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: double.infinity,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          place.nameAcount,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 15
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: 
                      BorderRadius.all(Radius.circular(5)),
                      clipBehavior: Clip.hardEdge,
                      child: 
                      Image.asset(
                        place.imageAsset, 
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      )
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              place.name,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            IconButton(onPressed: ()=> setState(() {
                              place.isFavorite = !place.isFavorite;
                            }), icon: Icon(
                              place.isFavorite == true ? Icons.favorite : Icons.favorite_border_outlined,
                              color: Colors.red
                            ),)
                          ],
                        ),
                        SizedBox(height: 2,),
                        Text(
                          place.location,
                          style: TextStyle(
                            fontSize: 15
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )).toList()
      ),
    );
  }
}