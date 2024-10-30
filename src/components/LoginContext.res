// Fichier LoginContext.res

type loginContext = {
  isLogged: bool,
  login: (string, string) => unit,
};

let context = React.createContext({
  isLogged: false,
  login: (_username, _password) => (),
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
        if (username === "admin" && password === "admin") {
          setIsLogged(_ => true);
        }
      },
    }}>
      {children}
    </Provider>
  }
}

let useContext = () => {
  React.useContext(context);
};