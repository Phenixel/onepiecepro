@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()
  <LoginContext.DefaultProvider>
    {switch url.path {
    | list{"login"} => <Login />
    | list{"connexion"} => <Singup />
    | list{"deck", slug} =>
      <ProtectedRoute>
        <DetailDeck slug />
      </ProtectedRoute>
    | list{"decks"} =>
      <ProtectedRoute>
        <Decks />
      </ProtectedRoute>
    | list{"mon-navire"} =>
      <ProtectedRoute>
        <MonNavire />
      </ProtectedRoute>
    | list{} => <Home />
    | _ => <NotFound errorType=#notFound />
    }}
  </LoginContext.DefaultProvider>
}