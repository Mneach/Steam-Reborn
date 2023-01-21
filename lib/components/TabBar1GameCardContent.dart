import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:steam_reborn/Colors/colors.dart';
import 'package:steam_reborn/class/GameCardData.dart';
import 'package:steam_reborn/class/ReviewGameData.dart';
import 'package:steam_reborn/theme/theme_provider.dart';

class TabBar1GameCardContent extends StatelessWidget {
  String accountName;
  // List<String> comments;
  List<ReviewGameData> reviewGameData = [];
  BuildContext contextParent;
  GameCardData gameCardData =
      GameCardData(urlImage: "", gameName: "", price: "", gameDescription: "");
  TabBar1GameCardContent(
      {super.key,
      required this.gameCardData,
      required this.accountName,
      required this.reviewGameData,
      required this.contextParent});

  TextEditingController reviewController = TextEditingController();

  final snackBarError = SnackBar(
    content: Text('Comment Must Not Be Empty'),
  );

  final snackBarSuccess = SnackBar(
    content: Text('Success Input Comment'),
  );

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    checkTheme() {
      if (themeProvider.isDarkMode) {
        return true;
      } else {
        return false;
      }
    }

    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              gameCardData.gameName,
              style: TextStyle(
                fontSize: 24,
                color: checkTheme() ? Colors.white : Colors.black87,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: const EdgeInsets.only(bottom: 20),
            child: Image.asset(
              gameCardData.urlImage,
              width: 260,
              height: 160,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            margin: const EdgeInsets.only(bottom: 40),
            child: Text(
              gameCardData.gameDescription,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Text(
              "Comment",
              style: TextStyle(
                  fontSize: 24,
                  color: checkTheme() ? Colors.white : Colors.black87),
            ),
          ),
          Container(
            height: 100,
            // color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.only(left: 20),
                    child: TextFormField(
                      controller: reviewController,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: checkTheme()
                              ? secondaryColorDarkTheme
                              : Colors.black87,
                          border: const OutlineInputBorder(),
                          labelText: 'Comment',
                          hintText: 'Enter Comment',
                          labelStyle: TextStyle(
                              color: checkTheme()
                                  ? fontColorDarkTheme
                                  : Colors.white)),
                      style: TextStyle(
                          color:
                              checkTheme() ? fontColorDarkTheme : Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  child: InkWell(
                    child: Icon(
                      Icons.arrow_circle_right_outlined,
                      color:
                          checkTheme() ? buttonColorDarkTheme : Colors.black87,
                      size: 50,
                    ),
                    onTap: () {
                      if (reviewController.text.isEmpty == false) {
                        reviewGameData.add(new ReviewGameData(
                            urlImage: 'Dummy_Avatar.jpg',
                            accountName: accountName,
                            comment: reviewController.text));
                        reviewController.clear();
                        ScaffoldMessenger.of(context)
                            .showSnackBar(snackBarSuccess);
                        print(reviewGameData);
                      } else {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(snackBarError);
                      }
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
