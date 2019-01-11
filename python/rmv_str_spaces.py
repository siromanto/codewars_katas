"""

Simple, remove the spaces from the string, then return the resultant string.
"""


def no_space(x):
    return x.replace(" ", "")

if __name__ == '__main__':
    print(no_space('8 j 8   mBliB8g  imjB8B8  jl  B'))
    print(no_space('8 8 Bi fk8h B 8 BB8B B B  B888 c hl8 BhB fd'))
    print(no_space('8aaaaa dddd r     '))
    print(no_space('jfBm  gk lf8hg  88lbe8 '))