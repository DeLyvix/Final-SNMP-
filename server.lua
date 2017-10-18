socket = require('socket')
port = 3030
server = socket.bind('*',port)
io.write("Listening to port "..port.."\n")
sv = server:accept()
io.write("Connection established\n")
while true do
	msg = sv:receive()
	io.write("Message from client> " .. msg .. "\n")
	io.write("Message to client> ")
	sv:send(io.read() .. "\n")

	if msg == "end" then break end
end
io.read()
