import argparse

import os
import sys

# Create the parser
my_parser = argparse.ArgumentParser(prog='myls',
                                    usage='%(prog)s [options] path',
                                    description='List the content of a folder')

# Add the arguments
my_parser.add_argument('Path',
                       metavar='path',
                       type=str,
                       help='the path to list')

my_parser.add_argument('Test',
                       metavar='test',
                       type=str,
                       help='the test')

my_parser.add_argument('-v',
                       '--verbose',
                       action='store_true',
                       help='an optional argument')

# Execute the parse_args() method
args = my_parser.parse_args()

print(args)

input_path = args.Path

if not os.path.isdir(input_path):
    print('The path specified does not exist')
    sys.exit()

print('\n'.join(os.listdir(input_path)))
