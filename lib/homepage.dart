import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Center(
            child: Badge(
              badgeContent: Text('5'),
              badgeAnimation: BadgeAnimation.slide(),
              showBadge: true,
              // position: BadgePosition.center(),
              badgeStyle: BadgeStyle(badgeColor: Colors.purple),
              child: Icon(FontAwesomeIcons.cartShopping),
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PinCodeTextField(
                appContext: context,
                length: 6,
                cursorColor: Colors.teal,
                keyboardType: TextInputType.number,
                obscureText: true,
                obscuringCharacter: '*',
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldWidth: 40,
                    fieldHeight: 50,
                    activeColor: Colors.deepPurple,
                    inactiveColor: Colors.green,
                    inactiveFillColor: Colors.grey,
                    selectedColor: Colors.deepOrange,
                    activeFillColor: Colors.yellow,
                    selectedFillColor: Colors.red),
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// (1) material icons
//  Icon(Icons.chat_bubble),
//             Icon(Icons.add),
//             Icon(Icons.home_filled),

// (2) Fonts Awesome Icons
//  Icon(FontAwesomeIcons.searchengin),
//            Icon(FontAwesomeIcons.house),
//            Icon(FontAwesomeIcons.facebook),

// (3) Read more 
// ReadMoreText("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
//           trimLines: 2,
//           trimMode: TrimMode.Line,
//           trimCollapsedText: 'Show more',
//           trimExpandedText: 'Show minimum',
//           moreStyle: TextStyle(color: Colors.red),
//           lessStyle: TextStyle(color: Colors.teal),
//           style: TextStyle(color: Colors.deepPurple),
//            ),

// (4) Cart Badges
// Scaffold(
//       appBar: AppBar(
//         actions: const [
//           Center(
//             child: Badge(
//               badgeContent: Text('3'),
//               badgeAnimation: BadgeAnimation.slide(),
//               showBadge: true,
//               // position: BadgePosition.center(),
//               badgeStyle: BadgeStyle(badgeColor: Colors.purple),
//               child: Icon(FontAwesomeIcons.cartShopping),
//             ),
//           ),
//           SizedBox(width: 20,)
//         ],
//       ),
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: const [
//            Center(
//             child: Badge(
//               badgeAnimation: BadgeAnimation.fade(),
//               badgeStyle: BadgeStyle(badgeColor: Colors.orange),
//               showBadge: true,
//               // position: BadgePosition.center(),
//               child: Icon(FontAwesomeIcons.house),
//               badgeContent: Text('2'),
//             ),
//            ),
//           ],
//         ),
//       ),
//     );

// (5) Animated Text Kit
// AnimatedTextKit(
//               animatedTexts: [
//                 FadeAnimatedText('Ahmed Raza',
//                     textStyle: TextStyle(fontSize: 40)),
//               ],
//               totalRepeatCount: 4,
//             ),
// AnimatedTextKit(
//               animatedTexts: [
//                 RotateAnimatedText('Ahmed Raza',
//                     textStyle: TextStyle(fontSize: 40)),

// Rotate Animataion Text
// Fade Animataion Text
// Typer Animation Text
// TypeWriter Animation Text
// Scale Animated Text
// Colorize Animated Text
// text Liquid fill Text
// Wavy Animated Text
// Flicker Animated Text
// Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 const SizedBox(width: 20,height: 100,),
//               const  Text('Be',style: TextStyle(fontSize: 43),),
//               const SizedBox(width: 20,height: 100,),
//                 DefaultTextStyle(
//                   style: const TextStyle(fontSize: 40),
//                    child: AnimatedTextKit(
//                     animatedTexts: [ 
//                       RotateAnimatedText('Awesome'),
//                        RotateAnimatedText('Optimistic'),
//                         RotateAnimatedText('Different'),
//                       ],
//                       onTap: () {
//                         print("Tap Event");
//                       },
//                     ),
//                    ),
//               ],
//             ),
// Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
                
//                 SizedBox(
//                   width: 250.0,
//                   child: DefaultTextStyle(
                    
//                     style: const TextStyle(
//                       fontSize: 30.0,
//                       fontFamily: 'Agne',
//                      //overflow: TextOverflow.clip
//                     ),
//                     child: AnimatedTextKit(

//                       animatedTexts: [
//                         TypewriterAnimatedText('Discipline is the best tool'),
//                         TypewriterAnimatedText('Design first, then code'),
//                         TypewriterAnimatedText(
//                             'Do not patch bugs out, rewrite them'),
//                         TypewriterAnimatedText(
//                             'Do not test bugs out, design them out'),
//                       ],
//                       onTap: () {
//                         print("Tap Event");
//                       },
//                     ),
//                   ),
//                 )
//               ],
//             ),

// (6) Pin Code Text Field
// PinCodeTextField(
//                 appContext: context,
//                  length: 6,
//                  cursorColor: Colors.teal,
//                  keyboardType: TextInputType.number,
//                  obscureText: true,
//                  obscuringCharacter: '*',
//                  pinTheme: PinTheme(
//                   shape: PinCodeFieldShape.box,
//                   borderRadius: BorderRadius.circular(10),
//                   fieldWidth: 40,
//                   fieldHeight: 50,

//                   activeColor: Colors.deepPurple,
//                   inactiveColor: Colors.green,

//                   inactiveFillColor: Colors.grey,
//                   selectedColor: Colors.deepOrange,

//                   activeFillColor: Colors.yellow,
//                   selectedFillColor: Colors.red

//                  ),
//                   onChanged: (value) {
//                   },
//                   ),