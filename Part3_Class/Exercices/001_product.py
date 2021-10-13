
class Product:
    tva = .2

    def __init__(self, price, name):
        self._price = price
        self._name = name

    @property
    def price(self):
        return self._price

    @price.setter
    def price(self, value):
        # Un setter permet de vérifier la cohérence des données
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

