
"""
Une classe doit avoir un rôle unique et des responsabilités limités
"""
class Product:
    
    def __init__(self, name):
        # Attention les setter ne sont pas appelés à l'instanciation de Product
        self._name = name
        self._price = None

    @property
    def price(self):
        return self._price

    @price.setter
    def price(self, value):
        # Un setter permet de vérifier la cohérence des données
        print("SETTER")
        self._price = float(value)

    @price.deleter
    def price(self):
        del self._price

    @property
    def name(self):
        return self._name

    @name.setter
    def name(self, value):
        self._name = str(value)

    @name.deleter
    def name(self):
        del self._name

apple = Product(name = "apple")
apple.price = "1.4"

orange = Product(name = "orange")
orange.price = 1.1

# On passe par le setter 
print(apple.price, type(apple.price))


"""
La responsabilité de cette classe serait d'acheter des produits et de donner le total du prix des produits commandés
Single Responsability
"""
class Cart:
    tva = .2

    def __init__(self):
        self.storage = []

    def buy(self, product):
        pass

    def total(self):
        pass