import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'classes/get_user_class.dart';
import 'package:provider/provider.dart';
import "./auth_provider.dart";


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final userData = context.read<AuthState>().userInfo;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
         title: const Text('jumpIn')
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Text('Edit Profile')
              ),
            ),
            const SizedBox(height: 40),
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/user.JPG'),
            ),
            const SizedBox(height: 20),
            itemProfile('Name Lastname', '${userData.firstName} ${userData.lastName}', CupertinoIcons.person),
            const SizedBox(height: 10),
            itemProfile('Username', '${userData.username}', CupertinoIcons.location),
            const SizedBox(height: 10),
            itemProfile('Email', '${userData.email}', CupertinoIcons.mail),
            const SizedBox(height: 20,),
            itemProfile('Phone', '${userData.phoneNumber}', CupertinoIcons.phone),
            const SizedBox(height: 20,),
            itemProfile('Bio', '${userData.bio}', CupertinoIcons.profile_circled),
            const SizedBox(height: 20),
            userData.identity_verification_status ? 
            itemProfile('Licence valid: ', '${userData.bio}', CupertinoIcons.check_mark)
            :
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Text('Validate Licence')
              ),
            ),
          ],
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.deepOrange.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10
            )
          ]
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        tileColor: Colors.white,
      ),
    );

  }
}


