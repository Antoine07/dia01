
l = [1, 3, 7, 8, 9, 1, 2, 3, 8, 1, 2, 3, 7, 8, 9, 1, 2, 3, 8, 10, 1, 2, 3]
seq = [1, 2, 3]

# #
# j = 0
# # i  indice
# for i, e in enumerate(l):

#     if e in seq:
#         j += 1
#     else:
#         j = 0

#     if j == len(seq):
#         print("position", i - j + 1)


# Première version 
def search_word(l, seq):
    j = 0
    for i, e in enumerate(l):
        if e in seq:
            j += 1
        else:
            j = 0

        if j == len(seq):
            return i - j + 1


def search_word2(l, seq):
    for i in range(1 + len(l) - len(seq)):
        j = 0
        while j < len(seq) and seq[j] == l[i + j]:
            j += 1

        if j == len(seq):
            return i

    return None


def search_words(l, seq):
    res = []
    for i in range(1 + len(l) - len(seq)):
        j = 0
        while j < len(seq) and seq[j] == l[i + j]:
            j += 1

        if j == len(seq):
            res.append(i)

    return res

print(search_words(l, seq))


# Slicing

print( [ i for i in range(len(l) - len(seq) + 1) if l[i:(i+len(seq))] == seq ] )
