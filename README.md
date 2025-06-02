# Django Todo App

A simple, elegant Todo List application built with Django.

## 📽️ Demo Video

[![Watch Demo Video](https://via.placeholder.com/800x450.png?text=Click+to+Watch+Demo)](https://drive.google.com/file/d/1F2C-k9zL1Zd7gFhOwg4hObtgLNuPHOgL/view?usp=sharing)

---

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

todoproject/
├── manage.py
├── requirements.txt
├── todoproject/
│ ├── init.py
│ ├── asgi.py
│ ├── settings.py
│ ├── urls.py
│ └── wsgi.py
└── todoapp/
├── init.py
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



## Local Development

```bash
# 1. Clone the repository
git clone https://github.com/YOUR_USERNAME/Django-AWS-Project.git
cd Django-AWS-Project

# 2. Create and activate virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# 3. Install dependencies
pip install -r requirements.txt

# 4. Run migrations
python manage.py migrate

# 5. Create a superuser
python manage.py createsuperuser

# 6. Start the development server
python manage.py runserver
Then visit: http://localhost:8000

🌍 Live Server
URL: http://13.51.80.178:8000

Admin Login:

Username: sreeja

Password: sreeja@06

⚙️ AWS EC2 Deployment

# 1. SSH into your instance
ssh -i your-key.pem ubuntu@<EC2-IP>

# 2. Clone the repo & navigate to it
git clone https://github.com/YOUR_USERNAME/Django-AWS-Project.git
cd Django-AWS-Project

# 3. Create virtualenv and activate
python3 -m venv venv
source venv/bin/activate

# 4. Install Django
pip install django

# 5. Apply migrations
python3 manage.py migrate

# 6. Run the server
python3 manage.py runserver 0.0.0.0:8000
EC2 Security Group Settings

Type	Protocol	Port	Source
HTTP	TCP	8000	0.0.0.0/0
SSH	TCP	22	Your IP

✅ To-Do App Features
Add, update, and delete tasks

Track task completion

Clean UI with Django admin

💡 Next Steps
Add Gunicorn & Nginx for production

Enable HTTPS with Let’s Encrypt

Connect PostgreSQL

Automate CI/CD pipeline

🧑‍💻 Author
@sreejakaira — Pull requests and suggestions welcome!

📄 License
This project is open-source — use it freely for learning and development.
