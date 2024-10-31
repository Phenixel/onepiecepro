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