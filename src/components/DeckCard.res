@react.component
let make = (~deck: DeckData.deck) => {
  let deckName = React.string(deck.name)
  let deckSlug = React.string(deck.slug)
  let cardCount = React.string(deck.cards->Array.length->Int.toString)

  // Trouver la couleur de la carte de type Leader
  let colorClass = 
    switch deck.cards->Array.find(card => card.typeCard == CardData.Leader) {
    | Some(leaderCard) =>
      switch leaderCard.color {
      | "Red" => "bg-red-500"
      | "Green" => "bg-green-500"
      | "Blue" => "bg-blue-500"
      | "Yellow" => "bg-yellow-500"
      | _ => "bg-gray-500" 
      }
    | None => "bg-gray-500" 
  }

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
      <p className="text-sm text-gray-600 flex items-center">
        <span className={`inline-block w-3 h-3 rounded-full ml-2 ${colorClass}`} />
      </p>
    </div>
  </div>
}
