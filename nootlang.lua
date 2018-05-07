local output = ""
local data = { 0 }

local function PrintOutput()
	if output == "" then
		return
	end
	
	print(output)
	output = ""
end

local function IncDataTable(amount)
	if amount > #data then
		for i2 = (amount - #data), 0, -1 do
			data[dp + i2] = 0
		end
	end
end

local f = assert(io.open(arg[1], "rb"))
local instructions = f:read("*all")
f:close()

local dp, i = 1, 1
local ignoreAmount = 0
local fs = nil

while i <= #instructions do
	local c = instructions:sub(i, i)
	if c == "n" or c == "N" then
		c = instructions:sub(i, i+3)
		--print(c)
		
		if c == 'nooT' then
			dp = dp + 1
			if dp > #data then
				data[dp] = 0
			end
		elseif c == 'Noot' then
			dp = dp - 1
		elseif c == 'noOT' then
			data[dp] = data[dp] + 1
		elseif c == 'NOot' then
			data[dp] = data[dp] - 1
		elseif c == 'noot' then
			--subscirbe to redfox comms, give a shotout to simpleflips and check ichigo's hot furry mods
			output = output .. string.char(data[dp])
		elseif c == 'NOOt' then
			if data[dp] == 0 then
				while i <= #instructions do
					c = instructions:sub(i, i+3)
					if c == 'nOOT' then
						ignoreAmount = ignoreAmount - 1
						if ignoreAmount <= 0 then
							break
						end
					end
					
					if c == 'NOOt' then
						ignoreAmount = ignoreAmount + 1
					end
					i = i + 4
				end
				
				ignoreAmount = 0
			end
		elseif c == 'nOOT' then
			if data[dp] ~= 0 then
				while i > 0 do
					c = instructions:sub(i, i+3)
					if c == 'NOOt' then
						ignoreAmount = ignoreAmount - 1
						if ignoreAmount <= 0 then
							break
						end
					end
					
					if c == 'nOOT' then
						ignoreAmount = ignoreAmount + 1
					end
					i = i - 4
				end
				
				ignoreAmount = 0
			end
		elseif c == "nOot" then
			IncDataTable(dp + 2)
			data[dp] = data[dp + 1] / data[dp + 2]
		elseif c == "noOt" then
			IncDataTable(dp + 2)
			data[dp] = data[dp + 1] * data[dp + 2]
		elseif c == "NooT" then
			IncDataTable(dp + 2)
			data[dp] = data[dp + 1] | data[dp + 2]
		elseif c == "nOOt" then
			IncDataTable(dp + 2)
			data[dp] = data[dp + 1] & data[dp + 2]
		elseif c == "NoOt" then
			data[dp] = string.byte(fs:read(1))
		elseif c == "NoOT" then
			fs:write(string.char(data[dp]))
		elseif c == "NOoT" then
			PrintOutput()
			print("      .___.")
			print("     /     \\")
			print("    | O _ O |")
			print("    /  \\_/  \\ ")
			print("  .' /     \\ `.")
			print(" / _|  noot |_ \\")
			print("(_/ |  lang | \\_)")
			print("    \\       /")
			print("   __\\_>-<_/__")
			print("   ~;/     \\;~")
			print()
			print("why did I make this?")
			break
		elseif c == "NOOT" then
			if fs == nil then
				local e = dp + data[dp]
				local fn = ""
				
				for dp = dp + 1, e do
					fn = fn .. string.char(data[dp])
				end
				
				dp = e
				fs = io.open(fn, "r+b")
				
				if fs == nil then
					fs = assert(io.open(fn, "wb"))
				end
			else
				fs:close()
				fs = nil
			end
		end
		
		i = i + 4
	else
		print("fineE")
		i = i + 1
	end
end

if fs ~= nil then
	fs:close()
	fs = nil
end

PrintOutput()