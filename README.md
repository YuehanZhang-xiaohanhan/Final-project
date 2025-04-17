# Final Report - Hospital Consultation System


## Author

Yuehan Zhang-2336499- Final project

## 1. Project Overview

The Hospital Consultation System is a full-stack healthcare application designed to simplify outpatient services and enhance communication between patients and doctors. It supports two user roles—patients and doctors—as well as an **admin** backend for platform management.

This system follows a modular, scalable three-tier architecture:

- Frontend: Built with UniApp and Vue 3, supporting multiple platforms.
- Backend: Developed using Spring Boot, exposing RESTful APIs.
- Database: Powered by MySQL, storing user, appointment, diagnosis, and prescription data.

All components communicate via HTTP using JSON-formatted requests, ensuring a loosely coupled and maintainable structure.

---

## 2. Tech Stack

| Layer       | Technology           |
|-------------|----------------------|
| Backend     | Java, Spring Boot    |
| Frontend    | UniApp, Vue 3        |
| Database    | MySQL                |
| Protocol    | HTTP + JSON          |

---

## 3. Core Features

### Patient-side:

- User registration and login
- Appointment booking
- Viewing appointment history
- Receiving visit reminders
- Consulting with doctors online

### Doctor-side:

- Viewing patient appointments
- Writing diagnostic results
- Issuing prescriptions

### Admin-side:

- User management
- Doctor management
- Hospital information management
- Department management

---

## 4. How to Run the Project

### Backend (Spring Boot)

1. Open the `backend/` directory in **IntelliJ IDEA**.
2. Make sure JDK and Maven are properly configured.
3. Run `Application.java` to start the backend server.

### Frontend (UniApp)

1. Open the `frontend/` directory in **HBuilder X**.
2. Use an emulator or real device to run the application.

### Database

1. Start your MySQL server.
2. Import the SQL script from `sql/25uniapp_hospital.sql`.

---

## 5. Project Structure

```
backend/
├── Application.java              # Main application entry point
├── controller/
│   └── UserController.java       # Handles user requests
├── service/
│   └── UserService.java          # Business logic
├── model/
│   └── User.java                 # Entity class
├── config/
│   └── WebConfig.java            # Web configuration (e.g., CORS)
```

---

## 6. Environment Setup

Before running the system, ensure the following tools are installed:

1. JDK (Version 1.8 or later)
2. MySQL
3. IntelliJ IDEA (or any Java IDE)
4. HBuilder X for UniApp development

---

## 7. Testing

The system has been thoroughly tested to ensure functionality, stability, and performance:

- Validates that each feature behaves as defined in the requirements.
- Simulates multi-user interactions to check for concurrency and response speed.
- Tests edge cases and handles invalid inputs gracefully.
- Evaluates system security (e.g., SQL injection, unauthorized access).

Testing ensures the system is production-ready and provides a foundation for future enhancements.

---
