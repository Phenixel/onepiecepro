@react.component
let make = () => {
  <Layout>
    <h1>  {React.string("Page de Connexion")} </h1>
  // Rendu du composant
  <div className="flex flex-col max-w-md mx-auto">
    <form className="flex flex-col" >
      <input
        className="mb-4 p-2 border border-gray-300 rounded"
        type_="text"
        placeholder="Nom"
      />
      <input
        className="mb-4 p-2 border border-gray-300 rounded"
        type_="password"
        placeholder="Mot de passe"
      />
      <button className="p-2 bg-blue-500 text-white rounded" type_="submit">
        {React.string("S'inscrire")}
      </button>
    </form>
  </div>
  </Layout>
}
