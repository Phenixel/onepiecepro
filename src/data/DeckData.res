type deck = {
  slug: string,
  name: string,
  userId: string,
  cardIds: array<string>,
}

let decks: array<deck> = [
  {
    slug: "ST-01",
    name: "Straw Hat Crew",
    userId: "1",
    cardIds: [
      "ST01-001",
      "ST01-002",
      "ST01-003",
      "ST01-004",
      "ST01-005",
      "ST01-006",
      "ST01-007",
      "ST01-008",
    ],
  },
  {
    slug: "ST-02",
    name: "Worst Generation",
    userId: "official",
    cardIds: [
      "ST02-001",
      "ST02-002",
      "ST02-003",
      "ST02-004",
      "ST02-005",
      "ST02-006",
      "ST02-007",
      "ST02-008",
      "ST02-009",
      "ST02-010",
      "ST02-011",
      "ST02-012",
      "ST02-013",
      "ST02-014",
      "ST02-015",
      "ST02-016",
      "ST02-017",
    ],
  },
  {
    slug: "ST-19",
    name: "Black Smoker",
    userId: "official",
    cardIds: [
      "ST19-001",
      "ST19-002",
      "ST19-003",
      "ST19-004",
      "ST19-005",
      "ST19-006",
      "ST19-007",
      "ST19-008",
    ],
  },
  {
    slug: "ST-20",
    name: "Yellow Charlotte Katakuri",
    userId: "official",
    cardIds: [
      "ST20-001",
      "ST20-002",
      "ST20-003",
      "ST20-004",
      "ST20-005",
      "ST20-006",
      "ST20-007",
      "ST20-008",
    ],
  },
  {
    slug: "ST-16",
    name: "Green Uta",
    userId: "official",
    cardIds: ["ST16-001", "ST16-002", "ST16-003", "ST16-004"],
  },
  {
    slug: "ST-17",
    name: "Blue Donquixote Doflamingo",
    userId: "official",
    cardIds: ["ST17-001", "ST17-002", "ST17-003", "ST17-004"],
  },
]

open CardData

let getCardsForDeck = (deckSlug: string): array<card> => {
  let deck = decks->Array.find(d => d.slug == deckSlug)
  switch deck {
  | Some(deck) =>
    deck.cardIds->Array.map(cardId => cards->Array.find(card => card.id == cardId)->Option.getExn)
  | None => []
  }
}

let getLeaderImage = (deckSlug: string): string => {
  let deck = decks->Array.find(d => d.slug == deckSlug)
  switch deck {
  | Some(deck) =>
    deck.cardIds
    ->Array.map(cardId => cards->Array.find(card => card.id == cardId)->Option.getExn)
    ->Array.find(card => card.typeCard == Leader)
    ->Option.map(leaderCard => leaderCard.imageUrl)
    ->Option.getOr("default-image-url.jpg")
  | None => "default-image-url.jpg"
  }
}

let getDeckByUser = (userId: string): array<deck> => {
  decks->Array.filter(deck => deck.userId == userId)
}