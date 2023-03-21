require "byebug"
require './Card.rb'

class Board
        LIST = ("A".."Z").to_a

    def initialize
        # debugger
        @board = Array.new(4) {Array.new(4)}
    end

    def board
        @board
    end
    # def card
    #     @card = []
    # end

    def populate(card = deck)

        @board.each_with_index do |a, idx1|
            @board.each_with_index do |b, idx2|
                # (0..deck.length).each do |i|
                @board[idx1][idx2] = deck[i]
            end
            end
        end
    end

    def deck(list = LIST)
        samp = list.sample(8)
        deck = samp.concat(samp)
        deck.shuffle.map { |ele| Card.new(ele)}
    end

    def render
    # debugger
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
        @board[row][col] = value
    end


    def won?

    end

    def reveal

    end


end
