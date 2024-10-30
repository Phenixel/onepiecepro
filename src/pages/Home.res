@react.component
let make = () => {
  let {isLogged} = LoginContext.useContext()
  <Layout>
    <span> {React.string("isLogged: " ++ (isLogged ? "true" : "false"))} </span>
    <div className="home text-center p-8 bg-gray-100">
      <h1 className="text-3xl font-bold text-gray-800 mb-4">
        {React.string("Bienvenue sur One Piece CG Pro")}
      </h1>
      <p className="text-lg text-gray-600 mb-4">
        {React.string(
          "One Piece CG Pro est un site communautaire pour les joueurs de One Piece Card Game. Vous pouvez y créer vos decks, les partager avec la communauté et consulter les decks des autres joueurs.",
        )}
      </p>
      <p className="text-lg text-gray-600 mb-8">
        {React.string(
          "Pour commencer, vous pouvez vous connecter ou créer un compte pour accéder à votre espace personnel.",
        )}
      </p>
      <ListDeck />
    </div>
  </Layout>
}