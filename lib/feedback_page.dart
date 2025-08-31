import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String email = '';
  String message = '';

  void submitFeedback() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // TODO: Send feedback to backend or email.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Thank you for your feedback!')),
      );
      // Optionally, clear the form
      setState(() {
        name = '';
        email = '';
        message = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feedback & Support"),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Text(
                "We value your feedback and support requests. Please fill out the form below:",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(labelText: 'Your Name'),
                initialValue: name,
                onSaved: (value) => name = value ?? '',
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email Address'),
                initialValue: email,
                keyboardType: TextInputType.emailAddress,
                validator: (value) => (value!.contains('@') ? null : 'Enter a valid email'),
                onSaved: (value) => email = value ?? '',
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(labelText: 'Message / Issue / Suggestion'),
                initialValue: message,
                maxLines: 5,
                validator: (value) => (value!.isNotEmpty ? null : 'Please enter your message'),
                onSaved: (value) => message = value ?? '',
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                icon: Icon(Icons.send),
                label: Text("Submit"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[700],
                  minimumSize: Size(120, 45),
                ),
                onPressed: submitFeedback,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
