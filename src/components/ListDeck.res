@react.component
let make = () => {
  <div className="grid grid-cols-3 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4 p-4 ">
    {DeckData.decks
    ->Array.map(deck => <DeckCard deck />)
    ->React.array}
  </div>
}