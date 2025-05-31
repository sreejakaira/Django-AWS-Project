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
Deploying Django Project on AWS EC2 (13.60.253.71)
Follow these exact steps to clone, set up, and run the Django project on your AWS EC2 instance (13.60.253.71):

✅ 1. Clone the Repository
bash
Copy
Edit
git clone https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
cd YOUR_REPO_NAME/project
🌐 2. Set Allowed Hosts
Set ALLOWED_HOSTS so Django can serve requests from your public IP:

bash
Copy
Edit
export ALLOWED_HOSTS='localhost,127.0.0.1,13.60.253.71'
🐍 3. Set Up Python Virtual Environment
bash
Copy
Edit
python3 -m venv venv
source venv/bin/activate
📦 4. Install Dependencies
bash
Copy
Edit
pip install django
Optionally add other dependencies and freeze with pip freeze > requirements.txt.

🛠 5. Run Migrations
bash
Copy
Edit
python3 manage.py migrate
🔥 6. Start Django Server
bash
Copy
Edit
python3 manage.py runserver 0.0.0.0:8000
Django will be available at:
http://13.60.253.71:8000

🔓 7. AWS Security Group Configuration
Make sure your EC2 instance's security group allows inbound traffic:

Type	Protocol	Port Range	Source
HTTP	TCP	8000	0.0.0.0/0
SSH	TCP	22	YOUR_IP/32








## License

This project is open-source, feel free to use it for learning purposes.
