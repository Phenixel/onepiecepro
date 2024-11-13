@react.component
let make = () => {
  let (selectedLeader, setSelectedLeader) = React.useState(() => None)
  let (selectedCards, setSelectedCards) = React.useState(() => [])
  let allCards = CardData.cards
  let (filteredCards, setFilteredCards) = React.useState(() => allCards)

  let handleLeaderChange = leaderId => {
    let leader = allCards->Array.find(card => card.id == leaderId)
    setSelectedLeader(_ => leader)
    switch leader {
    | Some(leader) =>
      setFilteredCards(_ => allCards->Array.filter(card => card.color == leader.color))
    | None => setFilteredCards(_ => allCards)
    }
  }

  let handleCardClick = cardId => {
    setSelectedCards(currentCards => {
      if currentCards->Array.includes(cardId) {
        currentCards->Array.filter(id => id != cardId)
      } else {
        [cardId, ...currentCards]
      }
    })
  }

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
          />
        </div>
        <div className="mb-4">
          <label className="block text-gray-700 text-sm font-bold mb-2" htmlFor="leader">
            {React.string("Choisir un leader")}
          </label>
          <select
            className="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
            id="leader"
            onChange={e => handleLeaderChange(e->ReactEvent.Form.target##value)}
          >
            <option value=""> {React.string("Sélectionner un leader")} </option>
            {allCards
            ->Array.filter(card => card.typeCard == CardData.Leader)
            ->Array.map(leader =>
              <option value={leader.id}>
                {React.string(leader.name ++ " (" ++ leader.color ++ ")")}
              </option>
            )
            ->React.array}
          </select>
        </div>
      </form>
      <div className="mt-8">
        <h2 className="text-2xl font-semibold text-gray-800 mb-4">
          {React.string("Cartes disponibles")}
        </h2>
        <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4 p-4">
          {filteredCards
          ->Array.map(card => {
            let isSelected = selectedCards->Array.includes(card.id)
            <div
              className={`card-container cursor-pointer ${isSelected ? "selected" : ""}`}
              onClick={_ => handleCardClick(card.id)}>
              <CardDetail card />
            </div>
          })
          ->React.array}
        </div>
      </div>
    </div>
  </Layout>
}