
phrase="mississippi"

# Très court première correction
stat1 = { ch: phrase.count(ch) for ch in set(phrase) }
print(stat1)

# Deuxième correction

# création d'un dictionnaire
stat2 = {}
for ch in set(phrase):
    stat2[ch] = phrase.count(ch)

print(stat2)

# Troisièm correction 
stat3 = {}
for ch in set(phrase):
    count = 0
    for letter in phrase:
        if letter == ch:
            count += 1
    stat3[ch] = count

print(stat3)

# Est qu'il y a des i dans la phrase et si oui combien.

2 in [1, 2, 3]

def count_letter(phrase, letter):
    
    if letter == "" or letter not in phrase:
        return None

    return phrase.count(letter)


print(count_letter(phrase, "p"))