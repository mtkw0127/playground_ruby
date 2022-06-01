# TOPレベルのクラスはObjectでありこの処理はObjectmainを参照している
puts self
puts self.class

# TOPレベルのクラスに定義されたメソッドはKernelに組み込まれprintメソッドのような組み込み関数になる
def printHello
    puts "Hello\n"
end
printHello

# 引数ありメソッド
def printHelloTo(name)
    puts "Hello," + name
end
printHelloTo("前島さん")

# メソッドは参照渡し
def englishCityName(address)
    address << "Tokyo"
end

address = "東京"
englishCityName(address)
puts address

# 配列を渡す
def concatStr(*names)
    concated = ""
    for name in names do
        concated << name
    end
    return concated
end

puts concatStr("a", "b", "c")

# 複数return value
def returnSomeValue
    return "a", 1
end

puts returnSomeValue
for val in returnSomeValue do
    puts val
end