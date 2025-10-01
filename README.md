# Vidavo

A Flutter test project

## Getting Started

A Flutter test project that demonstrates a dynamic form system driven by a JSON configuration file(question1) and

login page that you can enter app using 

#### username:vidavo 

and 

#### password :1234 

(Question2),

 add and show message page (Question3)
The project leverages BLoC architecture for state management and Clean architecture includes a variety of UI enhancements using popular Flutter flutter_screenutil package.


**Features and Packages** :

Dynamic Form Rendering:
Form fields are generated dynamically based on a JSON file stored in the assets folder. Supports various field types such as text, dropdown, date picker, checkbox, radio buttons, and more.

State Management:
Managed with flutter_bloc, enabling reactive and predictable state updates across the form.


Internationalization Support:
Date, time, and number formatting using intl.

Dependency Injection:
Service management via get_it.

Responsive UI:
Fully responsive layouts powered by flutter_screenutil.

Vector Graphics Support:
Handles SVG assets using flutter_svg.

Loading Animations:
Beautiful animated loading indicators using loading_animation_widget.

Enhanced Dropdowns:
Advanced searchable dropdowns via dropdown_search.


**Value Equality and Functional Programming**:

equatable: Simplifies value comparisons in BLoC states.

dartz: Enables functional programming constructs like Either and Option.



**Project structure**
lib/
├── main.dart                  # Entry point
├── core/                      # Constants, utilities, and shared widgets
├── feature/
│   └── dynamic_form/
│       ├── data/              # JSON form data and models
│       ├── domain/            # Entities and repository interfaces
│       └── presentation/
│           ├── manager/       # Bloc and state management
│           └── pages/         # UI screens
assets/
├── forms/
│   └── form_data.json          # JSON file defining the dynamic form



**Installation**

Clone the repository:
git clone https://github.com/rezvanmj/vidavo.git
cd vidavo


Install dependencies:
flutter pub get


Run the project:
flutter run

