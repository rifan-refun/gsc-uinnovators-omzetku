# Google Solution Challenge 2025 
# Team name : uinnovators
# Project name : Omzetku 
![logo omzetku-02-02 2 (1)](https://github.com/user-attachments/assets/25c02bb0-5493-4677-8b8c-5ae43cdb2375)


## What is our project purpose ? 😉
We propose an intelligent, AI-driven Decision Support System (DSS) tailored for small to medium-sized businesses (SMEs), especially in the F&B sector, named Omzetku. Omzetku is a smart Android-based mobile application built specifically for medium-scale F&B MSMEs in Indonesia to help them predict sales, identify influential factors, and support better business decision-making. The name is derived from the Indonesian word “omzet” meaning revenue or turnover, and “ku” meaning mine, symbolizing personal ownership and growth. Omzetku enables users to forecast sales, detect sales patterns, and recommend high-performing products, empowering business owners to make strategic, data-based decisions.

## Why Omzetku? ✨
Tailored for MSMEs, Omzetku combines a local-first design with adaptive AI that auto-fits data patterns for precise forecasts. Key features include smart product ranking (highlighting factors impacting sales), automated notifications, and zero-learning-curve usability. Business owners gain clear, actionable steps without data science knowledge, making complex analytics effortless yet impactful. From preventing expired stock to optimizing daily operations, Omzetku turns raw data into growth opportunities.

## List of Omzetku's Features 📃: 
🤖 Automated Sales Forecasting
➤ Predict sales trends using a hybrid pre-trained AI model (time-series analysis + contextual data) — no technical expertise required.

📊 Real-Time Business Dashboard
➤ Track daily, weekly, and monthly sales performance with filters for products, locations, and categories.

🏆 Multi-Product Forecasting & Ranking
➤ Analyze and rank products by future demand, sales potential, and performance metrics.

🌍 Localized User Experience
➤ Intuitive interface with local language support, designed for non-technical users.

💡 Actionable AI Recommendations
➤ Receive data-driven suggestions for restocking, promotions, and pricing adjustments.

📂 Flexible Data Integration
➤ Import data via Excel, CSV, or manual entry — no expensive POS systems needed.

🎯 Smart Variable Impact Analysis
➤ Automatically detect external factors (holidays, weather, promotions) influencing sales.

📰 MSME-Curated Insights Hub
➤ Access tailored news and trends relevant to your business data for smarter decisions.

## What Tech Stack We use ? 🤖
➤ Flutter for Mobile Development 

➤ Firebase Vertex AI

➤ Gemini 1.5 flash

➤ Vertex AI

➤ Google Cloud Storage

## 🚀 Upcoming Features
Our project's prototype still requires further development, starting from technical implementation readiness to structured workflow. The following 3 main points will be our consideration for future development

🧠 AI/ML Evolution

  ➤ Enhanced forecasting with reinforcement learning & custom Vertex AI models for industry-specific accuracy.

  ➤ Smarter variable analysis (market trends, user behavior) via advanced pipelines.

☁️ Cloud-Powered Scalability

  ➤ Google Cloud CDN & Load Balancing for global low-latency access.

  ➤ Event-driven microservices (Cloud Run/Functions) for cost-efficient scaling.

🔗 Ecosystem Expansion

  ➤ Integrate POS, supply chain tools, and competitor-tracking dashboards.

  ➤ Launch an MSME community hub with mentorship and microlearning resources.

  ## How to Run this Project ? 🤔

Prerequisites
Flutter SDK ( 3.32.0-0.3.pre)

Android Studio (with Android SDK)

Dart 3.8.0

Git

Steps
1. Clone the repository

```bash
git clone https://github.com/rifan-refun/gsc-uinnovators-omzetku.git
cd omzetku-flutter
```
2. Install dependencies

```bash
flutter pub get
```
3. Open project in Android Studio

4. Launch Android Studio → File → Open → Select the cloned project folder.

5. Ensure Android SDK and Flutter/Dart plugins are installed (Configure → Plugins).

6. Set up the emulator/device

- Android Emulator:

Tools → Device Manager → Create a virtual device (e.g., Pixel 4, API ≥ 36).

- Physical Device:

Enable USB Debugging in developer options.

7. Run the app

```bash
flutter run
```
or click the ▶ Run button in Android Studio.

8. 🛠 Troubleshooting
If flutter pub get fails:

```bash
flutter clean && flutter pub cache repair
```
Missing Android licenses? Run:

```bash
flutter doctor --android-licenses
```
📱 Build for Production
Generate an APK:

```bash
flutter build apk --release
```
  







