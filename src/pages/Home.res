@react.component
let make = () => {
  <Layout>
    <div className="home">
      <h1> {React.string("Bienvenue sur One Piece CG Pro")} </h1>
      <p>
        {React.string(
          "One Piece CG Pro est un site communautaire pour les joueurs de One Piece Card Game. Vous pouvez y créer vos decks, les partager avec la communauté et consulter les decks des autres joueurs.",
        )}
      </p>
      <p>
        {React.string(
          "Pour commencer, vous pouvez vous connecter ou créer un compte pour accéder à votre espace personnel.",
        )}
      </p>
      <ListDeck />
    </div>
  </Layout>
}