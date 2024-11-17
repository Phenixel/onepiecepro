%%raw(`import './Home.css'`)

@react.component
let make = () => {
  <Layout
    header={<div className="hero-section">
      <img
        src="public/assets/Thousand Sunny One Piece.jpg" alt="Hero Image" className="hero-image"
      />
      <div className="hero-text">
        <h1 className="text-5xl font-bold text-white mb-4 animate-fade-in">
          {React.string("One Piece CG Pro")}
        </h1>
        <p className="text-lg text-white mb-4 animate-slide-in">
          {React.string(
            "One Piece CG Pro est un site communautaire pour les joueurs de One Piece Card Game. Vous pouvez y créer vos decks, les partager avec la communauté et consulter les decks des autres joueurs.",
          )}
        </p>
      </div>
    </div>}>
    <div className="home text-center p-8 bg-gray-100">
      <ListDeck />
    </div>
  </Layout>
}