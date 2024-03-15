-- Question 3
-- Consider the following four schedules due to three transactions (indicated by the subscript) using read and write on a data item x, denoted by r(x) and w(x) respectively. Which one of them is conflict serializable.

-- A. S1: r1(X); r2(X); w1(X); r3(X); w2(X)

-- B. S2: r2(X); r1(X); w2(X); r3(X); w1(X)

-- C. S3: r3(X); r2(X); r1(X); w2(X); w1(X)

-- D. S4: r2(X); w2(X); r3(X); r1(X); w1(X)



Correct Answer:

D
Explanation:
In option D, there is no interleaving of operations. The option D has first all operations of transaction 2, then 3 and finally 1 There can not be any conflict as it is a serial schedule with sequence 2 --> 3 -- > 1