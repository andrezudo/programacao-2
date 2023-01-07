void main() {
  var deck = new Deck();
  deck.shuffle();
  print(deck.cardsWithSuit('Diamonds')); //Whatever variable is passed to print(), print() looks for a corresponding toString()
  //of that variable and then executes it. So, if we define toString() for Deck class, we can emulate
  //any function we want
}

class Deck {
  List<Card> cards = []; //List creation and initialization. If not initialized, it is null
  //List is same as array in JAVA. So, saying List<Card> cards essentially means an array of
  //Card objects with the array variable name as cards
  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten', 'Jack', 'Queen', 'King'];
    var suits = ['Clubs', 'Diamonds', 'Hearts', 'Spades'];
    
    for(var suit in suits) {
      for(var rank in ranks) {
        var card = new Card(rank, suit);
        cards.add(card); //If list not initialized, list becomes null and add() will not work
      }
    }
  }
  
  toString() {
    return cards.toString();
  }
  
  //Shuffles all cards of the deck randomly
  shuffle() {
    cards.shuffle();
  }
  
  //Short form of function syntax. Long form below
  //Returns all cards of a specific suit
  cardsWithSuit(String suit) {
    // => is implicit return
    //Whatever is evaluated on the right is automatically returned to the left
    return cards.where((card) => card.suit == suit);
    //Long form of function syntax
    //return cards.where((card) { 
      //where() needs a method as param, so passed a nameless method which returns a bool value
      //return card.suit == suit;
    //});
  }
}

class Card {
  String rank;
  String suit;
  
  Card(this.rank, this.suit);
  
  toString() {
    return '$rank of $suit';
  }
}