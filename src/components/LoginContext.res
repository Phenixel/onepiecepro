// Fichier LoginContext.res

type loginContext = {
  isLogged: bool,
<<<<<<< Updated upstream
  login: (string, string) => bool,
=======
  login: (string, string) => unit,
>>>>>>> Stashed changes
};

let context = React.createContext({
  isLogged: false,
<<<<<<< Updated upstream
  login: (_username, _password) => false,
=======
  login: (_username, _password) => (),
>>>>>>> Stashed changes
});

module Provider = {
  let make = React.Context.provider(context)
}

module DefaultProvider = {
  @react.component
  let make = (~children) => {
    let (isLogged, setIsLogged) = React.useState(() => false);
    Console.log(isLogged ? "true" : "false")
    <Provider value={{
      isLogged,
      login: (username, password) => {
        Console.log("plop")
<<<<<<< Updated upstream
        UsersData.users -> Array.some(
            user => user.name == username && user.password == password
            ) -> (result => {
            if (result) {
                setIsLogged(_prev => true);
            }
            result;
            }
        )
=======
        if (username === "admin" && password === "admin") {
          setIsLogged(_ => true);
        }
>>>>>>> Stashed changes
      },
    }}>
      {children}
    </Provider>
  }
}
<<<<<<< Updated upstream
=======

>>>>>>> Stashed changes
let useContext = () => {
  React.useContext(context);
};