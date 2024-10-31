@react.component
let make = () => {
  let {isLogged} = LoginContext.useContext()
  let (selectedColor, setSelectedColor) = React.useState(() => "")

  // Fonction pour filtrer les decks sur la page principale
  let filteredDecks = DeckData.decks->Array.filter(deck =>
    selectedColor == "" || deck.cards->Array.some(card =>
      card.typeCard == CardData.Leader && card.color->String.includes(selectedColor)
    )
  )

  let handleRedirectToLogin = () => {
    RescriptReactRouter.push("/login")
  }

  if (!isLogged) {
    <PopUp message="Vous devez vous connecter avant" onClose=handleRedirectToLogin />
  } else {
    <Layout>
      <div className="text-center p-8 bg-gray-100">
        <h1 className="text-3xl font-bold text-gray-800 mb-4"> {React.string("Liste des decks")} </h1>
        <div className="flex justify-center mb-4 space-x-2">
          // Boutons pour filtrer par couleur
          {["", "Red", "Green", "Blue", "Yellow", "Pink"]->Array.map(color =>
            <button
              className={`p-2 rounded ${selectedColor == color ? "bg-gray-400" : "bg-gray-200"} hover:bg-gray-300`}
              onClick={_ => setSelectedColor(_ => color)}>
              {React.string(color == "" ? "Tous" : color)}
            </button>
          )->React.array}
        </div>
        <div>
          {filteredDecks->Array.map(deck =>
            <DeckCard deck={deck} key={deck.slug} />
          )->React.array}
        </div>
      </div>
    </Layout>
  }
}
