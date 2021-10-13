import re


phrase = "Le langage Python est placé sous une licence libre proche de la licence BSD6 et fonctionne sur la plupart des plates-formes informatiques, des smartphones aux ordinateurs centraux7, de Windows à Unix avec notamment GNU/Linux en passant par macOS, ou encore Android, iOS, et peut aussi être traduit en Java ou .NET. Il est conçu pour optimiser la productivité des programmeurs en offrant des outils de haut niveau et une syntaxe simple à utiliser."


# le troisième paramètre permet d'ignorer la case
# dans des crochets cela signifie tout ce qui n'est pas un mot ou un espace sera remplacé par une chaîne de caractère vide

sanitize = lambda p : re.sub(r"[^\w\s]", "", p, flags=re.IGNORECASE)


def average_words(phrase, precision = 2):
    phrase = sanitize(phrase).split()

    assert len(phrase) > 0

    return  round( sum( len(w) for w in phrase ) / len(phrase) , precision ) 

print( average_words(phrase))


# 2 étude de la fréquence des mots/particules
def freqWord(phrase):
    phrase = sanitize(phrase).split()
    phrase = map(str.lower, phrase)
    stat = {}

    for w in phrase:
        if w in stat:
            stat[w] += 1
        else:
            stat[w] = 1

    return stat

print(freqWord(phrase))
stats = freqWord(phrase)
print(max(stats, key=stats.get))
print(stats.get('des'))