

local function add(a, b)
	assert(type(a) == "number", "a is not a number")
	assert(type(b) == "number", "b is not a number")
	return a + b
end

local run1 = false
if run1 then
	add(10)
end

local run2 = false
if run2 then
	pcall(function(i) print(i) end, 33)
	pcall(function(i) print(i) error("error..") end, 33)
end

function f()
	return false, 2
end
local run3 = false
if run3 then
	if f() then
		print("1")
	else
		print("0")
	end
end

function myfunction()
	n = n/nil
end
function myerrorhandler(err)
	print("error: ", err)
end
local run4 = false
if run4 then
	status = xpcall(myfunction, myerrorhandler)
	print(status)
end

