"""
p.34
ペア和のk以上の最小値を探す
"""

n, k = map(int,input().split())
a = list(map(int,input().split))
b = list(map(int,input().split))
min_value = 1000000000

for x in a:
    for y in b:
        tmp = x + y 
        if x + y >= k:
            if min_value >= tmp:
                min_value = tmp

print(min_value)

