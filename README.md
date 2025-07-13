# Notes Web Application

This is a Java-based web application developed using the Eclipse IDE. It implements basic functionalities for managing personal notes, using the servlet-DAO architecture.

## 🎯 Purpose

The purpose of this project is to build a simple and functional Notes Management System where users can:

- ✍️ Create new notes  
- 📖 View saved notes  
- ✏️ Edit existing notes  
- ❌ Delete notes  

This project demonstrates the use of servlets, JSP (if used), JDBC for database interaction, and the DAO design pattern in a Java EE web application.

## 📁 Project Structure


## 📦 Packages

- `com.DAO` – Data Access Object classes
- `com.Db` – Database connection utilities
- `com.Servlet` – Servlet classes for handling user requests
- `com.User` – Model/user-related classes

## 🚀 How to Run

1. **Import Project**:  
   Open Eclipse → File → Import → Existing Projects into Workspace → Select the `Notes` folder.

2. **Configure Server**:  
   Add a server (e.g., Apache Tomcat) and deploy the project.

3. **Build & Run**:  
   Right-click project → Run As → Run on Server.

## 🔧 Requirements

- JDK 8+
- Eclipse IDE
- Apache Tomcat (or any compatible servlet container)
- MySQL (if database is used)

## 📌 Notes

- Ensure database credentials and JDBC URL (likely in `DbConnection.java`) are properly configured.
- Check `web.xml` (if available) for servlet mappings.
- JSP files (if any) should be placed under `WebContent` or `Webapp`.
