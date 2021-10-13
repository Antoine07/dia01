"""
Rappel du fonctionnement du in en Python
"bonjour" in "bonjour tout le monde"
True

"e" in "bonjour tout le monde"
True

"gens" in "bonjour tout le monde"
False

"Bonjour" in "bonjour tout le monde"
False
"""


class Message:

    """
    définit l'initialisateur de la classe les variables de classe
    """

    def __init__(self, message):
        self.message = message

    """
    pour le symbole de l'appartenance in
    """

    def __contains__(self, word):
        print("JE SUIS APPELE QUAND ON FAIT UN IN")

        return word.lower() in self.message.lower()

    def __len__(self):
        message = self.message.replace(":90", "")

        return len(message)

    def __str__(self):
        print(self.message)

    def __add__(self, other):
        return self.message + " " + other.message


m = Message("Bonjour tout le monde:90")
p = Message(", je suis la suite du message")


print("Bonjour" in m)

print(len(m))

print(Message( Message( m + p ) + m )  + p )
