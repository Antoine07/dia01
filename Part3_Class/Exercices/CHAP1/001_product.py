
class Product:
    tva = .2

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

    def priceTTC(self):

        # On peut également appeler le getter price dans la classe
        return round(self.price * (1 + Product.tva ), 2)

apple = Product(name = "apple")
apple.price = "1.4"

orange = Product(name = "orange")
orange.price = 1.1

# On passe par le setter 
print(apple.price, type(apple.price))

print(apple.priceTTC() + orange.priceTTC())