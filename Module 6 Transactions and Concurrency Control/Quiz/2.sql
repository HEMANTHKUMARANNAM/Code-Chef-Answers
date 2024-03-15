Correct Answer:

T1->>T3->>T2
Explanation:
T1 can complete before T2 and T3 as there is no conflict between Write(X) of T1 and the operations in T2 and T3 which occur before Write(X) of T1 in the above diagram.

T3 should can complete before T2 as the Read(Y) of T3 doesn’t conflict with Read(Y) of T2. Similarly, Write(X) of T3 doesn’t conflict with Read(Y) and Write(Y) operations of T2.
Another way to solve this question is to create a dependency graph and topologically sort the dependency graph. After topologically sorting, we can see the sequence T1, T3, T2.