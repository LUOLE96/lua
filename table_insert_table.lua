local js = require("json")

local table1 = {}
local table2 = {}

table1["status"] = 1
table1["type"] = "getCPU"
table2["free"] = 34
table2["total"] = 100

table1["data"] = table2

print("table1:"..js.encode(table1))