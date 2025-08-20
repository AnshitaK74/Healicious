import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RecipeFeed extends StatelessWidget {
  const RecipeFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Recipes"),
        backgroundColor: Colors.green,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('recepiename')
            .orderBy('timestamp', descending: true)
            .snapshots(),
        builder: (context, snapshot) {
          // Loading state
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          // No data
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(child: Text("No recipes found."));
          }

          // Data exists
          final recipes = snapshot.data!.docs;

          return ListView.builder(
            itemCount: recipes.length,
            itemBuilder: (context, index) {
              final doc = recipes[index];
              return ListTile(
                title: Text(doc['recepiename'] ?? ''),
                subtitle: Text("Cuisine: ${doc['cuisine'] ?? ''}"),
                isThreeLine: true,
                trailing: Text(doc['tag'] ?? ''),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text(doc['recepiename']),
                      content: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("🧂 Ingredients:\n${doc['ingredients']}"),
                            const SizedBox(height: 10),
                            Text("👨‍🍳 Steps:\n${doc['steps']}"),
                            const SizedBox(height: 10),
                            Text("🏷️ Tag: ${doc['tag']}"),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
