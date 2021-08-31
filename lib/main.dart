import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_flutter_projects/hangman_game/views/hangman_page.dart';
import 'package:simple_flutter_projects/password_generator/password_generator_page.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<ProjectPage> _pages = [
    ProjectPage(
      title: PasswordGeneratorPage.title,
      page: const PasswordGeneratorPage(),
    ),
    ProjectPage(
      title: HangmanPage.title,
      page: HangmanPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Flutter Projects',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Simple Flutter Projects')),
        body: ListView(
          children: List.generate(
            _pages.length,
            (int index) => ProjectCard(
                pageTitle: _pages[index].title, page: _pages[index].page),
          ),
        ),
      ),
    );
  }
}

class ProjectPage {
  ProjectPage({required this.title, required this.page});
  final String title;
  final Widget page;
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key, required this.pageTitle, required this.page})
      : super(key: key);
  final String pageTitle;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(pageTitle),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
    );
  }
}
