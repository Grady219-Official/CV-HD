/// @description Insert description here
// You can write your code in this editor
global.client = network_create_socket(network_socket_udp)
global.ip = "127.0.0.1"
global.port = 8080


enum msgType
{
	CREATE_HOST,
	JOIN_HOST,
	STOP_HOST,
	SET_PLAYER_STAT
}