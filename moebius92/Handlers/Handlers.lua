import "Turbine";

AddEventHandler = function(object, event, f)
	if object[event] == nil then
		object[event] = { };
	end

	table.insert(object[event], f);
	return f;
end

RemoveEventHandler = function(object, event, handle)
	if object[event] ~= nil then
		for i = 1, table.getn(object[event]), 1 do
			if object[event][i] == handle then
				table.remove(object[event], i);
				break;
			end
		end
	end
end

Turbine.Chat.handle = 0;
Turbine.Chat.handlers = { };

AddChatHandler = function(f, type, sender)
	local h = Turbine.Chat.handle;

	Turbine.Chat.handle = Turbine.Chat.handle + 1;
	Turbine.Chat.handlers[h] = { ["f"] = f, ["sender"] = sender, ["type"] = type, ["handle"] = h };

	return h;
end

RemoveChatHandler = function(h)
	Turbine.Chat.handlers[h] = nil;
end

function Turbine.Chat.Received(f, args)
	for k, v in pairs(Turbine.Chat.handlers) do
		if (v.sender == nil or args.Sender == v.sender) and
		   (v.type == nil or args.ChatType == v.type) then
			v.f(args.Message, args.Sender, args.ChatType);
		end
	end
end
