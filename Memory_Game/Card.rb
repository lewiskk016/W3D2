class Card

    def initialize(card)
        @card = card.to_symb
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

    




end
