script_name("Flooder")
script_author("Fear Fallen")
script_description("SAMP Flood bot!")
script_dependencies("SAMPFUNCS", "SAMP 0.3.7")
script_moonloader(0.18)
require("lib.moonloader")

function main()
while not isSampAvailable() do wait(0) end
sampAddChatMessage("{32CD32}Flooder {20B2AA}| �����: Fear Fallen", -1)
sampAddChatMessage("{32CD32}Flooder {20B2AA}| /helpflood!", -1)
sampRegisterChatCommand("flbot", flooder)
sampRegisterChatCommand("fldelay", fdelay)
sampRegisterChatCommand("helpflood", helpflood)
while true do
	wait(delay)
	if faqrus == true then
		sampAddChatMessage("{979797}��������� ���� ����: {ff0000}/fldelay - {866e00}�������� ����� | {ff0000}/flbot - {866e00}���", 0xFFFFFF)
		faqrus = false
	end
if fbdelay == true then
	sampAddChatMessage(string.format("{979797}���� {ff0000}��������{979797} ��������� �������� {218734}[Delay: %s]", delay), 0xFFFFFFF)
	fbdelay = false
end
if fbot == true then
	if delay > 0 then
		sampSendChat(string.format("%s", flood))
	else
		sampAddChatMessage(string.format("�������� ������ ��� ����� 0. ��������� � ����� ������� /fldelay"))
	end
end
	end
end

function flooder(param)
	flood = tostring(param)
if fbot then
	fbot = false
else
	fbot = true
end
	end

function fdelay(param)
	delay = tonumber(param)
	if fbdelay then
		fbdelay = false
	else
		fbdelay = true
	end
end

function helpflood(param)
	if faqrus then
		faqrus = false
	else
		faqrus = true
	end
end
