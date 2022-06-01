# 全てprivateの変数になる
class Car
    def initialize(carname)
        @name = carname
    end

    def dispName
        puts @name
    end

end

car = Car.new("crown")
car.dispName
# 以下のコードは参照できないためエラー。nameというメソッドは存在しないとなる
# puts car.name

# アクセスメソッドを利用すると外部から変数へのアクセスを定義できる
class Car2
    attr_reader :name
    def initialize(carname)
        @name = carname
    end
end
car2 = Car2.new("prius")
puts car2.name

# 定数
class Reji
    # 大文字のものは定数になる
    SHOUHI_ZEI = 0.05
    def initialize(init=0)
        @sum = init
    end

    def buy(price)
        @sum += price
    end

    def sum
        return @sum * ( 1 + SHOUHI_ZEI)
    end
end

reji = Reji.new()
reji.buy(100)
reji.buy(200)
puts reji.sum
puts Reji::SHOUHI_ZEI