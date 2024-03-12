# Deploying Django with Docker, Gunicorn, and Nginx

# Table of Contents
1. [Project Description](#project-description)
2. [Features](#features)
3. [Prerequisites](#prerequisites)
4. [Programming Languages](#programming-languages)
5. [Getting Started](#getting-started)
    - [Setup for Development](#setup-for-development)
    - [Setup for Production](#setup-for-production)
6. [Configuration](#configuration)
7. [License](#license)

## Project Description
This repository provides a comprehensive guide and template for deploying a Django application with Docker, Gunicorn, and Nginx. It streamlines the process of containerizing Django applications and setting up a production-ready environment using Docker Compose.

## Features
- **Django**: Utilize Django, a high-level Python web framework, for building robust web applications.
- **Nginx (Reverse Proxy)**: Incorporate Nginx as a reverse proxy server to efficiently handle client requests and distribute them to the appropriate backend servers.
- **Containerization with Docker**: Containerize the Django application and Nginx server using Docker for consistent deployment across different environments.

## Prerequisites:

- Docker: Ensure Docker is installed on your system. You can download it from [here](https://www.docker.com/products/docker-desktop/)

## Programming Languages
- Python 

## Getting Started
This project offers separate setups for development and production environments


### Setup for Development
To run the Django application in a development environment, follow these steps:

1. Clone this repository:
    ```bash
    git clone https://github.com/MoigeMatino/Deploying-Django-with-Docker-Gunicorn-Nginx.git
    ```

2. Navigate to the project directory:
    ```bash
    cd Deploying-Django-with-Docker-Gunicorn-Nginx
    ```
3. Update settings:

    Configure your Django project settings (e.g., database connection details) in the `config/settings.py` file.
   
5. Build and start the Docker containers using Docker Compose:
    ```bash
    docker-compose up
    ```

6. Access the Django application at `http://localhost:8000`.
   

### Setup for Production
For deploying the Django application in a production environment, follow these steps:

1. Clone this repository:
    ```bash
    git clone https://github.com/yourusername/Deploying-Django-with-Docker-Gunicorn-Nginx.git
    ```

2. Navigate to the project directory:
    ```bash
    cd Deploying-Django-with-Docker-Gunicorn-Nginx
    ```

3. Build and start the Docker containers for production using the provided production configuration:
    ```bash
    docker-compose -f docker-compose.prod.yaml up -d
    ```
    This command will build the Docker images (using the specified Compose file) and start the containers in detached mode (-d).

4. Access the Django application through the configured Nginx server at `http://localhost:1337`.
    
Ensure that your firewall settings allow traffic on port 1337 if you're accessing the server remotely.


## Configuration
- **Django Settings**: Customize Django settings as per your project requirements. Configuration files are located in the `config` directory.
- **Nginx Configuration**: Modify Nginx configuration if needed. Configuration files can be found in the `nginx` directory.


## License
This project is licensed under the [MIT License](LICENSE).
