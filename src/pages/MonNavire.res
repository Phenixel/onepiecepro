@react.component
let make = () => {
  let {currentUser, isLogged} = LoginContext.useContext()

  switch (isLogged, currentUser) {
  | (false, _) =>
    // Redirection vers la page de connexion si l'utilisateur n'est pas connecté
    {
      RescriptReactRouter.push("/signin")
      React.null
    }
  | (true, None) =>
    // Affichage d'un message de chargement si les données utilisateur ne sont pas disponibles
    <div className="text-center mt-8">
      <p className="text-gray-700 font-medium">
        {React.string("Chargement des données utilisateur...")}
      </p>
    </div>
  | (true, Some(user)) =>
    // Affichage des informations utilisateur et de leurs decks
    <div className="container mx-auto p-4">
      <h1 className="text-3xl font-bold text-gray-800 mb-4">
        {React.string("Bienvenue, " ++ user.name)}
      </h1>
      <h2 className="text-xl font-semibold text-gray-700 mb-4">
        {React.string("Vos decks :")}
      </h2>
      {
        user.decks->Belt.Array.length === 0
        ? (
            <p className="text-gray-500">
              {React.string("Vous n'avez aucun deck.")}
            </p>
          )
        : (
            <ul className="mt-4 space-y-4">
              {
                user.decks
                ->Belt.Array.map(deck =>
                  <li
                    key=deck.slug
                    className="p-4 border rounded shadow-md hover:shadow-lg transition-shadow"
                  >
                    <h3 className="text-2xl font-semibold">
                      {React.string(deck.name)}
                    </h3>
                    <p>
                      {React.string("Identifiant : " ++ deck.slug)}
                    </p>
                    <p>
                      {React.string(
                        "Nombre de cartes : " ++ string_of_int(Belt.Array.length(deck.cards))
                      )}
                    </p>
                    {
                      deck.cards->Belt.Array.get(0)
                      ->Belt.Option.map(card =>
                        <img
                          src=card.imageUrl
                          alt={"Image du deck " ++ deck.name}
                          className="w-full h-32 object-cover rounded mt-2"
                        />
                      )
                      ->Belt.Option.getWithDefault(React.null)
                    }
                  </li>
                )
                ->React.array // Transformation de la liste en un élément React
              }
            </ul>
          )
      }
    </div>
  }
}
