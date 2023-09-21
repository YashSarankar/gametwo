import 'package:flutter/material.dart';
import 'package:gametwo/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Satta King"),
        backgroundColor: Colors.deepPurple,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.wallet),),
          )
        ],
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("John Doe"),
            accountEmail: Text(
              "example@gmail.com",
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/sa.png"),
              backgroundColor: Colors.white,
            ),
            decoration: BoxDecoration(color: Colors.deepPurple),
          ),
          ListTile(
            hoverColor: Colors.grey[300],
            onTap: () {},
            leading: Icon(
              Icons.home,
              color: Colors.deepPurple,
              size: 24,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            hoverColor: Colors.grey[300],
            onTap: () {
              Get.toNamed(Routes.PROFILE);
            },
            leading: Icon(
              Icons.person,
              color: Colors.deepPurple,
              size: 24,
            ),
            title: Text(
              "Profile",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: .3,
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              "Points",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            hoverColor: Colors.grey[300],
            onTap: () {},
            title: Text(
              "Add Funds",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            leading: Icon(
              Icons.account_balance_wallet_outlined,
              color: Colors.deepPurple,
              size: 24,
            ),
          ),
          ListTile(
            hoverColor: Colors.grey[300],
            onTap: () {},
            title: Text(
              "Withdraw Funds",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            leading: Icon(
              Icons.account_balance,
              color: Colors.deepPurple,
              size: 24,
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: .3,
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              "History",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            hoverColor: Colors.grey[300],
            onTap: () {},
            title: Text(
              "Bid History",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            leading: Icon(
              Icons.calendar_month_sharp,
              color: Colors.deepPurple,
              size: 24,
            ),
          ),
          ListTile(
            hoverColor: Colors.grey[300],
            onTap: () {},
            title: Text(
              "Win History",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            leading: Icon(
              Icons.wine_bar_sharp,
              color: Colors.deepPurple,
              size: 24,
            ),
          ),
          ListTile(
            hoverColor: Colors.grey[300],
            onTap: () {},
            title: Text(
              "Transaction History",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            leading: Icon(
              Icons.calendar_month_sharp,
              color: Colors.deepPurple,
              size: 24,
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: .3,
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              "More",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            hoverColor: Colors.grey[300],
            onTap: () {},
            title: Text(
              "Change Password",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            leading: Icon(
              Icons.lock_open_rounded,
              color: Colors.deepPurple,
              size: 24,
            ),
          ),
          ListTile(
            hoverColor: Colors.grey[300],
            onTap: () {},
            title: Text(
              "Share our App",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            leading: Icon(
              Icons.share,
              color: Colors.deepPurple,
              size: 24,
            ),
          ),
          ListTile(
            hoverColor: Colors.grey[300],
            onTap: () {
              Get.toNamed(Routes.PROFILE);
            },
            title: Text(
              "Rate Us",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            leading: Icon(
              Icons.star,
              color: Colors.deepPurple,
              size: 24,
            ),
          ),
        ],
      )),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(20), // Optional: Add rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Image.asset(
                'assets/sattaa.png', // Replace with your image asset path
                fit: BoxFit.cover, // Adjust the fit as needed
              ),
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: ListTile(
                    title: Text('Add Balance',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {},
                    tileColor: Colors.purple,
                    ),
                  ),
                SizedBox(width: 20,),
                Container(
                  child: Expanded(
                    child: ListTile(
                      tileColor: Colors.purple,
                      title: Text('Withdraw',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                      trailing: Icon(Icons.arrow_forward),
                      onTap: () {},
                    ),
                  ),
                ),]),
              ],
        ),
      ),
    );
  }
}
