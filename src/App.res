@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()
  let {isLogged} = LoginContext.useContext()
  <LoginContext.DefaultProvider>
    {
      switch url.path {
    | list{"login"} => <Login />
    | list{"connexion"} => <Singup />
    | list{"deck", slug} =>
      if isLogged {
        <DetailDeck slug />
      } else {
        <Login />
      }
      | list{"decks"} =>
      if isLogged {
        <Decks/>
      } else {
        <Login />
      }
    | list{} => <Home />
    | _ => <NotFound errorType=#notFound />
    }}
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