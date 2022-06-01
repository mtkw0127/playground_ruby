# next if
# 偶数の場合は飛ばす
for x in 1...11
    next if x.even?
    p x
end