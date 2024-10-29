@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()

  switch url.path {
  | list{"user", id} => <User id />
  | list{"connexion"} => <Login/>
  | list{"login"} => <Singup />
  | list{} => <Home />
  | _ => <NotFound />
  }
}