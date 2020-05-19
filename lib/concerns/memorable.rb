
module Memorable

    #WRONG BECAUSE Remember that the self keyword is omitted when defining class methods inside modules.
    # def self.reset_all
    #     self.all.clear
    # end

    # def self.count
    #     self.all.count
    #  end

    def reset_all
        self.all.clear
    end

    def count
        self.all.count
    end
end