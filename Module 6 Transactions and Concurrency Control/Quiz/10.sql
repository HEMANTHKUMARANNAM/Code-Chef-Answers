-- What is a Data Base
-- Precedence Graph in Transaction Processing
-- A precedence graph is a graphical representation used to depict the dependencies and interactions between transactions in a concurrent database environment. It helps to visualize the order in which transactions perform operations on data items. In a precedence graph:

-- Each transaction is represented by a node.
-- An arrow between two nodes indicates that one transaction depends on the operation of another transaction.
-- A directed edge from Transaction A to Transaction B implies that Transaction A performed a read operation on an item that Transaction B subsequently wrote to.
-- The precedence graph helps in identifying potential conflicts and order of operations among transactions, especially in scenarios where locking mechanisms are used to maintain data consistency.

-- Question
-- What is the equivalent serial schedule for the following transactions?

-- T1          T2          T3
--                        R(Y)
--                        R(Z)
-- R(X)
-- W(X) 
--                        W(Y)
--                        W(Z)
--            W(Z)
-- R(Y)
-- W(Y) 
--            R(Y)
--            W(Y)
--            R(X)
--            W(X)                  
-- Choose the correct option from the right.




Correct Answer:

T3 - T1 - T2