@react.component
let make = (~deck: DeckData.deck) => {
  let deckName = React.string(deck.name)
  let deckSlug = React.string(deck.slug)
  let cardCount = React.string(deck.cards->Array.length->Int.toString)

  let handleClick = () => {
    RescriptReactRouter.push("/deck/" ++ deck.slug)
  }

  <div
    className="max-w-sm rounded overflow-hidden shadow-lg bg-white cursor-pointer transition-transform transform hover:scale-105"
    onClick={_ => handleClick()}>
    <div className="p-4">
      <h2 className="text-lg font-semibold text-gray-800"> {deckName} </h2>
      <p className="text-sm text-gray-600">
        {React.string("Deck slug")}
        {deckSlug}
      </p>
      <p className="text-sm text-gray-600">
        {React.string("Nombre de cartes")}
        {cardCount}
      </p>
    </div>
  </div>
}