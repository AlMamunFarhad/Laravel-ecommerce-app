# Laravel Ecommerce App

A fully functional e-commerce web application built using **Laravel**. This project allows users to explore, filter, and purchase products with a smooth and responsive shopping experience.

---

## ✨ Features

### 🧑‍💻 User Features

- **User Authentication**
  - Secure Login & Registration
- **Add to Cart**
  - Add products to cart with quantity increase/decrease
- **Wishlist**
  - Save favorite items for later
- **Product Filtering**
  - Filter products by **brand**, **price range**, and **category**
- **Product Ordering**
  - Sort by:
    - New to Old / Old to New (by date)
    - Low to High / High to Low (by price)
- **Custom Pagination** for better UX
- **Cart Management** using **Gloudemans Shoppingcart**
- **Mobile-friendly UI** with responsive layout
- ...and more!

---

## 🛠️ Tech Stack

| Layer        | Technology               |
|--------------|---------------------------|
| Language     | PHP (Laravel Framework)   |
| Frontend     | HTML, CSS, Bootstrap      |
| JavaScript   | Vanilla JS                |
| Cart System  | Gloudemans Shoppingcart   |
| Database     | MySQL                     |

---

## 🚀 Installation & Setup

1. **Clone the Repository**
   ```bash
   git clone https://github.com/AlMamunFarhad/Laravel-ecommerce-app.git
   cd Laravel-ecommerce-app
   ```

2. **Install Dependencies**
   ```bash
   composer install
   ```

3. **Set Up Environment**
   ```bash
   cp .env.example .env
   php artisan key:generate
   ```

4. **Configure Database**
   - Open `.env` file and update DB credentials:
     ```
     DB_DATABASE=ecommerce_app
     ```

5. **Run Migrations**
   ```bash
   php artisan migrate
   ```

6. **Start Development Server**
   ```bash
   php artisan serve
   ```

7. **Visit the App**
   ```
   http://localhost:8000
   ```

---

## 🧪 Test Login

**Credentials:**
- **Email:** `user@gmail.com`
- **Password:** `12345678`

---

## 🤝 Contribution

Pull requests are welcome. For major changes, please open an issue first to discuss what you'd like to add or modify.

---

## 📄 License

This project is open-source and available under the **MIT License**.

---

## 🔗 GitHub Repository

👉 [Laravel-ecommerce-app](https://github.com/AlMamunFarhad/Laravel-ecommerce-app)
