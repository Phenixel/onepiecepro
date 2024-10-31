@react.component
let make = (~deck: DeckData.deck) => {
  let leaderImage =
    deck.cards
    ->Array.find(card => card.typeCard == CardData.Leader)
    ->Belt.Option.map(leaderCard => leaderCard.imageUrl)
    ->Belt.Option.getWithDefault("default-image-url.jpg") // Utilisez une image par défaut si aucun leader n'est trouvé

  let colorNames =
    deck.cards
    ->Array.find(card => card.typeCard == CardData.Leader)
    ->Belt.Option.map(leaderCard =>
      leaderCard.color
      ->String.split(" ")
    )
    ->Belt.Option.getExn 

  let handleClick = () => RescriptReactRouter.push("/deck/" ++ deck.slug)

  <div
    className="max-w-sm rounded overflow-hidden shadow-lg bg-white cursor-pointer transition-transform transform hover:scale-105 hover:rotate-2"
    onClick={_ => handleClick()}>
    <div className="p-4">
      <img src={leaderImage} alt="Leader Image" className="w-full  mb-4" />
      <h2 className="text-lg font-semibold text-gray-800"> {React.string(deck.name)} </h2>
      <p className="text-sm text-gray-600"> {React.string("Deck slug: " ++ deck.slug)} </p>
      <p className="text-sm text-gray-600"> {React.string("Nombre de cartes: " ++ string_of_int(deck.cards->Array.length))} </p>

      <ColorCard colorNames={colorNames} />
    </div>
  </div>
}
