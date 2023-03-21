require 'byebug'
class Card

    attr_reader :val

    def initialize(val)
        @val = val.to_sym
        @visible = false
    end

    def visible
        @visible
    end

    def hide
        @visible - false
    end

    def reveal
        @visible = true
    end

    def to_s
        if self.visible
            return @val.to_s
        else
           return "_"
        end
    end

    def ==(card)
        if @val == card.val
            return true
        end
        false
    end






end
