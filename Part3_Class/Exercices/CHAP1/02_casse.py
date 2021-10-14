

class Message:

    def __init__(self, message):
        self.message = message

    def __contains__(self, word):

        assert len(self.message) > 0

        return word in self.message


class Message_Formated(Message):
  
    def __contains__(self, word):

        assert len(self.message) > 0

        return word.lower() in self.message.lower()

m = Message("Bonjour tout le monde")

print("Bonjour" in m)
print("bonjour" in m)

mF = Message_Formated("Bonjour tout le monde")

print("Bonjour" in mF)
print("bonjour" in mF)
