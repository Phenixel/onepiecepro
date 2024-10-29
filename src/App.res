@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()

  switch url.path {
  | list{"user", id} => <User id />
  | list{"deck", slug} => <DetailDeck slug />
  | _ => <Home />
  }
}