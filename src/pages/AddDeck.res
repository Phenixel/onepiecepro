@react.component
let make = () => {
  let (deckName, setDeckName) = React.useState(() => "")
  let (selectedColors, setSelectedColors) = React.useState(() => [])
  let allCards = Array.concatMany(DeckData.decks->Array.map(deck => deck.cards))

  let handleColorChange = color => {
    setSelectedColors(currentColors =>
      if (currentColors->Array.includes(color)) {
        currentColors->Array.filter(c => c != color)
      } else {
        currentColors->Array.concat([color])
      }
    )
  }

  let filteredCards = allCards->Array.filter(card =>
    selectedColors->Array.length == 0 || selectedColors->Array.includes(card.color)
  )

  <Layout>
    <div className="home text-center p-8 bg-gray-100">
      <h1 className="text-3xl font-semibold text-gray-800 mb-4">
        {React.string("Ajouter un deck")}
      </h1>
      <form>
        <div className="mb-4">
          <label className="block text-gray-700 text-sm font-bold mb-2" htmlFor="deckName">
            {React.string("Nom du deck")}
          </label>
          <input
            className="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
            id="deckName"
            type_="text"
            value=deckName
            onChange={e => setDeckName(ReactEvent.Form.targetValue(e))}
          />
        </div>
        <div className="mb-4">
          <label className="block text-gray-700 text-sm font-bold mb-2">
            {React.string("Couleurs")}
          </label>
          <div className="flex space-x-4">
            {["Red", "Green", "Blue", "Yellow", "Black"]->Array.map(color =>
              <label key=color className="inline-flex items-center">
                <input
                  type_="checkbox"
                  value=color
                  checked=selectedColors->Array.includes(color)
                  onChange={_ => handleColorChange(color)}
                />
                <span className="ml-2">{React.string(color)}</span>
              </label>
            )}
          </div>
        </div>
      </form>
      <div className="mt-8">
        <h2 className="text-2xl font-semibold text-gray-800 mb-4">
          {React.string("Cartes disponibles")}
        </h2>
        <ul>
          {filteredCards->Array.map(card =>
            <li key=card.id className="mb-2">
              <img src=card.imageUrl alt=card.name className="inline-block h-10 w-auto mr-2" />
              <span>{React.string(card.name)}</span>
            </li>
          )}
        </ul>
      </div>
    </div>
  </Layout>
}