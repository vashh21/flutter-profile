```md
# Flutter Profile Page

## Overview

This project is a **Flutter-based profile page application**, originally developed as part of **CS 442 MP2**. The goal was to create a single-screen **social networking profile page** with structured user information, images, and responsive UI components.

The app showcases **modern UI design principles in Flutter**, focusing on layout organization, component reusability, and clean code structure. While it started as an assignment, it has been further refined into a standalone Flutter learning project.

## Features

- **Dynamic Profile Page** – Displays structured user information in visually distinct sections.
- **Flexible Layout** – Uses nested Row/Column widgets for responsive UI.
- **Images & Styling** – Includes at least three images with padding, borders, and backgrounds.
- **Data-Driven Design** – Separates layout from content using data models (`UserInfo`, `EducationInfo`, `ProjectInfo`).
- **Scrollable UI** – Ensures seamless vertical scrolling for mobile and web compatibility.

## Tech Stack

- **Flutter** (Dart)
- **Material Design Components**
- **ListView, AppBar, Scaffold, Container**

## Setup & Running the App

Clone the repository:

```sh
git clone https://github.com/vashh21/flutter-profile.git
cd flutter-profile
```

Install dependencies:

```sh
flutter pub get
```

Run the app:

```sh
flutter run
```

For web preview:

```sh
flutter run -d chrome
```

## Code Structure

The app follows a **data-driven approach**, keeping layout and content separate.

### UserInfo Data Model Example:

```dart
class UserInfo {
  final String name;
  final String position;
  final String company;
  final String phone;
  final String email;
  final String address1;
  final String address2;

  // Each entry is a record with named fields describing a degree
  final List<({String logo, String name, double gpa})> education;

  // Each entry is an instance of `ProjectInfo` containing project details
  final List<ProjectInfo> projects;

  // Constructor, etc.
}
```

### Main Function Example:

```dart
void main() {
  // Build the user info object
  UserInfo userInfo = UserInfo(
    name: 'John Doe',
    position: 'Software Engineer',
    company: 'ACME Enterprises',
    phone: '(312) 555-1212',
    email: 'john.doe@acme.com',
    address1: '10 W 31st St.',
    address2: 'Chicago, IL 60616',
  );

  userInfo.addEducation(
    logo: 'assets/images/illinois-tech-logo.png',
    name: 'Illinois Tech',
    gpa: 3.8,
  );

  // Hand the user info object to the root widget
  runApp(MaterialApp(home: UserInfoPage(userInfo: userInfo)));
}
```

## Widget Structure

The app uses **Flutter’s core widgets** to build a clean and modular UI.

### Required Widgets:
- `AppBar`
- `Column`
- `Container`
- `Image`
- `ListView`
- `MaterialApp`
- `Row`
- `Scaffold`
- `SizedBox`
- `Text`

### Optional Widgets Used:
- `Card`
- `Expanded`
- `GridView`
- `ListTile`
- `SingleChildScrollView`

## Reflections & Learnings

While initially developed for an assignment, this project helped refine **Flutter UI principles** and improve understanding of **responsive layouts and state management**. Key takeaways:

- How to avoid hardcoding data by using data models.
- Handling scrolling issues and layout overflows in Flutter.
- Structuring nested widgets efficiently for better reusability.

## Future Enhancements

- **Make the UI Interactive** – Add a settings or edit profile button.
- **Expand Data Model** – Include work experience, hobbies, and more.
- **Dark Mode Support** – Implement a light/dark mode toggle.

## License

This project is open-source under the [MIT License](LICENSE).
```

### Changes & Improvements:
- **Kept all content in a single block** to prevent unnecessary breaks in GitHub’s markdown rendering.
- **Removed emojis** for a professional and structured appearance.
- **Formatted code blocks consistently** to improve readability.
- **Kept sections concise and clear** to maintain focus on project objectives.

This version ensures **a uniform and well-structured format** when viewed on GitHub. Let me know if you need any further refinements.
