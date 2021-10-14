
class Parser:

    def __init__(self, sep, phrase):
        self.sep = sep
        self.parsed_line = []
        self.phrase = phrase

    def __parse(self):
        """
            '    9007'.isdigit() renvoi False
            '9007'.isdigit() renvoi True
        """
        self.parsed_line = [
            i.strip() for i in self.phrase.split(self.sep) if i.strip().isdigit()
        ]

    """
        Le type de votre fonction spéciale __str__ doit être de type str
    """
    def __str__(self):
        self.__parse()

        return ' '.join(self.parsed_line)
