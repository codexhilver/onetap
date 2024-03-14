import 'package:flutter/material.dart';
import 'onetapinfo_screen.dart';

class StartMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("images/startmenu.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "How does it work?",
              style: TextStyle(
                color: Colors.white.withOpacity(0),
                fontSize: 18,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
            ),
            SizedBox(height: 80),
            Material(
              color: Color(0xFFE04759),
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OnetapInfoScreen(),
                      ));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                  child: Text(
                    "Start Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
