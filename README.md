# Proyecto compiladores - Analizador Sintactico

Manejo de Errores
El analizador hace un escaneo de lexico, si encuentra un error, se crea un token error, luego en el analisis sintactico, por medio de comparaciones se analizan los tokens. Se tiene una funcion que detecta si un token es de tipo error, esto activa una bandera general para indicar que la sentencia actual tiene o no error, esta misma bandera se activa cada vez que el archivo no coincida con la gramatica y se imprime en la consola, ignorando todos los tokens hasta llegar a un ";" o un "GO".
