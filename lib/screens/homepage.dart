import 'package:flutter/material.dart';

// Home Page
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('reva_logo.png', height: 50),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/reva_campus.png'), // Background image
            fit: BoxFit.fitHeight,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: Colors.white70,
                child: ListTile(
                  title: Text('SLCM Details'),
                  subtitle: Text('Name: John Doe\nDepartment: CSE\nYear: 4th'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(99),
                child: Text(
                  'Explore Events',
                  style: TextStyle(fontSize: 22, color: Colors.orange),
                ),
              ),
              EventCategoryWidget(
                category: 'Events',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EventListPage()),
                ),
              ),
              EventCategoryWidget(
                category: 'Sports',
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EventListPage()),
                ),
              ),
              EventCategoryWidget(category: 'Cultural'),
              EventCategoryWidget(category: 'Hackathons'),
            ],
          ),
        ),
      ),
    );
  }
}

// Event Categories Widget
class EventCategoryWidget extends StatelessWidget {
  final String category;
  final VoidCallback? onTap;

  EventCategoryWidget({required this.category, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        child: ListTile(
          title: Text(
            category,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
          ),
          trailing: Icon(Icons.arrow_forward, color: Colors.orange),
        ),
      ),
    );
  }
}

// Event List Page
class EventListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: [
          EventItemWidget(
            title: 'AI Workshop',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EventDetailsPage()),
              );
            },
          ),
          EventItemWidget(title: 'Robotics Competition'),
          EventItemWidget(title: 'Machine Learning Seminar'),
        ],
      ),
    );
  }
}

// Event Item Widget
class EventItemWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  EventItemWidget({required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: ListTile(
          title: Text(title),
          trailing: Icon(Icons.arrow_forward, color: Colors.orange),
        ),
      ),
    );
  }
}

// Event Details Page
class EventDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Details'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Show a dialog for successful registration
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Success'),
                content: Text('Registration Successful!'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('OK'),
                  ),
                ],
              ),
            );
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
          child: Text('Register for Event'),
        ),
      ),
    );
  }
}
