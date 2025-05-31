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

## License

This project is open-source, feel free to use it for learning purposes.