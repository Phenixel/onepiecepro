type loginContext = {
  isLogged: bool,
  login: (string, string) => bool,
};

let context = React.createContext({
  isLogged: false,
  login: (_username, _password) => false,
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
        UsersData.users -> Array.some(
            user => user.name == username && user.password == password
            ) -> (result => {
            if (result) {
              Console.log("Logged in");
                setIsLogged(_prev => true);
            }
            result;
            }
        )
      },
    }}>
      {children}
    </Provider>
  }
}
let useContext = () => {
  React.useContext(context);
};