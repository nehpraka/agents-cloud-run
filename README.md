# Scotiabank 3DM Greeting Agent

This project demonstrates a basic greeting agent deployed on Google Cloud Run using Docker.

## Features:
- A simple Flask web application.
- A greeting agent that asks for your name and responds.
- A basic HTML/CSS/JavaScript UI with a Scotiabank logo.
- Containerized using Docker.
- Deployable to Google Cloud Run.

## Folder Structure:
scotiabank-3dm-agent/
├── app/
│ ├── static/
│ │ └── scotiabank_logo.png
│ ├── templates/
│ │ └── index.html
│ ├── init.py
│ ├── main.py
│ └── requirements.txt
├── Dockerfile
├── docker-compose.yml (Optional, for local testing)
└── README.md

## Prerequisites:
1. **Google Cloud SDK:** Installed and configured with your GCP project.
2. **Docker:** Installed on your local machine.
3. **Scotiabank Logo:** You need to place a `scotiabank_logo.png` file in the `app/static/` directory.

## Local Development (Optional):

You can test the application locally using Docker Compose.

1. **Create the logo file:**
   Place your Scotiabank logo image as `app/static/scotiabank_logo.png`.

2. **Run with Docker Compose:**
   ```bash
   cd scotiabank-3dm-agent
   docker-compose up --build
