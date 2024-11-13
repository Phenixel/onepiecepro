type loginContext = {
  isLogged: bool,
  login: (string, string) => bool,
  currentUser: option<UsersData.user>,
}

let context = React.createContext({
  isLogged: false,
  login: (_username, _password) => false,
  currentUser: None,
})

module Provider = {
  let make = React.Context.provider(context)
}

module DefaultProvider = {
  @react.component
  let make = (~children) => {
    let (isLogged, setIsLogged) = React.useState(() => false)
    let (currentUser, setCurrentUser) = React.useState((): option<UsersData.user> => None)

    let login = (username, password) => {
      switch UsersData.users->Belt.Array.getBy(user => user.name == username && user.password == password) {
      | Some(user) =>
        setIsLogged(_ => true)
        setCurrentUser(_ => Some(user))
        Console.log("Logged in: " ++ user.name)
        true
      | None =>
        Console.log("Login failed")
        false
      }
    }

    <Provider
      value={{
        isLogged,
        login,
        currentUser,
      }}>
      {children}
    </Provider>
  }
}

let useContext = () => {
  React.useContext(context)
}
