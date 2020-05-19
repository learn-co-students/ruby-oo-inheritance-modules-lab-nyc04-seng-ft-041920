
module Findable

    def find_by_name(name)
        self.all.detect{|ele| ele.name == name}
    end

end