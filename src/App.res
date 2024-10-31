@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()
  let {isLogged} = LoginContext.useContext()

  let handleRedirectToLogin = () => {
    RescriptReactRouter.push("/login")
  }

  <LoginContext.DefaultProvider>
    {
      switch url.path {
      | list{"login"} => <Login />
      | list{"connexion"} => <Singup />
      | list{"deck", slug} =>
        if isLogged {
          <DetailDeck slug />
        } else {
          <PopUp message="Vous devez vous connecter" onClose=handleRedirectToLogin />
        }
      | list{"decks"} =>
        if isLogged {
          <Decks />
        } else {
          <PopUp message="Vous devez vous connecter" onClose=handleRedirectToLogin />
        }
      | list{} => <Home />
      | _ => <NotFound errorType=#notFound />
      }
    }
  </LoginContext.DefaultProvider>
}

//  @react.component
// let make = () => {
//   let url = RescriptReactRouter.useUrl()

//       switch url.path {
//     | list{"login"} => <Login />
//     | list{"connexion"} => <Singup />
//     | list{} => <Home />
//     | list{"deck", slug} => <DetailDeck slug />
//     | list{"decks"} => <Decks/>
//     | _ => <NotFound errorType=#notFound />
//     }}