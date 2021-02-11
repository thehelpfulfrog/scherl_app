module ApplicationHelper

    def get_num
        num = rand(1..4999)
        if (num < 10)
            num = "00" + num.to_s
        elsif (num < 100)
            num = "0" + num.to_s
        end
        return num
    end
end
