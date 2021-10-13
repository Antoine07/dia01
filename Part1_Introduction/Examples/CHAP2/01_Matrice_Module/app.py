
import Matrix.utils as m

# importer une fonction du module en créant un alias
from Matrix.utils import dimension as d

matrix = [
    [1, 2, 3, 4, 5], 
    [6, 7, 8, 9, 10], 
    [11, 12, 13, 14, 15], 
]

print(d(matrix))