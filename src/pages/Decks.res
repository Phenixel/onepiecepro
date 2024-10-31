@react.component
let make = () => {
  let {isLogged} = LoginContext.useContext()
  let (selectedColors, setSelectedColors) = React.useState(() => [])

  // Fonction pour filtrer les decks sur la page principale
  let filteredDecks = DeckData.decks->Array.filter(deck =>
    selectedColors->Array.length == 0 || deck.cards->Array.some(card =>
      card.typeCard == CardData.Leader && selectedColors->Array.some(color => card.color->String.includes(color))
    )
  )

  let handleColorClick = (color) => {
    setSelectedColors(currentColors => {
      if (currentColors->Array.includes(color)) {
        // Retirer la couleur si elle est déjà sélectionnée
        currentColors->Array.filter(c => c != color)
      } else if (currentColors->Array.length < 2) {
        // Ajouter la couleur si moins de 2 sont sélectionnées
        [color, ...currentColors]
      } else {
        // Si déjà 2 couleurs, ne rien faire ou gérer comme nécessaire
        currentColors
      }
    })
  }

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
          {["", "Red", "Green", "Blue", "Yellow", "Pink"]->Array.map(color =>
            <button
              className={`p-2 rounded ${selectedColors->Array.includes(color) ? "bg-gray-400" : "bg-gray-200"} hover:bg-gray-300`}
              onClick={_ => handleColorClick(color)}>
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
