
    import 'package:flutter/material.dart';

    void main() {
      runApp(FacebookClone());
    }

    class FacebookClone extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          title: 'Facebook Clone',
          home: Scaffold(
            appBar: AppBar(
              title: Text('Facebook'),
              backgroundColor: Colors.blue,
            ),
            body: Column(
              children: [
                _createPostSection(),
                Expanded(child: _postFeed()),
              ],
            ),
          ),
        );
      }

      Widget _createPostSection() {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: '¿Qué estás pensando?',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  // Lógica para enviar la publicación
                },
              ),
            ],
          ),
        );
      }

      Widget _postFeed() {
        return ListView.builder(
          itemCount: 10, // Número de publicaciones de ejemplo
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Publicación $index'),
              ),
            );
          },
        );
      }
    }
