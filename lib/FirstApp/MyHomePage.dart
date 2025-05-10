import 'package:docuhelper_flutter/FirstApp/MyFavoritesPage.dart';
import 'package:docuhelper_flutter/FirstApp/RandomKeywordPage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var currentPage;
    switch (selectedIndex) {
      case 0:
        currentPage = RandomKeywordPage();
        break;
      case 1:
        currentPage = MyFavoritesPage();
        break;
      default:
        currentPage = RandomKeywordPage();
        break;

    }
    return Scaffold(
        body: Row(
          children: [
            SafeArea(
                child: NavigationRail(
                  extended: false,
                  destinations: [
                    NavigationRailDestination(
                        icon: Icon(Icons.home), label: Text("Home")),
                    NavigationRailDestination(
                        icon: Icon(Icons.favorite), label: Text("Favorites"))
                  ],
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                )),
            Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: currentPage,
                ))
          ],
        ));
  }
}

