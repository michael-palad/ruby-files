def fac(n)
    n == 1 ? 1 : n * fac(n-1)
end

t1 = Thread.new{
    0.upto(50) {fac(50); print( "A1 " )}
}

t2 = Thread.new{
    0.upto(50) {fac(50); print( "B2 " )}
}

t3 = Thread.new{
    0.upto(50) {fac(50); print( "C3 " )}
}

t1.priority = -1
t2.priority = -1

sleep(5)