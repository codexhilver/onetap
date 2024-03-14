import 'package:flutter/material.dart';

class OnetapInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "",
              style: TextStyle(color: Colors.white), // Set text color to white
            ),
            Image.asset(
              "images/onetapsmlg.png", // Replace with your small logo asset path
              width: 70, // Increase width
              height: 70, // Increase height
            ),
          ],
        ),
        backgroundColor: Colors.black, // Set app bar background color to black
        iconTheme: IconThemeData(color: Colors.white), // Set back button color to white
        centerTitle: true, // Center align title
        elevation: 0, // Remove app bar elevation
      ),
      extendBodyBehindAppBar: true, // Extend background behind the app bar
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/onetapblank.png"), // Replace with your background image asset path
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.9), BlendMode.overlay), // Add white overlay with 90% opacity
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Different padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppBar().preferredSize.height + 20), // Adjust space for app bar height
              Text(
                "Provide Onetap with additional information to enhance its ability to assist you during emergencies.",
                style: TextStyle(fontSize: 18, color: Colors.black), // Increase font size
              ),
              SizedBox(height: 20),
              _buildBulletPoint("Allow Onetap to access your location",
                  "Rest assured, your location data is only shared during real emergencies or tests for privacy and security. It won't be stored permanently, ensuring your confidentiality and peace of mind. Our commitment to top-notch data security prioritizes your safety."),
              _buildBulletPoint("Enable phone calls", "Allow access to the phone, so Onetap can handle emergency phone calls."),
              _buildBulletPoint("Activate push Messages",
                  "By enabling push notifications, Onetap can reach out to you swiftly in case of emergencies or potential dangers."),
              Spacer(), // Fill the remaining space
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 40.0), // Adjust bottom padding
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Navigate back to the welcome screen
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40), // Different padding
                    ),
                    child: Text("Continue"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String title, String description) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(Icons.info, color: Colors.black, size: 24), // Increase icon size
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black), // Increase font size
              ),
              SizedBox(height: 5),
              Text(
                description,
                textAlign: TextAlign.center, // Center align description text
                style: TextStyle(fontSize: 14, color: Colors.black), // Increase font size
              ),
            ],
          ),
        ),
      ],
    );
  }
}