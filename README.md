# 🌤️ WeatherApp

A simple and beautiful Flutter application that provides real-time weather information for your current location or any city worldwide.

---

## 📱 About This Project

WeatherApp is built using the [Flutter](https://flutter.dev/) framework — a modern toolkit developed by Google to create natively compiled applications for mobile, web, and desktop from a single codebase.

This app fetches live weather data such as temperature, humidity, weather condition, wind speed, and more using an external API (like OpenWeatherMap).

---

## 🚀 Getting Started

### ✅ Prerequisites

Before running this app, make sure you have the following installed:

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (version >= 3.0.0)
- Dart SDK (comes with Flutter)
- Android Studio or Visual Studio Code
- Android Emulator or a physical Android/iOS device

### 🔽 Install Flutter

If Flutter is not installed, follow these steps:


# Clone the flutter repo
git clone https://github.com/flutter/flutter.git

# Add flutter to PATH
export PATH="$PATH:`pwd`/flutter/bin"

# Check installation
flutter doctor
📦 Installation
Clone the repository:

bash
Sao chép
Chỉnh sửa
git clone https://github.com/yourusername/weatherapp.git
cd weatherapp
Get the dependencies:

bash
Sao chép
Chỉnh sửa
flutter pub get
▶️ Running the App
To run the app on an emulator or device:

bash
Sao chép
Chỉnh sửa
flutter run
To build for release (e.g., APK):

bash
Sao chép
Chỉnh sửa
flutter build apk
🌐 Weather API Setup
This app uses an external weather API like OpenWeatherMap. Follow these steps:

Register an account on https://openweathermap.org

Get your API key

Create a .env file or add the key directly into your configuration file

Example (not secure for production):

dart
Sao chép
Chỉnh sửa
const String apiKey = 'YOUR_API_KEY';
🛠 Features
 Get current weather by GPS location

 Search weather by city name

 Show temperature, humidity, wind speed, condition icon

 Refresh to update weather

 Clean and responsive UI

📁 Folder Structure
bash
Sao chép
Chỉnh sửa
lib/
├── main.dart
├── screens/
│   └── home_screen.dart
├── services/
│   └── weather_service.dart
├── models/
│   └── weather_model.dart
└── widgets/
    └── weather_card.dart
✨ Screenshots
Home Screen	Search City	Weather Info

🧪 Testing
You can write widget and unit tests like this:

bash
Sao chép
Chỉnh sửa
flutter test
🙌 Contributing
Contributions are welcome! Fork this repo and submit a pull request to improve the app.

📄 License
This project is licensed under the MIT License.

💬 Contact
💻 Author: Thanh Dat

🌐 GitHub: github.com/ThahhDat

📫 Email: datdat210704@gmail.com

📚 Useful Flutter Resources
Flutter Official Docs

Flutter Widgets Catalog

Dart Language Tour
