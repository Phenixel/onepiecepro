@react.component
let make = (~slug: string) => {
  let deck = DeckData.decks->Array.find(deck => deck.slug == slug)
  let {isLogged} = LoginContext.useContext()
  <Layout>
    <span> {React.string("isLogged: " ++ (isLogged ? "true" : "false"))} </span>
    {switch deck {
    | Some(deck) =>
      let cards = DeckData.getCardsForDeck(deck.slug)
      <div>
        <h1 className="text-3xl font-bold text-gray-800 mb-4 text-center">
          {React.string(deck.name)}
        </h1>
        <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4 p-4">
          {cards
          ->Array.map(card => <CardDetail card />)
          ->React.array}
        </div>
      </div>
    | None => <p> {React.string("Deck not found")} </p>
    }}
  </Layout>
}