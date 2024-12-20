@react.component
let make = () => {
  <Layout>
  <h1 className="text-3xl font-bold text-gray-800 mb-4 text-center">
        {React.string("Inscrivez-vous")}
      </h1>
  // Rendu du composant
  <div className="flex flex-col max-w-md mx-auto mt-20 mb-20" >
    <form className="flex flex-col" >
      <input
        className="mb-4 p-2 border border-gray-300 rounded"
        type_="text"
        placeholder="Nom"
      />
       <input
        className="mb-4 p-2 border border-gray-300 rounded"
        type_="mail"
        placeholder="Email"
      />
      <input
        className="mb-4 p-2 border border-gray-300 rounded"
        type_="password"
        placeholder="Mot de passe"
      />
       <input
        className="mb-4 p-2 border border-gray-300 rounded"
        type_="password"
        placeholder="Confirmation du Mot de passe"
      />
      <button className="p-2 bg-blue-500 text-white rounded  " type_="submit"onClick={_ => RescriptReactRouter.push("/login")}
>
        {React.string("S'inscrire")}
      </button>
    </form>
  </div>
  </Layout>
}