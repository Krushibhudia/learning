import 'package:elearning/Screens/mainHomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'authentication/login_Screen.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 100),
        child: IntroductionScreen(
          pages: [
            // Onboarding Page 1
            PageViewModel(
              title: "Learn Anytime, Anywhere",
              body: "Explore thousands of courses and learn at your own pace, from any location.",
              image: buildImage('assets/learnanytime.png'),
              decoration: getPageDecoration(),
            ),
            // Onboarding Page 2
            PageViewModel(
              title: "Expert Instructors",
              body: "Gain knowledge from industry experts with years of experience.",
              image: buildImage('assets/expertinstructor.png'),
              decoration: getPageDecoration(),
            ),
            // Onboarding Page 3
            PageViewModel(
              title: "Interactive Learning",
              body: "Join live sessions, take quizzes, and interact with your peers for better learning.",
              image: buildImage('assets/interactivelearning.png'),
              decoration: getPageDecoration(),
            ),
            // Onboarding Page 4
            PageViewModel(
              title: "Get Certified",
              body: "Earn certificates and boost your career with our accredited courses.",
              image: buildImage('assets/certification.png'),
              decoration: getPageDecoration(),
              footer: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  ),
                ),
              ),
            ),
          ],
          done: Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () {
            // Navigate to LoginScreen with replacement
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
          showSkipButton: true,
          skip: Text('Skip'),
          next: Icon(Icons.arrow_forward),
          dotsDecorator: getDotDecoration(),
          onSkip: () {
            // Navigate to Mainhomescreen with replacement
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Mainhomescreen()),
            );
          },
          globalBackgroundColor: Colors.white,
        ),
      ),
    );
  }

  Widget buildImage(String path) {
    return Center(child: Image.asset(path, width: 350));
  }

  PageDecoration getPageDecoration() {
    return PageDecoration(
      titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      bodyTextStyle: TextStyle(fontSize: 16),
      bodyPadding: EdgeInsets.all(16).copyWith(bottom: 0),
      imagePadding: EdgeInsets.all(24),
      pageColor: Colors.white,
    );
  }

  DotsDecorator getDotDecoration() {
    return DotsDecorator(
      color: Colors.grey,
      activeColor: Colors.blueAccent,
      size: Size(10, 10),
      activeSize: Size(22, 10),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
    );
  }
}
