type loginContext = {
  isLogged: bool,
  login: (string, string) => bool,
}

let context = React.createContext({
  isLogged: false,
  login: (_username, _password) => false,
})

module Provider = {
  let make = React.Context.provider(context)
}

module DefaultProvider = {
  @react.component
  let make = (~children) => {
    let (isLogged, setIsLogged) = React.useState(() => false)
    Console.log(isLogged ? "true" : "false")

    open Dom.Storage2

    React.useEffect(() => {
      localStorage
      ->getItem("isLogged")
      ->Option.forEach(value => {
        if value === "true" {
          setIsLogged(_ => true)
        }
      })
      None
    }, [])

    <Provider
      value={{
        isLogged,
        login: (username, password) => {
          UsersData.users
          ->Array.some(user => user.name == username && user.password == password)
          ->(
            result => {
              if result {
                Console.log("Logged in")
                setIsLogged(_ => true)
                localStorage->setItem("isLogged", "true")
              } else {
                Console.log("Not logged in")
                setIsLogged(_prev => false)
              }
              result
            }
          )
        },
      }}>
      {children}
    </Provider>
  }
}
let useContext = () => {
  React.useContext(context)
}