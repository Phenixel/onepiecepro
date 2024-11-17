open DeckData

type user = {
  id: string, 
  name: string, 
  password: string, 
  decks: array<deck>, 
}

let users: array<user> = [
  {
    id: "1",
    name: "user",
    password: "user",
    decks: decks->Belt.Array.keep(deck => deck.userId == "1"),
  },
  {
    id: "2",
    name: "Jane Smith",
    password: "securePass",
    decks: decks->Belt.Array.keep(deck => deck.userId == "2"),
  },
]
