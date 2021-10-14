
import re


class HasCap:

    def __init__(self, phrase, sanitize=lambda p: re.sub(r"[^\w\s]", "", p, flags=re.IGNORECASE)):
        self.phrase = sanitize(phrase)

    def parse(self):
        
        return {
            w : self.phrase.count(w)  for w in self.phrase.split() if w[0].isupper()
        }

"""

Dataset

"""

phrase = "Le langage Python est placé sous une licence libre proche de la licence BSD6 et fonctionne sur la plupart des plates-formes informatiques, des smartphones aux ordinateurs centraux7, de Windows à Unix avec notamment GNU/Linux en passant par macOS, ou encore Android, iOS, et peut aussi être traduit en Java ou .NET. Il est conçu pour optimiser la productivité des programmeurs en offrant des outils de haut niveau et une syntaxe simple à utiliser. Python Python."

hascap = HasCap(phrase)

print(hascap.parse())