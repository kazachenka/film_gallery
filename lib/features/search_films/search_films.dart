import 'package:flutter/material.dart';

class SearchFilmsScreen extends StatefulWidget {
  const SearchFilmsScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SearchFilmsScreenState();
}


class _SearchFilmsScreenState extends State<SearchFilmsScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find your film'),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: SafeArea(
        child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
              TextField(
                controller: _searchController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                   hintText: 'movie or series name',
                   prefixIcon: const Icon(Icons.search),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(16),
                   ),
                   focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(16),
                     borderSide: const BorderSide(
                       color: Colors.blue, width: 2
                     ),
                   ),
                ),
              ),
            ]
          ),
        )
      )
    );
  }

  @override
  void dispose() {
    _searchController.dispose();

    super.dispose();
  }
}