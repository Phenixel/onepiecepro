@react.component
let make = () => {
  let {isLogged} = LoginContext.useContext()

  let handleRedirectToLogin = () => {
    RescriptReactRouter.push("/login")
  }

  // Affichage conditionnel du PopUp uniquement si l'utilisateur n'est pas connecté
  if (!isLogged) {
    <PopUp message="Vous devez vous connecter avant" onClose=handleRedirectToLogin />
  } else {
    <Layout>
      <span> {React.string("isLogged: " ++ (isLogged ? "true" : "false"))} </span>
      <div className="home text-center p-8 bg-gray-100">
        <h1 className="text-3xl font-bold text-gray-800 mb-4"> {React.string("Liste des decks")} </h1>
        <p className="text-lg text-gray-600 mb-4">
          {React.string(
            "Retrouvez ici la liste de tous les decks créés par la communauté. Vous pouvez les consulter, ou même créer le votre",
          )}
        </p>
        <button className="p-2 bg-blue-500 text-white rounded mb-2">
          {React.string("Créer un deck")}
        </button>
        <ListDeck />
      </div>
    </Layout>
  }
}

