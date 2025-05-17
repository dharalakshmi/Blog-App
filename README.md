# 🌐Full Stack Blogging Platform with P2P-Style User Interaction and Secure Post Sharing

A secure and scalable full-stack blogging application designed with distributed system principles. This platform enables users to post blogs, upload images, and view content from users they follow—mimicking peer-to-peer-style selective sharing.


## 🚀 Features

- 🔐 Secure user registration and login
- 📝 Blog post creation with image upload (Dropzone.js)
- 👥 Follow/Unfollow other users
- 📰 Personalized feed showing posts only from followed users
- 📂 Secure file upload and storage
- 🛡️ Session-based authentication and access control
- 🧩 Modular and scalable architecture


## 🏗️ System Architecture

- **Frontend**: HTML, CSS, JavaScript, Dropzone.js
- **Backend**: PHP
- **Database**: MySQL
- **Design Pattern**: Follows modular MVC-style folder structure
- **Access Control**: Based on user-follow relationships (P2P-style behavior)


## 📸 Screenshots

1. Login/Register Page
![Screenshot 2025-05-11 232422](https://github.com/user-attachments/assets/584078b6-cbf2-4666-afbe-e7e25a98a32f)

2. Post Creation with Image Upload
![Screenshot 2025-05-11 232803](https://github.com/user-attachments/assets/a2fdb090-0bea-4cd3-b2f5-eeeda0bbf509)

3. Personalized Feed
 ![Screenshot 2025-05-11 233509](https://github.com/user-attachments/assets/57341e7c-eac9-4b1c-a1f3-16b1d4e317fe)

4. Follow/Unfollow Functionality
![Screenshot 2025-05-12 112758](https://github.com/user-attachments/assets/88a1be33-757b-4627-aeb1-c51632681a3a)

5. Admin Dashboard (if applicable)
![Screenshot 2025-05-11 234047](https://github.com/user-attachments/assets/6ead816a-c848-4e5a-88cb-c043f02c19ef)



## ⚙️ Installation

1. **Clone the repository**  
- git clone https://github.com/dharalakshmi/Blog-App.git
- cd your-repo-name

2. **Set up the database**
- Import the provided SQL file into MySQL
- Update DB credentials in /config.php

3. **Host the project**
- Place it in htdocs/ (XAMPP) or your preferred web server
- Start Apache and MySQL services
- Access the site at http://localhost/your-repo-name/

## 🔐 Security Highlights
- All user inputs are validated
- Sessions are securely managed
- File uploads are restricted and validated
- Content visibility is scoped to user-follow logic
