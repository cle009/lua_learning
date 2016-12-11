
-- 初始化表
mytable = {}

-- 指定值
mytable[1] = "Lua"

-- 移除引用
mytable = nil
-- lua垃圾回收会释放内存

mytable = {}
-- 简单的table
print("mytable's type is ", type(mytable))

mytable[1] = "Lua"
mytable["wow"] = "pre edit"
print("mytable index 1 is ", mytable[1])
print("mytable index wow is ", mytable["wow"])

-- alternatetable和mytable是指同一个table
alternatetabable = mytable

print("alternatetabable index 1 is ", alternatetabable[1])
print("alternatetabable index wow is ", alternatetabable["wow"])

alternatetabable["wow"] = "after edit"

print("mytable index wow is ", mytable["wow"])

-- 释放变量
alternatetabable = nil
print("alternatetabable is ", alternatetabable)

-- mytable仍然可以访问
print("mytable index wow is ", mytable["wow"])

mytable = nil
print("mytable is ", mytable)

-- concat

fruits = {
	"banana",
	"orange",
	"apple"
}
-- 返回table连接后的字符串
print("after concat string is ", table.concat(fruits))
-- 指定连接字符
print("after concat(point sep) string is ", table.concat(fruits, ", "))
-- 指定索引来连接table
print("after concat(point index) string is ",
	table.concat(fruits, ", ", 2, 3))

-- insert and remove

-- 在末尾插入
table.insert(fruits, "mango")
print("index 4 is ", fruits[4])
-- 在索引为2的键外插入
table.insert(fruits, 2, "grapes")
print("index 2 is ", fruits[2])
print("last is ", fruits[5])
table.remove(fruits)
print("remove last is ", fruits[5])

-- sort

fruits = {"banana", "orange", "apple", "grapes"}
print("pre sort")
for k, v in ipairs(fruits)
do
	print(k, v)
end

table.sort(fruits)
print("after sort")
for k, v in ipairs(fruits)
do
	print(k, v)
end

-- max

function table_maxn(t)
	local mn = 0
	for k, v in pairs(t)
	do
		if mn < k then
			mn = k
		end
	end
	return mn
end
tbl = {
	[1] = "a",
	[2] = "b",
	[3] = "c",
	[26] = "z"
}
print("tbl length is ", #tbl)
print("tbl max value is ", table_maxn(tbl))






