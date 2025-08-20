import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:recepie_app/recepiefeed.dart';

class Formm extends StatefulWidget {
  const Formm({super.key});

  @override
  State<Formm> createState() => _FormmState();
}

class _FormmState extends State<Formm> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController recepienameController = TextEditingController();
  final TextEditingController ingredientsController = TextEditingController();
  final TextEditingController stepsController = TextEditingController();
  final TextEditingController cuisineController = TextEditingController();
  final TextEditingController tagController = TextEditingController();

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      try {
        await FirebaseFirestore.instance.collection('recepiename').add({
          'recepiename': recepienameController.text,
          'ingredients': ingredientsController.text,
          'steps': stepsController.text,
          'cuisine': cuisineController.text,
          'tag': tagController.text,
          'timestamp': FieldValue.serverTimestamp(),
        });

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Submitted successfully')),
        );

        recepienameController.clear();
        ingredientsController.clear();
        stepsController.clear();
        cuisineController.clear();
        tagController.clear();
      } on FirebaseException catch (e) {
        String message = 'Submission failed';
        if (e.code == 'unavailable') {
          message = 'Firebase is currently unavailable. Try again later.';
        } else if (e.code == 'unauthenticated') {
          message = 'Please login to submit the recipe.';
        }
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(message)));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    // Responsive sizes
    final double padding = width * 0.05;
    final double fontTitle = width * 0.07;
    final double fontLabel = width * 0.045;
    final double fontInput = width * 0.04;
    final double avatarRadius = width * 0.12;
    final double buttonHeight = height * 0.065;
    final double buttonFont = width * 0.045;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Share Your Recipe',
          style: TextStyle(fontSize: fontLabel),
        ),
        backgroundColor: Colors.green.shade700,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(padding),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Submit Your Recipe',
                  style: TextStyle(
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: fontTitle,
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),

              Center(
                child: GestureDetector(
                  onTap: () {
                    // Image picker can be implemented later
                  },
                  child: CircleAvatar(
                    radius: avatarRadius,
                    backgroundColor: Colors.greenAccent,
                    child: Icon(Icons.camera_alt,
                        size: avatarRadius * 0.6, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),

              _buildInputField(
                  controller: recepienameController,
                  label: "Recipe Name",
                  hint: "Enter the recipe name",
                  fontSize: fontInput,
                  validator: (value) {
                    if (value == null || value.length < 2) {
                      return "Recipe name should be at least 2 characters.";
                    }
                    return null;
                  }),
              _buildInputField(
                  controller: ingredientsController,
                  label: "Ingredients",
                  hint: "List ingredients (e.g. Tomato, Onion)",
                  fontSize: fontInput,
                  maxLines: 2,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Ingredients are required";
                    }
                    return null;
                  }),
              _buildInputField(
                  controller: stepsController,
                  label: "Steps",
                  hint: "Describe preparation steps",
                  fontSize: fontInput,
                  maxLines: 3,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Steps are required";
                    }
                    return null;
                  }),
              _buildInputField(
                  controller: cuisineController,
                  label: "Cuisine",
                  hint: "e.g. Indian, Chinese",
                  fontSize: fontInput,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Cuisine is required";
                    }
                    return null;
                  }),
              _buildInputField(
                  controller: tagController,
                  label: "Health Tag",
                  hint: "e.g. Vegan, Diabetic-friendly",
                  fontSize: fontInput,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Health tag is required";
                    }
                    return null;
                  }),
              SizedBox(height: height * 0.035),

              SizedBox(
                width: double.infinity,
                height: buttonHeight,
                child: ElevatedButton(
                  onPressed: _submit,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade700,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text(
                    'Submit',
                    style:
                    TextStyle(fontSize: buttonFont, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              SizedBox(
                width: double.infinity,
                height: buttonHeight,
                child: OutlinedButton.icon(
                  icon: Icon(Icons.feed, size: buttonFont),
                  label: Text("See Recipes", style: TextStyle(fontSize: buttonFont)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RecipeFeed()));
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.green.shade400),
                    foregroundColor: Colors.green.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField({
    required TextEditingController controller,
    required String label,
    required String hint,
    int maxLines = 1,
    required double fontSize,
    String? Function(String?)? validator,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          filled: true,
          fillColor: Colors.green.shade50,
          labelStyle: TextStyle(fontSize: fontSize),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green.shade700, width: 2)),
        ),
        style: TextStyle(fontSize: fontSize),
        validator: validator,
      ),
    );
  }
}
