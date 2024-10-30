@react.component
let make = (~slug: string) => {
  let deck = DeckData.decks->Array.find(deck => deck.slug == slug)

  <Layout>
    {switch deck {
    | Some(deck) =>
      <div>
        <h1> {React.string(deck.name)} </h1>
        <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4 p-4">
          {deck.cards
          ->Array.map(card => <CardDetail card />)
          ->React.array}
        </div>
      </div>
    | None => <p> {React.string("Deck not found")} </p>
    }}
  </Layout>
}