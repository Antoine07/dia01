

class C:

    def __init__(self, *A):
        print(A)
        for p in A:
            print(p)

a = C(1,2,3,4)


class D:

    def __init__(self, **B):
        
        print(B)

a = D(a =1, b= 2, c= 3, d= 4)
