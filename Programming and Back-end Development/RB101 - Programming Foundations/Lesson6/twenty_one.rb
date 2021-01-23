# Rules of twenty-one

# Start with a 52 deck of cards, consisting of 4 suits (hearts, diamonds, clubs and spades) and 
# 13 values (2,3,4,5,6,7,8,9,10,jack,queen,king,ace).

# The goal of twenty-one is to get as close to 21 as possible but never going over. If you go over 21 you are 
# bust and lose the game.

# There are two players, the dealer and player. The dealer shuffles the cards so they are in a random order.
# Both participants are given 2 cards, the player can see their two cards but can only see one of the dealer's cards.

# Cards values consist of the obvious, 2 to 10. Jack, Queen and King are worth 10 however Ace can be worth 1 OR 11.
# The value of the ace is determined at the time the card is drawn, 11 if the value doesn't go exceed 21
# otherwise the value is 1. The value of the ace doesn't neccessarily stay the same, it depends on the hand.

# Players goes first, they can hit or stay.

# Hit = take another card, bust if over 21.

# Stay = Player keeps current cards.

# Dealer goes after player stays, dealer must hit until total is >= 17. If dealer busts player wins.

# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

# Deck to be contained in an array containing nested hashes which represent the card.
# e.g. [{value: 3, class: 'diamonds'}]