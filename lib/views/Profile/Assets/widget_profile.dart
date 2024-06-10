import 'package:flutter/material.dart';
import 'package:transwift/views/Profile/profile.dart';
import 'package:transwift/views/Profile/account_edit.dart';

class Saldo extends StatelessWidget {
  const Saldo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "card",
              style: Poppins_w700_10_grey(),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Saldo",
              style: Poppins_w700_10_grey(),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: Text(
                "Rp.250.000",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700,
                    fontSize: 14),
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "card",
              style: Poppins_w700_10_grey(),
            ),
          ],
        ),
      ],
    );
  }
}

class Backbutton extends StatelessWidget {
  const Backbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          _createRoute(),
        );
      },
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(
            color: Colors.blue,
            width: 2.0,
          ),
        ),
        child: const Center(
          child: Text(
            'BACK',
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700,
              fontSize: 20,
              letterSpacing: 1,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Profile(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, .0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
class Donebutton extends StatelessWidget {
  const Donebutton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          _createRoute(),
        );
      },
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(
            color: Colors.blue,
            width: 2.0,
          ),
        ),
        child: const Center(
          child: Text(
            'DONE',
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700,
              fontSize: 20,
              letterSpacing: 1,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Profile(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, .0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}

class EditButton extends StatelessWidget {
  const EditButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const accountEdit()),
      ),
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.blue, // Set background color to white
          borderRadius: BorderRadius.circular(30.0), // Set rounded corners
          border: Border.all(
            color: Colors.blue, // Set border color to blue
            width: 2.0, // Set border width
          ),
        ),
        child: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              Text(
                'Edit',
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    letterSpacing: 1,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EditIcon extends StatelessWidget {
  const EditIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: GestureDetector(
        onTap: () {},
        child: const Icon(
          Icons.edit,
          color: Colors.blue,
          size: 30,
        ),
      ),
    );
  }
}

class Logout extends StatelessWidget {
  const Logout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Profile()),
      ),
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white, // Set background color to white
          borderRadius: BorderRadius.circular(30.0), // Set rounded corners
          border: Border.all(
            color: Colors.blue, // Set border color to blue
            width: 2.0, // Set border width
          ),
        ),
        child: const Center(
          child: Text(
            'Logout',
            style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w700,
                fontSize: 20,
                letterSpacing: 1,
                color: Colors.blue),
          ),
        ), // Add your content inside the container
        // Add padding around the content
      ),
    );
  }
}

// ignore: non_constant_identifier_names
BoxDecoration blue_border_white_bg() {
  return BoxDecoration(
    color: Colors.white, // Set background color to white
    borderRadius: BorderRadius.circular(10.0), // Set rounded corners
    border: Border.all(
      color: Colors.blue, // Set border color to blue
      width: 2.0, // Set border width
    ),
  );
}

// ignore: non_constant_identifier_names
TextStyle poppins_30_semi_white() {
  return const TextStyle(
      fontFamily: "Poppins",
      fontWeight: FontWeight.w900,
      fontSize: 30,
      letterSpacing: 1,
      color: Colors.white);
}

// ignore: non_constant_identifier_names
TextStyle poppins_16_semi() {
  return const TextStyle(
    fontFamily: "Poppins",
    fontWeight: FontWeight.w800,
    fontSize: 16,
    letterSpacing: 1,
  );
}

// ignore: non_constant_identifier_names
TextStyle poppins_12_Black_w700() {
  return const TextStyle(
      fontFamily: "Poppins",
      fontWeight: FontWeight.w700,
      fontSize: 12,
      letterSpacing: 1,
      color: Colors.black);
}

// ignore: non_constant_identifier_names
TextStyle poppins_12_w700_grey() {
  return const TextStyle(
      fontFamily: "Poppins",
      fontWeight: FontWeight.w700,
      fontSize: 12,
      letterSpacing: 1,
      color: Colors.grey);
}

// ignore: non_constant_identifier_names
TextStyle Poppins_w700_10_grey() {
  return const TextStyle(
      fontFamily: "Poppins",
      fontWeight: FontWeight.w700,
      fontSize: 10,
      letterSpacing: 1,
      color: Colors.grey);
}
