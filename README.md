# Item Management REST API

## Description
A simple Java Spring Boot backend application that provides REST APIs to manage items.
The application uses in-memory storage (ArrayList) and supports adding items and retrieving items by ID.

## Technologies Used
- Java
- Spring Boot
- Maven
- REST API
- In-memory storage

## How to Run
1. Clone the repository
2. Open the project in IntelliJ / Eclipse
3. Run `ItemApiApplication.java`
4. Application runs on `http://localhost:8080`

## API Endpoints

### Add Item
POST /api/items
Request Body:
{
  "name": "Laptop",
  "description": "Gaming laptop",
  "price": 75000
}

### Get Item By ID
GET /api/items/{id}

## Notes
- No database is used.
- Data is stored in-memory.
- Restarting the application clears all data.
