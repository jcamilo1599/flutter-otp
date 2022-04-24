import 'package:flutter/cupertino.dart';

import 'domain/page/code_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("OTP"),
        ),
        child: CodePage(),
      ),
    );
  }
}
