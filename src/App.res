// app.res

@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()

  <LoginContext.DefaultProvider>
    {
      switch url.path {
      | list{"login"} => <Login />
      | list{"user", id} => <User id />
      | list{"connexion"} => <Singup />
      | list{} => <Home />
      | _ => <NotFound />
      }
    }
  </LoginContext.DefaultProvider>
}
