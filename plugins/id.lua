do
function run(msg, matches)
local reply_id = msg['id']
local info = "~Your #Name: "..msg.from.print_name.."\n~Your #Username: @"..msg.from.username.."\n~Your #ID: "..msg.from.id.."\n~Your #Message: "..msg.text.."\n~Your #Phone: +"..msg.from.phone.."\n~SuperGroup #Name: "..msg.to.print_name.."\n~SuperGroup #Id: "..msg.to.id.."\n"
reply_msg(reply_id, info, ok_cb, false)
end

return {
patterns = {
"^[!/#](id)$",
"^([Ii]d)$"
},
run = run
}

end
