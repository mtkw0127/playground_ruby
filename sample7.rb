# Rubyはメソッドの最後の処理の値が戻り値となる
def exit_return
    return "1"
end

def not_exit_return
    "1"
end

p exit_return
p not_exit_return