#!/bin/bash
# EC2 setup script for Django Todo Application

# Update system packages
echo "Updating system packages..."
sudo apt update
sudo apt upgrade -y

# Install required packages
echo "Installing required packages..."
sudo apt install -y python3-pip python3-dev libpq-dev postgresql postgresql-contrib nginx curl

# Create a Python virtual environment
echo "Setting up Python environment..."
sudo -H pip3 install --upgrade pip
sudo -H pip3 install virtualenv
mkdir -p ~/todoapp
cd ~/todoapp
virtualenv venv
source venv/bin/activate

# Clone the application (assuming it's in a git repository)
# git clone https://your-repository-url.git .
# Since we're providing files directly, we'll skip this step
# and assume the files are already copied to the server

# Copy application files (do this manually or via scp/rsync)
echo "Remember to copy application files to ~/todoapp/ directory"

# Install Python dependencies
echo "Installing Python dependencies..."
pip install -r requirements.txt

# Set up environment variables
echo "Setting up environment variables..."
cat > .env << EOF
DEBUG=False
SECRET_KEY=$(python -c 'import secrets; print(secrets.token_hex(24))')
ALLOWED_HOSTS=localhost,127.0.0.1,your-domain.com
EOF

# Initialize the database
echo "Setting up database..."
python manage.py migrate
echo "Creating superuser (admin)..."
python manage.py createsuperuser

# Collect static files
echo "Collecting static files..."
python manage.py collectstatic --noinput

# Set up Gunicorn service
echo "Setting up Gunicorn service..."
sudo bash -c 'cat > /etc/systemd/system/todoapp.service << EOF
[Unit]
Description=Gunicorn daemon for Django Todo Application
After=network.target

[Service]
User=$USER
Group=www-data
WorkingDirectory=/home/$USER/todoapp
ExecStart=/home/$USER/todoapp/venv/bin/gunicorn --access-logfile - --workers 3 --bind unix:/home/$USER/todoapp/todoapp.sock todoproject.wsgi:application

[Install]
WantedBy=multi-user.target
EOF'

# Set up Nginx
echo "Setting up Nginx..."
sudo bash -c 'cat > /etc/nginx/sites-available/todoapp << EOF
server {
    listen 80;
    server_name your-domain.com;

    location = /favicon.ico { access_log off; log_not_found off; }
    
    location /static/ {
        root /home/$USER/todoapp;
    }

    location / {
        include proxy_params;
        proxy_pass http://unix:/home/$USER/todoapp/todoapp.sock;
    }
}
EOF'

# Enable the Nginx configuration
sudo ln -s /etc/nginx/sites-available/todoapp /etc/nginx/sites-enabled

# Test Nginx configuration
sudo nginx -t

# Start and enable services
echo "Starting services..."
sudo systemctl start todoapp
sudo systemctl enable todoapp
sudo systemctl restart nginx

echo "============================================"
echo "Django Todo App should now be running!"
echo "Remember to update your domain name in Nginx config and .env file"
echo "Visit http://your-server-ip or http://your-domain.com"
echo "Admin login: http://your-domain.com/admin/"
echo "============================================"