import 'package:arijephyto/models/appBar.dart';
import 'package:arijephyto/models/bottomNavBar.dart';
import 'package:arijephyto/models/listsOffresPorts.dart';
import 'package:arijephyto/models/blogCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';
import '../nav-draw.dart';


// ignore: must_be_immutable
class  Home extends StatefulWidget {
  int currentIndex = 0;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool hovering = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
      return SafeArea(
          child: Scaffold(
            drawer: NavDrawer(),
            appBar: appBar(height, width),

            body: Center(
                  child: ListView(
                  children: [

                    ListOffres(),

                    SizedBox(height: height * 0.05),

                    ListPortfolios(),

                    SizedBox(height: height * 0.03),
                    Center(
                      child: Text(
                        'Derniers articles',
                        style: GoogleFonts.ruda(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold, 
                            color: kTextColor, 
                            fontSize: kTextSize
                        )
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.04),
                    BlogCard(
                    "assets/images/blog1.jpeg", 
                    'Les Bienfaits de La Nature sur Notre Santé', 
                    "5 FÉV 2018", 
                    "Arbres, Fleurs, Soleil, nous entourent au quotidien mais nous n’imaginons pas à quel point ils jouent un rôle dans notre vie. Humeur, comportement, émotions, dépendent réellement de la présence de la nature. Des..."
                    ),

                    BlogCard(
                    "assets/images/blog2.jpg", 
                    'Célébration de la Journée Mondiale de La Lutte contre le Cancer', 
                    "5 FÉV 2018", 
                    "A l’occasion de la journée mondiale de la lutte contre le cancer, Arije Phyto a célébré cet événement.C’était une occasion pour inciter les gens à revenir à tout ce qui est naturel et minimiser la consommation des produits contenant des ingrédients chimiques."
                    ),

                  ],
                  )
            ),

            bottomNavigationBar: BottomNavyBarMeth(0),
    )
    ,
  );
  }

  
}