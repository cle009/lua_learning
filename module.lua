-- 定义一个名为module的模块
module = {}

-- 定义一个变量
module.constant = "this is a constant"

-- 定义一个函数
function module.func1()
	io.write("this is a public function!\n")
end

local function func2()
	print("this is a private function!")
end

function module.func3()
	func2()
end

return module
