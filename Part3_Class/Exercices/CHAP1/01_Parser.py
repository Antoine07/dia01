
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

    def __str__(self):
        
        return self.__parse()