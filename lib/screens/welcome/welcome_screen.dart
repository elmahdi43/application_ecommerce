import 'package:ArijePhyto/screens/welcome/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        //mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisSize: MainAxisSize.max,
        children: [
          // Container(
          //     width: width / 2,
          //     height: width / 2,
          //     child: null,
          //     decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: kPrimaryColor
          //         ),
          //   ),
          SizedBox(
            height: height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(kDefaultRadius),
              child: Image.asset(
                "assets/images/arijePhyto-c.jpg",
              ),
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Arije Phyto',
                    style: GoogleFonts.ruda(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor,
                            fontSize: kTextSize)),
                  ),
                  TextSpan(
                    text:
                        ' est une Marque Marocaine de produits cosmétiques naturels qui traduit le concept « Vivre Au Naturel  » , En effet la Présentation d’Arije Phyto qui est une gamme de produit cosmétique naturels a 100% , sans aucun additif , ni colorant , ni parfum chimique . Nous avons toute la gamme qui englobe les produits pour : Visage , Corps et Cheveux .',
                    style: GoogleFonts.ruda(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: kTextColorB,
                            fontSize: kTextSize)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            height: height * 0.07,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(kDefaultRadius),
              child: TextButton(
                child: Text(
                  'C’est parti',
                  style: GoogleFonts.ruda(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: kTextColorB,
                          fontSize: kTextSize)),
                ),
                onPressed: () {
                  signup();
                },
                style: TextButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  enableFeedback: false,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
