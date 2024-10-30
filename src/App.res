@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()
  let {isLogged} = LoginContext.useContext()

  <LoginContext.DefaultProvider>
    {
      switch url.path {
    | list{"login"} => <Login />
    | list{"connexion"} => <Singup />
    | list{} => <Home />
    | list{"user", id} =>
      if isLogged {
        <User id />
      } else {
        RescriptReactRouter.push("/login")
        <Login />
      }
    | list{"deck", slug} =>
      if isLogged {
        <DetailDeck slug />
      } else {
        RescriptReactRouter.push("/login")
        <Login />
      }
    | _ => <NotFound errorType=#notFound />
    }}
  </LoginContext.DefaultProvider>
}