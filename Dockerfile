FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /housefx/

## Step 2:
# Copy source code to working directory
COPY . app.py /housefx/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013,DL3042
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org --root-user-action=ignore -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD [ "python", "app.py" ]
