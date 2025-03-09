import 'package:flutter/material.dart';
import '../models/user_info.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = UserInfo(
      name: "Vaishnavi Kadam",
      title: "AI-driven Software Developer",
      phone: "+1 7738189950",
      email: "vaishkadam21@gmail.com",
      linkedin: "linkedin.com/in/vaishnavikadam",
      education: [
        EducationInfo(
            logo: "assets/images/iit_logo.jpg",
            degree: "Master's in Computer Science",
            university: "Illinois Institute of Technology",
            gpa: 4.0),
        EducationInfo(
            logo: "assets/images/mumbai_university_logo.png",
            degree: "Bachelor of Engineering in IT",
            university: "University of Mumbai",
            gpa: 3.9),
      ],
      projects: [
        ProjectInfo(title: "GitHub Data Visualization Tool", description: "Enhanced search efficiency by 40%", image: "assets/images/project1.png"),
        ProjectInfo(title: "Tutor AI", description: "AI chatbot for STEM learning, increasing engagement by 50%", image: "assets/images/project2.png"),
        ProjectInfo(title: "Meal Delivery App", description: "AI-powered route optimization with 95% accuracy", image: "assets/images/project3.jpg"),
        ProjectInfo(title: "Scrap-App", description: "Optimized database retrieval, reducing load time by 50%", image: "assets/images/project4.png"),
        ProjectInfo(title: "Cloud-Based Automation Framework", description: "Reduced latency by 25% using AWS Lambda", image: "assets/images/project5.png"),
      ],
    );

    return Scaffold(
      appBar: AppBar(title: Text("Profile Page")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Picture & Name/Title in One Row
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                  onBackgroundImageError: (_, __) => Icon(Icons.person, size: 50, color: Colors.grey),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(user.name, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                    SizedBox(height: 4),
                    Text(user.title, style: TextStyle(fontSize: 16, color: Colors.grey[700])),
                  ],
                ),
              ],
            ),

            SizedBox(height: 12), // Space before Contact Section

            // Contact Details Section
            Text("Contact Details", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 6),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ContactRow(icon: Icons.phone, text: user.phone, color: Colors.blue),
                ContactRow(icon: Icons.email, text: user.email, color: Colors.red),
                ContactRow(icon: Icons.link, text: user.linkedin, color: Colors.blue),
              ],
            ),

            SizedBox(height: 20),

            // Education Section
            Text("Education", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Column(
              children: user.education.map((edu) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    leading: Image.asset(
                      edu.logo,
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Icon(Icons.broken_image, size: 40, color: Colors.grey);
                      },
                    ),
                    title: Text(edu.degree),
                    subtitle: Text("${edu.university}, GPA: ${edu.gpa}"),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 20),

            // Projects Section
            Text("Projects", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: user.projects.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width > 600 ? 3 : 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1.2,
              ),
              itemBuilder: (context, index) {
                final proj = user.projects[index];
                return Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              proj.image,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Icon(Icons.broken_image, size: 50, color: Colors.grey);
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(proj.title, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                        SizedBox(height: 4),
                        Text(proj.description, textAlign: TextAlign.center, style: TextStyle(fontSize: 12, color: Colors.grey[700])),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Contact Row Widget (for Phone, Email, LinkedIn)
class ContactRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  ContactRow({required this.icon, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 6), // Space between rows
      child: Row(
        children: [
          Icon(icon, size: 20, color: color),
          SizedBox(width: 20),
          Text(text, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}
