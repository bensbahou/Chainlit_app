# remove old container
docker rm -f chainlitapp

docker run -d -p 8000:8000 --name chainlitapp  mychainlitapp

# open browser
start http://localhost:8000

# refresh browser
start http://localhost:8000