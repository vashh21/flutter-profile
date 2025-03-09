# MP Report

## Team

- Name(s): Vaishnavi Kadam
- AID(s): A20546870

## Self-Evaluation Checklist

Tick the boxes (i.e., fill them with 'X's) that apply to your submission:

- [X] The app builds without error
- [X] I tested the app in at least one of the following platforms (check all that apply):
  - [ ] iOS simulator / MacOS
  - [X] Android emulator
  - [X] Google Chrome
  - [ ] Windows Edge
- [X] The page displays correctly in a window of at least 1024x768 pixels
- [X] The layout contains at least 4 distinct sections
- [X] The layout makes use of the required widgets
- [X] The page uses at least three images
- [X] The page utilizes at least one nested row/column widget
- [X] The implementation uses a data model class to represent user information

## Summary and Reflection

I structured the profile page using a nested row/column approach, making sure the profile picture and name were aligned properly while placing the contact details in a separate row for better organization. Using data models (UserInfo, EducationInfo, ProjectInfo) kept the code clean and scalable. For the projects section, I implemented a dynamic grid that adjusts based on screen width to keep everything responsive.

One of the biggest challenges I faced was handling dimensions and spacing properly across different screen sizes. Initially, the project section boxes were too large on the web, and some elements didn’t scale well. I fixed this by adjusting crossAxisCount dynamically and modifying the childAspectRatio to keep the layout consistent. Bottom overflow errors were another issue, which I resolved by wrapping everything inside SingleChildScrollView. I also made sure that 'Contact Details,' 'Education,' and 'Projects' had the same font size so the sections looked uniform.

This assignment helped me improve my understanding of responsive layouts, adaptive design, and fixing UI constraints in Flutter. I also learned the importance of testing on different screen sizes early on to avoid layout issues later.
