pkg update -y && pkg install golang -y
pkg install golang -y
go version
termux-change-repo
pkg update
pkg install golang -y
go version
go mod init grpc-server
go get google.golang.org/grpc
go run main.go
pkill -f termux
cloudflared tunnel --url tcp://localhost:50051
pkg install cloudflared -y
cloudflared --version
cloudflared tunnel --url tcp://localhost:50051
clear
pkg install grpcurl -y
grpcurl characteristic-roland-instance-wake.trycloudflare.com:443 list
cloudflared access tcp --hostname characteristic-roland-instance-wake.trycloudflare.com --url localhost:6000
grpcurl localhost:6000 list
grpcurl -plaintext localhost:6000 list
nano main.go
go run main.go
grpcurl -plaintext localhost:6000 list
cd ~/grpc-server
go run main.go
cd ~/grpc-server
go run main.go
grpcurl -plaintext -d '{"name":"Husen"}' localhost:50051 hello.Greeter/SayHello
grpcurl -plaintext -d '{"name":"Test"}' localhost:50051 hello.Greeter/SayHello
ps aux | grep -E "go|cloudflared"
ss -tulnp | grep 50051
go run main.go
pkill -f main.go
go run main.go
ss -tulnp | grep 50051
pkg install iproute2
ss -tulnp | grep 50051
pkill -9 -f main.go
pkill -9 -f go
go run main.go
grpcurl -plaintext localhost:50052 list
go run main.go
pkill -9 -f main.go
pkill -9 -f go
go run main.go
pkill -9 -f main.go
pkill -9 -f go
grpcurl -plaintext 127.0.0.1:50052 list
nano main.go
go run main.go
nohup go run main.go &
grpcurl -plaintext 127.0.0.1:50052 list
cd ~/grpc-server
go run main.go
ps aux | grep go
go run main.go
nano main.go
pkill go
go run main.go
cat go.mod
nano main.go
go run main.go
pkill -f main.go
nano main.go
go run main.go
pkill -9 -f main.go
pkill -9 -f go
go run main.go
pkill -9 -f main.go
pkill -9 -f go
go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest
export PATH=$PATH:$(go env GOPATH)/bin
go run main.go
grpcurl -plaintext localhost:50052 list
go run main.go
nohup go run main.go &
grpcurl -plaintext 127.0.0.1:50052 list
nano main.go
go mod tidy
nohup go run main.go &
grpcurl -plaintext 127.0.0.1:50052 list
[1]+ Exit 1
go run main.go
pkill -9 -f go
go run main.go
cloudflared access tcp --hostname characteristic-roland-instance-wake.trycloudflare.com --url localhost:6000
grpcurl -plaintext localhost:6000 list
grpcurl -plaintext localhost:6000 describe grpc.reflection.v1alpha.ServerReflection
pkg install protobuf -y
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
export PATH=$PATH:~/go/bin
nano hello.proto
protoc --go_out=. --go-grpc_out=. hello.proto
ls
grpcurl -plaintext localhost:6000 list
pkg install tmux -y
tmux
cloudflared tunnel --url tcp://localhost:50051
exit
grpcurl -plaintext 127.0.0.1:50052 list
grpcurl -plaintext -d '{"name":"Husen"}' 127.0.0.1:50052 hello.Greeter/SayHello
nohup go run main.go &
exit
grpcurl -plaintext 127.0.0.1:50052 list
hello.Greeter
pb.RegisterGreeterServer(s, &server{})
nano main.go
go run main.go
grpcurl -plaintext 127.0.0.1:50052 list
nano main.go
go run main.go
cat go.mod
nano main.go
go run main.go
grpcurl -plaintext 127.0.0.1:50052 list
ps aux | grep main
pkill -f main.go
go run main.go
pkill -f main.go && go run main.go
go run main.go
grpcurl -plaintext 127.0.0.1:50052 list
ls hello
grep service hello.proto
grep Register main.go
grep "type server" -A 3 main.go
grep RegisterGreeter main.go
nano main.go
pkill -f main.go
go run main.go
grpcurl -plaintext 127.0.0.1:50052 list
pkill -9 -f main.go
pkill -9 -f 50052
netstat -tulnp | grep 50052
go run main.go
ss -ltn | grep 50052
pkill -9 -f main.go
go run main.go
cat main.go
go run main.go
grpcurl -plaintext 127.0.0.1:50052 list
pkill -9 go
pkill -9 grpcurl
go run main.go
nano main.go
go run main.go
pkill -9 go
go run main.go
exit
grpcurl -plaintext -d '{"name":"Husen"}' 127.0.0.1:50053 hello.Greeter/SayBye
go run main.go
nano main.go
go run main.go
grpcurl -plaintext -d '{"name":"Husen"}' 127.0.0.1:50053 hello.Greeter/SayBye
go run main.go
ss -ltn | grep 50053
cd
go run main.go
ls
cd grpc-server
ls
go run main.go
grpcurl -plaintext 127.0.0.1:50053 list
evans -r repl -p 50053
go install github.com/ktr0731/evans@latest
export PATH=$PATH:~/go/bin
evans --version
evans -r repl -p 50053
echo 'export PATH=$PATH:~/go/bin' >> ~/.bashrc
source ~/.bashrc
show service
evans -r repl -p 50053
pkg install golang
go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest
export PATH=$PATH:~/go/bin
grpcurl -plaintext 127.0.0.1:50052 list
grpcurl -plaintext 127.0.0.1:50053 list
go install github.com/ktr0731/evans@latest
evans -r repl
go run main.go
cd ~/grpc-server
go run main.go
pkill -f main.go && go run main.go
cd
pkg install iputils
pkg update && pkg upgrade
pkg install inetutils
ping google.com
ping 1.1.1.1
ping youtube.com
ss -ltn
ps -A | grep go
ps -A | grep main
go run main.go
grpcurl -plaintext 127.0.0.1:50052 list
grpcurl -plaintext 127.0.0.1:50052 describe hello.Greeter
grpcurl -plaintext -d '{"name":"Husen"}' 127.0.0.1:50052 hello.Greeter/SayHello
nano hello.proto
protoc --go_out=. --go-grpc_out=. hello.proto
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
export PATH=$PATH:$(go env GOPATH)/bin
which protoc-gen-go
pkg install which
which protoc-gen-go
export PATH=$PATH:$HOME/go/bin
protoc --go_out=. --go-grpc_out=. hello.proto
cd ~/grpc-server
protoc --go_out=. --go-grpc_out=. hello.proto
ls
ls hello
go run main.go
grpcurl -plaintext -d '{"name":"Husen"}' 127.0.0.1:50052 hello.Greeter/SayBye
ps -A | grep go
kill 6715 6857
ps -A | grep go
go run main.go
cd
./ngrok tcp 8899
./ngrok tcp 1080
proxy --hostname 0.0.0.0 --port 8899
ps aux | grep proxy
pkill microsocks
pkill -f proxy
microsocks -p 1080
ss -tulnp | grep 1080
pkg install curl -y
curl --socks5 127.0.0.1:1080 http://HTML.com
curl -x http://127.0.0.1:8899 http://example.com
ps aux | grep microsocks
curl --socks5 127.0.0.1:1080 http://example.com
ip addr
ifconfig
curl --socks5 127.0.0.1:1080 http://example.com
tmux
microsocks -p 1080
cpython -m http.server 8080
python -m http.server 8080
N
P
D
B
N
d
tmux attach
pkg install cloudflared -y
python -m http.server 8080
exit
ifconfig
pkg install wget unzip -y
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm64.zip
unzip ngrok-v3-stable-linux-arm64.zip
chmod +x ngrok
./ngrok config add-authtoken 3DFBbS1mTI4moO9UcgDdIBx1qGS_7uiLCQZF1ejNBpvzpzZvy
proxy --hostname 0.0.0.0 --port 8899
ssh -p 443 -R0:localhost:8899 a.pinggy.io
ssh -o StrictHostKeyChecking=no -p 443 -R0:localhost:8899 qr@a.pinggy.io
ssh -o StrictHostKeyChecking=no -p 443 -R0:localhost:1080 qr@a.pinggy.io
ssh -p 443 -R0:localhost:8899 -o ServerAliveInterval=30 -o StrictHostKeyChecking=no -N tcp@a.pinggy.io
ssh -p 443 -R0:localhost:1080 -o ServerAliveInterval=30 -o StrictHostKeyChecking=no -N tcp@a.pinggy.io
pkg update && pkg upgrade -y
pkg reinstall openssh -y
ssh -R 80:localhost:8899 nokey@localhost.run
microsocks -p 1080
ssh -N -T -p 443 -R0:localhost:1080 tcp@a.pinggy.io
ssh -o PreferredAuthentications=publickey -o StrictHostKeyChecking=no -N -T -p 443 -R0:localhost:1080 free@a.pinggy.io
ssh -R 80:localhost:1080 nokey@localhost.run
exit
pkg update && pkg upgrade -y
python --version
pip install proxy.py
proxy --hostname 0.0.0.0 --port 8899
pkg install openssh -y
proxy --hostname 0.0.0.0 --port 8899
pkg install microsocks -y
microsocks -p 1080
exit
ip addr show wlan0
ifconfig
pkg install net-tools
ifconfig
echo "Hello Husen Cloud" > hello.txt
cp /sdcard/Download/photo.jpg ~/cloud
exit
pkg update
pkg install python
python --version
mkdir ~/cloud
cd ~/cloud
echo "Hello Cloud" > test.txt
ls
python -m http.server 8080
exit
go version
protoc --version
find . -name "*.pb.go"
exit
cd ~/grpc-server
ls
grpcurl -plaintext 127.0.0.1:50053 list
evans -r repl -p 50053
exit
ss -ltn | grep 50053
grpcurl -plaintext 127.0.0.1:50053 list
cd ~/grpc-server
go run main.go
exit
ss -tulnp
ps aux
pgrep tmux
pgrep microsocks
pgrep cloudflared
exit
pkg install tmux -y
tmux
microsocks -p 1080
N
tmux ls
ps aux
tmux
tmux kill-server
ps aux
exit
go mod init grpc-server
mkdir hello
nano hello/hello.proto
exit
mkdir grpc-server && cd grpc-server
exit
cloudflared tunnel --url http://localhost:8080
exit
python -m http.server 8080exit
exit
microsocks -p 1080
pkg update && pkg upgrade -y
pkg install golang python microsocks cloudflared tmux curl git -y
pkg install protobuf -y
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
echo 'export PATH=$PATH:$HOME/go/bin' >> ~/.bashrc
source ~/.bashrc
tmux
exit
pkg update -y
pkg install -y tinyproxy privoxy proxychains-ng tsocks
tinyproxy
ip addr show wlan0
ps aux | grep tinyproxy
curl -x http://127.0.0.1:8888 http://example.com
pkill tinyproxy
tinyproxy -d
exit
curl -x http://127.0.0.1:8888 http://example.com
ip addr show wlan0
ifconfig
curl -x http://127.0.0.1:8888 http://example.com
ssh -D 1080 -N localhost
python -m http.server 8080
exit
cloudflared tunnel --url http://localhost:8080
exit
echo "<h1>Hello from Termux</h1>" > index.html
pkg install nginx
pip install flask
pkg install nodejs
pkg install cloudflared
cloudflared tunnel --url http://localhost:8080
nano index.html
python -m http.server 8080
pkill -f http.server
python -m http.server 8080
exit
nano fastapi_app.py
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000
cloudflared tunnel --url http://localhost:5000
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000
exit
cloudflared tunnel --url http://localhost:5000
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000
exit
pip install uvicorn
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000
python fastapi_app.py
nano fastapi_app.py
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000
exit
fastapi_app.py
nano fastapi_app.py
uvicorn fastapi_app:app --reload --host 0.0.0.0 --port 5000
app = FastAPI()
uvicorn fastapi_app:app --reload --host 0.0.0.0 --port 5000
exit
python -m http.server 8080
exit
ip addr show wlan0
ifconfig
wlan0
inet 192.168.43.1
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000 --reload
hostname -I
ip addr show wlan0
ifconfig
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000 --reload
pkg install net-tools
ifconfig
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000 --reload
exit
ip addr show wlan0
nano index.html
pkg install python
python -m http.server 8080
exit
nano fastapi_app.py
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000 --reload
nano index.html
nano fastapi_app.py
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000 --reload
nano fastapi_app.py
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000 --reload
exit
pip install sqlalchemy
nano fastapi_app.py
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000 --reload
exit
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000 --reload
http://10.238.187.71:5000
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000 --reload
nano fastapi_app.py
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000 --reload
exit
nano fastapi_app.py
rm todos.db
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000 --reload
exit
nano index.html
pip install sqlalchemy
nano fastapi_app.py
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000 --reload
nano style.css
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000 --reload
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000
ifconfig
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000
exit
nano fastapi_app.py
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000
nano fastapi_app.py
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000
exit
termux-setup-storage
ls
exit
nano index.html
python -m http.server 8000
exit
nano fastapi_app.py
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000
nano fastapi_app.py
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000 --reload
python -m http.server 8080
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000
python -m http.server 8000
exit
pip install sqlalchemy
nano fastapi_app.py
nano index.html
python -m http.server 8080
nano fastapi_app.py
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000 --reload
nano fastapi_app.py
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000 --reload
nano fastapi_app.py
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000 --reload
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000 --reload
python -m http.server 8000
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000 --reload
uvicorn fastapi_app:app --host 0.0.0.0 --port 8080 --reload
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000 --reload
exit
nano index.html
pip install sqlalchemy
nano fastapi_app.py
nano index.html
nano fastapi_app.py
nano index.html
rm todos.db
nano index.html
pkg install cloudflared
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000
python -m http.server 8000
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000 --reload
python -m http.server 8000
uvicorn fastapi_app:app --host 0.0.0.0 --port 5000 --reload
uvicorn fastapi_app:app --host 0.0.0.0 --port 8080 --reload
python -m http.server 8000
exit
