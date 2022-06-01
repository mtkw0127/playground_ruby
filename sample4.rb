#シンボル（重複を許さない）、処理内で１つだけ
#文字列より使いやすい存在？
sym = :symbol

#シンボルをキーにしたハッシュ
#Mapのキーは重複を許さないため、シンボルと相性がよく共に利用される
hash1 = {:key => "test"}
hash2 = {"key" => "test"} 

#非キーワード引数
#def sum(arg1, arg2)
#    return arg1 + arg2
#end
#p sum(1, 2)

#キーワード引数
def sum(arg1:, arg2:)
    return arg1 + arg2
end
p sum(arg1: 1, arg2: 2)