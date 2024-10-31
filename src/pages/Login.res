@react.component
let make = () => {
  let {login} = LoginContext.useContext()
  let (username, setUsername) = React.useState(() => "")
  let (password, setPassword) = React.useState(() => "")

  let handleSubmit = (event: ReactEvent.Form.t) => {
    ReactEvent.Form.preventDefault(event)
    let _ = login(username, password)
  }

  let handleUsernameChange = event => setUsername(ReactEvent.Form.target(event)["value"])
  let handlePasswordChange = event => setPassword(ReactEvent.Form.target(event)["value"])

  <Layout>
    <h1 className="text-3xl font-bold text-gray-800 mb-4 text-center">
      {React.string("Connectez-vous")}
    </h1>
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
