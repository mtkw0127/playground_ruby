class Car
    def accele(acceletime)
        puts  "$acceletime 秒間加速しました"
    end

    def brake
        puts "brake"
    end
end

class Soarer < Car

    def accele(acceletime)
        super(acceletime)
        puts "sub class accele"
    end


    def openRoof
        puts "open roor"
    end
end

soarer = Soarer.new()
soarer.accele(45)