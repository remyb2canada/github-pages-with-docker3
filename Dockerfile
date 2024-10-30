##################################################
# Dockerfile for GitHub Pages dependencies (https://pages.github.com/versions/) as of 2024-10-29
# 
# Made from a mix of:
#  - Mistral LeChat prompt (mistral.ai)
#  - https://github.com/hackforla/ghpages-docker/blob/main/Dockerfile
#  - https://gist.github.com/BillRaymond/db761d6b53dc4a237b095819d33c7332
#
# Content:
#   - Ruby 3.3.4
#   - GitHub Pages 232
#   - Jekyll 3.10.0
#
# Instructions
# 1. Copy and paste the content of this file in a file called Dockerfile
# 2. Open a Terminal with Admin privileges (Command Prompt or PowerShell) and navigate where the Dockerfile is located
# 3. Build the Docker image using this command ('my-jekyll-site' will be the name of the Docker image):
#       docker build -t my-jekyll-site .
# 4. Use Docker Compose or Run the Docker container using this command (if you're on Windows, change '${PWD}' with '%cd%'):
#       docker run -p 4000:4000 -v ${PWD}:/usr/src/app my-jekyll-site 
# 
# The docker container will be running (a jekyll --help output will be displayed) and you can pass Jekyll commands to it.
# For example, to serve the jekyll site from oa single command line use this command:
#       docker run -p 4000:4000 -v %cd%:/usr/src/app -it --rm my-jekyll-site jekyll serve --host "0.0.0.0"
#       
##################################################

# Use the official latest Ruby image
FROM ruby:3.3.4

# Set the working directory inside the container
# All subsequent commands will be run in this directory. 
# This is also where the Jekyll site files will be located
WORKDIR /usr/src/app

# Install github-pages Gem, which installs all dependencies required by GitHug Pages, including Jekyll
# When no version is specified, it will install the most recent version available (v232 as of 2024-10-29)
RUN gem install github-pages

# Copy all the files from the current directory on the host machine (where the Dockerfile is located)
# into the working directory inside the container (/usr/src/app). 
# This includes the Jekyll site files and any other necessary files
COPY . .

# Tell Docker that the container will listen on port 4000 at runtime (the default port that Jekyll uses to serve the site)
EXPOSE 4000

# Specify the default command to run when the container starts:
# Run 'jekyll-serve' with the following options:
# '--watch': Automatically regenerate the site when files change.
# '--force_polling': Force Jekyll to use polling to watch for changes (useful in environments where file system events are not supported).
# '--host 0.0.0.0': Make the Jekyll server accessible from outside the container.
#CMD ["jekyll", "serve", "--watch", "--force_polling", "--host", "0.0.0.0"]
CMD ["jekyll", "--help"]
