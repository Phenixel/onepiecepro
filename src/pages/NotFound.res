@react.component
let make = (~errorType) => {
  let errorMessage = switch errorType {
  | #notFound => "La page que vous cherchez n'existe pas."
  | #serverError => "Une erreur de serveur s'est produite."
  | #unauthorized => "Vous n'êtes pas autorisé à accéder à cette page."
  | _ => "Une erreur inconnue s'est produite."
  }

  <Layout>
    <div className="flex items-center justify-center min-h-80">
      <div className="text-center">
        <h1 className="text-6xl font-bold text-gray-800 mb-4"> {React.string("Erreur")} </h1>
        <p className="text-2xl text-gray-600 mb-8"> {React.string(errorMessage)} </p>
        <a href="/" className="text-blue-500 hover:text-blue-700">
          {React.string("Retour à l'accueil")}
        </a>
      </div>
    </div>
  </Layout>
}