import 'package:flutter/material.dart';

import 'blocs/provider.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget {
  build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Log me in!',
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
