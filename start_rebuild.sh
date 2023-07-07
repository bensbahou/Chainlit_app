# remove old container
docker rm -f chainlitapp

# remove old image
docker rmi -f mychainlitapp

# build new image
docker build -t mychainlitapp .
docker run -d -p 8000:8000 --name chainlitapp  mychainlitapp

# open browser
start http://localhost:8000