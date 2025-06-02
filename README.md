# Django Todo App

A simple, elegant Todo List application built with Django.

## Features

- User authentication and authorization
- Create, read, update, and delete tasks
- Mark tasks as complete/incomplete
- Set due dates for tasks
- Responsive design for all devices
- Admin interface for easy management

## Technology Stack

- Django web framework
- SQLite database (for development)
- Bootstrap for styling
- Deployed on AWS EC2

## Project Structure

```
todoproject/
├── manage.py
├── requirements.txt
├── todoproject/
│   ├── __init__.py
│   ├── asgi.py
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
└── todoapp/
    ├── __init__.py
    ├── admin.py
    ├── apps.py
    ├── forms.py
    ├── models.py
    ├── urls.py
    ├── views.py
    └── templates/
        └── todoapp/
            ├── base.html
            ├── login.html
            ├── todo_confirm_delete.html
            ├── todo_form.html
            └── todo_list.html
```

## Local Development

1. Clone the repository
2. Create a virtual environment:
   ```
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```
3. Install dependencies:
   ```
   pip install -r requirements.txt
   ```
4. Apply migrations:
   ```
   python manage.py migrate
   ```
5. Create a superuser:
   ```
   python manage.py createsuperuser
   ```
6. Run the development server:
   ```
   python manage.py runserver
   ```
7. Visit http://localhost:8000 in your browser

## Deployment on AWS EC2

1. Create an EC2 instance running Ubuntu
2. Configure security groups to allow HTTP (port 80) and HTTPS (port 443)
3. SSH into your instance
4. Clone this repository
5. Run the setup script:
   ```
   bash scripts/setup_ec2.sh
   ```
6. Update the Nginx configuration with your domain name:
   ```
   sudo nano /etc/nginx/sites-available/todoapp
   ```
7. Update the `.env` file with your domain name:
   ```
   nano ~/todoapp/.env
   ```
8. Restart Nginx:
   ```
   sudo systemctl restart nginx
   ```

## 🌍 Live Server

**URL:** [http://13.51.80.178:8000](http://13.51.80.178:8000)


Default Admin Credentials
Use the following credentials to log into the Django admin panel at /admin:


Username: sreeja  
Password: sreeja@06

---

## ⚙️ Setup Instructions (AWS EC2)

Follow these steps on your AWS EC2 instance to clone and run the project.

---

### 1. 🚀 Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/Django-AWS-Project.git
cd Django-AWS-Project/project
2. 🌐 Configure Allowed Hosts
Set your server's IP in ALLOWED_HOSTS:


export ALLOWED_HOSTS='localhost,127.0.0.1,13.60.253.71'
3. 🐍 Create & Activate Virtual Environment

python3 -m venv venv
source venv/bin/activate
4. 📦 Install Dependencies

pip install django
Optionally:
pip freeze > requirements.txt
To restore: pip install -r requirements.txt

5. 🛠 Run Migrations

python3 manage.py migrate
6. 🔥 Start the Server

python3 manage.py runserver 0.0.0.0:8000
Access from browser: http://13.60.253.71:8000

🔐 AWS EC2 Security Group Settings
Ensure your EC2 instance allows inbound traffic on port 8000:

Type	Protocol	Port	Source
HTTP	TCP	8000	0.0.0.0/0
SSH	TCP	22	Your IP only

✅ To-Do App Features
Add, update, and delete tasks

Track task completion

Clean UI with Django admin

💡 Next Steps
 Add Gunicorn & Nginx for production

 Enable HTTPS with Let's Encrypt

 Connect PostgreSQL

 Deploy via CI/CD

🧑‍💻 Author
@sreejakaira
Pull requests and suggestions are welcome!









## License

This project is open-source, feel free to use it for learning purposes.

## 📽️ Demo Video

[![Watch Demo Video](https://via.placeholder.com/800x450.png?text=Watch+Demo+Video)](https://drive.google.com/file/d/1F2C-k9zL1Zd7gFhOwg4hObtgLNuPHOgL/view?usp=sharing)
