import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    /* 
    * TODO: - [x] Add Poppin Font
    * TODO: - [x] Add bottomBar
    * TODO: Look to design 
    */
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Notifications",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 26,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: false,
          bottom: const TabBar(
            dividerColor: Colors.transparent,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
            tabs: [
              Tab(
                child: Text(
                  'message',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'notifications',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: BuildMessage(),
            ),
            Center(
              child: BuildNotifications(),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
          type: BottomNavigationBarType.fixed, // Fixed
          backgroundColor: Colors.white, // <-- This works for fixed
          selectedItemColor: Color.fromRGBO(65, 92, 253, 1),
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken_rounded),
              label: 'Course',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box_rounded),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}

class BuildNotifications extends StatelessWidget {
  const BuildNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomListTile(
          title: 'Successfull purchase!',
          subTitle: 'Just now',
          icon: Icons.favorite,
          bgIconColor: Color.fromRGBO(251, 234, 240, 1),
          iconColor: Color.fromRGBO(235, 104, 27, 1),
        ),
        CustomListTile(
          title: 'Congratulations on Completeting the ...',
          subTitle: 'Just now',
          icon: Icons.chat_rounded,
          bgIconColor: Color.fromRGBO(234, 235, 255, 1),
          iconColor: Color.fromRGBO(65, 92, 253, 1),
        ),
        CustomListTile(
          title: 'Your course has been updated ...',
          subTitle: 'Just now',
          icon: Icons.chat_rounded,
          bgIconColor: Color.fromRGBO(234, 235, 255, 1),
          iconColor: Color.fromRGBO(65, 92, 253, 1),
        ),
        CustomListTile(
          title: 'Congratulations, you have ...',
          subTitle: 'Just now',
          icon: Icons.chat_rounded,
          bgIconColor: Color.fromRGBO(234, 235, 255, 1),
          iconColor: Color.fromRGBO(65, 92, 253, 1),
        ),
      ],
    );
  }
}

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final Color bgIconColor;
  final Color iconColor;
  final String title;
  final String subTitle;
  const CustomListTile({
    super.key,
    required this.bgIconColor,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bgIconColor,
        ),
        padding: const EdgeInsets.all(15),
        child: Icon(icon, color: iconColor),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
      ),
      subtitle: Row(
        children: [
          const Icon(Icons.watch_later_rounded),
          const SizedBox(width: 5),
          Text(
            subTitle,
            style: const TextStyle(
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
    );
  }
}

class BuildMessage extends StatelessWidget {
  const BuildMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: const Column(
        children: [
          CardHorizontal(),
          CardVertical(),
          CardHorizontal(),
        ],
      ),
    );
  }
}

class CardVertical extends StatelessWidget {
  const CardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(216, 254, 239, 1),
                ),
              ),
              title: const Text(
                'Bert Pullman',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                'Online',
                style: TextStyle(
                  fontFamily: 'Poppins',
                ),
              ),
              trailing: const Text(
                '04:32 pm',
                style: TextStyle(
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            const Text(
              "Congratulations on completing the first lesson, keep up the good work!",
              style: TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              color: const Color.fromRGBO(251, 231, 238, 1),
              width: double.infinity,
              height: 150,
            )
          ],
        ),
      ),
    );
  }
}

class CardHorizontal extends StatelessWidget {
  const CardHorizontal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(216, 254, 239, 1),
                ),
              ),
              title: const Text(
                'Bert Pullman',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                'Online',
                style: TextStyle(
                  fontFamily: 'Poppins',
                ),
              ),
              trailing: const Text(
                '04:32 pm',
                style: TextStyle(
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            const Text(
              "Congratulations on completing the first lesson, keep up the good work!",
              style: TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
