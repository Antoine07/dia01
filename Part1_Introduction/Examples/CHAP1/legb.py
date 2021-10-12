
# Variables gloables
"""
Définition des variables dans le script

LEGB 
"""

# G espace global
a = 101
b = 22

def foo():
    b = 1
    # E englobant puis il remonte
    def baz():
        # Python b regarde localement L
        print(b)
        print(a)

    baz()

print( foo() )

# Dans cet espace d'autres variables définies elles peuvent bien sûr dans l'espace de ce script être re-définie
import builtins

# On écrase la définition de print chose à ne pas faire 
print = 1