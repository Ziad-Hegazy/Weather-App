import 'package:flutter/material.dart';
import 'package:weather/styles/font.dart';
import 'package:weather/views/search_view.dart';

class EmptyWeather extends StatelessWidget {
  const EmptyWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Choose location to show weather',
                style: AppTextStyles.title,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              FloatingActionButton.large(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return SearchView();
                  }));
                },
                child: const Icon(Icons.search_rounded),
              )
            ],
          ),
        ),
      ),
    );
  }
}
