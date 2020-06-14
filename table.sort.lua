local network={{name="a",ip="123"},
		{name="f",ip="124"},
		{name="b",ip="125"},
		{name="n",ip="126"},
}

table.sort(network,function(a,b) return (a.name < b.name) end)

for k,v in pairs(network) do
	for i,k in pairs(v) do
		print(i,k)
	end
end

names = {"a","b","c"}
grades = {a = 10,b = 7,c = 8}
print(grades["a"])

table.sort(names,function(n1,n2) return grades[n1] > grades[n2] end)

print(names[1],names[2],names[3])