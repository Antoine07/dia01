class Hello:
    """A simple example class"""
    message = "Hello World"

    def getMessage(self):
        return self.message


# Création de l'instance de la classe Hello
h = Hello()

# Accès à la méthode
print(h.getMessage())


# Attributs privés convention en Python on préfixe par _ et on crée des setter et getter
class Model:

    def __init__(self, tableName):
        self._tableName = tableName

    def getTableName(self):
        return self._tableName

    def setTableName(self, tableName):
        self._tableName = tableName
