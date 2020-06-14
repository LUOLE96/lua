co = coroutine.create(
	function(a,b)
		print(a+b)
		print(coroutine.status(co))
		print(a+b)
		print(a-b)
		print(coroutine.running())
		return a%b,a/b+1
	end
)

print(coroutine.status(co))
res1,res2,res3 = coroutine.resume(co,10,40)
print(res1,res2,res3)

print(coroutine.status(co))
print("t am here")

