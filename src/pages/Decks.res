%%raw(`import './Decks.css'`)

@react.component
let make = () => {
  <Layout
    header={<div className="hero-section max-h-80">
      <img
        src="public/assets/One Piece wallpaper.jpg" alt="Hero Image" className="hero-image-decks"
      />
      <div className="hero-text">
        <h1 className="text-5xl font-bold text-white mb-4 animate-fade-in">
          {React.string("Liste des decks")}
        </h1>
        <p className="text-lg text-white mb-4 animate-slide-in">
          {React.string(
            "Retrouvez ici la liste de tous les decks créés par la communauté. Vous pouvez les consulter, ou même créer le votre",
          )}
        </p>
        <button className="p-2 bg-blue-500 text-white rounded mb-2">
          {React.string("Créer un deck")}
        </button>
      </div>
    </div>}>
    <div className="home text-center p-8 bg-gray-100">
      <ListDeck />
    </div>
  </Layout>
}
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
          {["Red", "Green", "Blue", "Yellow", "Pink"]->Array.map(color => {
            let borderClass = selectedColors->Array.includes(color) ? "border-4 border-gray-400" : ""
            <button
              className={`p-2 rounded-full w-8 h-8 ${borderClass}`}
              onClick={_ => handleColorClick(color)}>
              <span className={`inline-block w-full h-full rounded-full ${color == "Red" ? "bg-red-500" : color == "Green" ? "bg-green-500" : color == "Blue" ? "bg-blue-500" : color == "Yellow" ? "bg-yellow-500" : "bg-pink-500"}`} />
            </button>
          })->React.array}
        </div>
        <div className="grid grid-cols-3 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4 p-4">
          {filteredDecks->Array.map(deck =>
            <DeckCard deck={deck} key={deck.slug} />
          )->React.array}
        </div>
      </div>
    </Layout>
  }
}
