@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()

  <LoginContext.DefaultProvider>
    {switch url.path {
    | list{"login"} => <Login />
    | list{"user", id} => <User id />
    | list{"connexion"} => <Singup />
    | list{"deck", slug} => <DetailDeck slug />
    | list{} => <Home />
    | _ => <NotFound errorType=#notFound />
    }}
  </LoginContext.DefaultProvider>
}