S = floor(rnorm(100, 5, 10))
print('List of random numbers in normal distribution:')
print(S)
T = table(S)
print("Count occurrences of each value:")
print(T)


movie_data = read.csv(file="Kmedian.csv", header=TRUE, sep=",")
print("Content of the .csv file:")
print(movie_data)


s = c(95, 82, 998.5, 143, 0, -5, -8)
n = c("Sundar", "is an data", "Analysist")
m = c(TRUE, FALSE)
k = c(4+5i, 2+4i)
h = c(95L,533L,14L)
print(s)
print(typeof(s))
print(n)
print(typeof(n))
print(m)
print(typeof(m))
print(k)
print(typeof(k))
print(h)
print(typeof(h))


s = matrix(1:20, nrow=5, ncol=4)
print("5 × 4 matrix:")
print(s)
cells = c(1,4,3,55,9,67,10,15,14)
rnames = c("Row1", "Row2", "Row3")
cnames = c("Col1", "Col2", "Col3")
n = matrix(cells, nrow=3, ncol=3, byrow=TRUE, dimnames=list(rnames, cnames))
print("3 × 3 matrix with labels, filled by rows: ")
print(n)
print("3 × 3 matrix with labels, filled by columns: ")
m = matrix(cells, nrow=3, ncol=3, byrow=FALSE, dimnames=list(rnames, cnames))
print(m)



s =  array(1:30,dim = c(4, 3, 2),dimnames = list(
    c("Col1", "Col2", "Col3", "Col4"),
    c("Row1", "Row2", "Row3"),
    c("matrix1", "matrix2")
  )
)
print(s)


s = c(8, 5, 99, 87)
n = c(25, 9, 67, 55, 10)
m = array(c(s, n),dim = c(3,3,2))
print(m)



s = list(
  c(1, 2, 2, 5, 7, 12),  
  month.abb,
  matrix(c(3, 8, 7, 5), nrow = 2),
  asin
)
print("Content of the list:")
print(s)



plot.new()

plot(1, type="n", xlab="", ylab="", xlim=c(0, 10), ylim=c(0, 10))