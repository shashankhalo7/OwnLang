from lexer import Lexer
from parser import Parser
import sys

fname = sys.argv[1]
if fname[-4:]!='swap':
    print("Invalid file format")
else:
    with open(fname) as f:
        text_input = f.read()
    lexer = Lexer().get_lexer()
    tokens = lexer.lex(text_input)
    pg = Parser()
    pg.parse()
    parser = pg.get_parser()
    parser.parse(tokens).eval()


