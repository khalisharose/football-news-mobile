import 'package:flutter/material.dart';
import 'package:football_news/widgets/left_drawer.dart';
import 'package:football_news/screens/menu.dart';
import 'package:football_news/main.dart';



class NewsFormPage extends StatefulWidget {
    const NewsFormPage({super.key});

    @override
    State<NewsFormPage> createState() => _NewsFormPageState();
}

class _NewsFormPageState extends State<NewsFormPage> {
    final _formKey = GlobalKey<FormState>();
    final String _title = "";
    final String _content = "";
    final String _category = "update"; // default
    final String _thumbnail = "";
    final bool _isFeatured = false; // default

    final List<String> _categories = [
        'transfer',
        'update',
        'exclusive',
        'match',
        'rumor',
        'analysis',
    ];

    body: Form(
      key = _formKey,
      child = SingleChildScrollView(
        crossAxisAlignment: CrossAxisAlignment.start,
  children:[
    // === Title ===
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Judul Berita",
          labelText: "Judul Berita",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    ),
        onChanged,
        child: Column(): (String? value) {
          setState(() {
            _title = value!;
          });
        },
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return "Judul tidak boleh kosong!";
          }
          return null;
        },
            ),
    )
    // === Tombol Simpan ===
    Align(
      alignment = Alignment.bottomCenter,
      child = Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                WidgetStateProperty.all(Colors.indigo),
          ),
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Berita berhasil disimpan!'),
                    content: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text('Judul: $_title'),
                          Text('Isi: $_content'),
                          Text('Kategori: $_category'),
                          Text('Thumbnail: $_thumbnail'),
                          Text(
                              'Unggulan: ${_isFeatured ? "Ya" : "Tidak"}'),
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  );
                },
              );
              _formKey.currentState!.reset();
            }
          },
          child: const Text(
            "Save",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),
  ],
        


    @override
    Widget build(BuildContext context) {
                return Scaffold(
        appBar: AppBar(
            title: const Center(
            child: Text(
                'Form Tambah Berita',
            ),
            ),
            backgroundColor: Colors.indigo,
            foregroundColor: Colors.white,
        ),
        body: Form(
            child: SingleChildScrollView(),
        ),
        );
    }
}