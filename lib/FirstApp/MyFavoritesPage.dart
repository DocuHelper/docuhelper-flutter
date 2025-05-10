import 'package:docuhelper_flutter/FirstApp/FirstAppState.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyFavoritesPage extends StatelessWidget {
  const MyFavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    var myFavoriteWords = context.watch<FirstAppState>();

    return Column(
      children: myFavoriteWords.favorites.map((e) => FavoritWord(pair: e)).toList(),
    );
  }
}

class FavoritWord extends StatelessWidget {
  const FavoritWord({
    super.key,
    required this.pair
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textStyle = theme.textTheme.titleLarge!
        .copyWith(color: Colors.black);

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            pair.asLowerCase,
            style: textStyle,
          ),
          Icon(Icons.delete)
        ],
      ),
    );
  }
}
