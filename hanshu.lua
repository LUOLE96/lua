a = {p = print}
a.p("hello wolrd")
print=math.sin
a.p(print(math.pi/2))

function foo(x) return 2*x end
foo = function(x) return 2*x end

