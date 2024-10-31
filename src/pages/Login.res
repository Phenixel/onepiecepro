@react.component
let make = () => {
  let {login, isLogged} = LoginContext.useContext()
  let (username, setUsername) = React.useState(() => "")
  let (password, setPassword) = React.useState(() => "")
  let (showError, setShowError) = React.useState(() => false)
  Console.log(isLogged ? "true" : "false")
  let handleSubmit = (event: ReactEvent.Form.t) => {
    ReactEvent.Form.preventDefault(event)

    if (login(username, password)) {
      RescriptReactRouter.push("/")
    } else {
      setShowError(_=>true) // Affiche le pop-up si les identifiants sont invalides
      Js.log("Invalid credentials")
    }
  }

  let handleUsernameChange = event => setUsername(ReactEvent.Form.target(event)["value"])
  let handlePasswordChange = event => setPassword(ReactEvent.Form.target(event)["value"])

  <Layout>
    <h1 className="text-3xl font-bold text-gray-800 mb-4 text-center">
      {React.string("Connectez-vous")}
    </h1>
{showError ? (
  <div className="fixed top-0 left-0 w-full h-full flex items-center justify-center bg-black bg-opacity-50">
    <div className="bg-white p-6 rounded shadow-lg text-center">
      <h2 className="text-xl font-bold text-red-600 mb-4">
        {React.string("Erreur de connexion")}
      </h2>
      <p className="text-gray-700 mb-4">
        {React.string("Nom d'utilisateur ou mot de passe incorrect.")}
      </p>
      <button
        className="p-2 bg-blue-500 text-white rounded"
        onClick={_event => setShowError(_ => false)}
      >
      
        {React.string("Fermer")}
      </button>
    </div>
  </div>
) : React.null}


    <div className="flex flex-col max-w-md mx-auto mt-20 mb-20">
      <form className="flex flex-col" onSubmit=handleSubmit>
        <input
          className="mb-4 p-2 border border-gray-300 rounded"
          type_="text"
          placeholder="Nom"
          value=username
          onChange=handleUsernameChange
        />
        <input
          className="mb-4 p-2 border border-gray-300 rounded"
          type_="password"
          placeholder="Mot de passe"
          value=password
          onChange=handlePasswordChange
        />
        <button className="p-2 bg-blue-500 text-white rounded" type_="submit">
          {React.string("Login")}
        </button>
      </form>
    </div>
  </Layout>
}
