class Board
        LIST = ("A".."Z").to_a

    def initilize(card)
        @board = Array.new(5) {Array.new(5)}
    end

    # def card
    #     @card = []
    # end

    def populate(deck)
        @board.length.times do |a|
            @board[0].length.times do |b|
                @board[a][b] = deck.shift
            end
        end
    end

    def deck(list = LIST)
        samp = list.sample(8)
        deck = samp.concat(samp).shuffle
        deck.map { |ele| Card.new(ele)}
    end

    def render

    end

    def won?

    end

    def reveal

    end

    def print
        @board.each do |row|
            puts row.join(" ")
        end
    end

    def [](position)
        row, col = position
        @board[row][col]
    end

    def []=(position, value)
        row, col = position
        self[position] = value
    end




end
