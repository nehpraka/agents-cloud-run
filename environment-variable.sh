gcloud config set project citric-snow-467716-e1
gcloud services enable cloudbuild.googleapis.com
gcloud services enable containerregistry.googleapis.com # Or artifactregistry.googleapis.com


# Set your project ID if not already set
export PROJECT_ID=$(gcloud config get-value project)

# Build the Docker image using Cloud Build
# This will also push the image to GCR
gcloud builds submit --tag gcr.io/${PROJECT_ID}/scotiabank-greeting-agent:latest

gcloud run deploy scotiabank-greeting-agent \
  --image gcr.io/${PROJECT_ID}/scotiabank-greeting-agent \
  --platform managed \
  --region us-central1 \
  --allow-unauthenticated \
  --memory 128Mi \
  --cpu 1

735739