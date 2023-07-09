# remove old container
docker rm -f chainlitapp

# remove old image
docker rmi -f mychainlitapp

# build new image
docker build -t mychainlitapp .
docker run  -d -p 8000:8000 -p 7860:7860 --name chainlitapp -v /$(pwd):/app mychainlitapp

# open browser
start http://localhost:8000
start http://localhost:7860