@react.component
let make = (~children) => {
    let {isLogged} = LoginContext.useContext()
    if(isLogged) {
        children
    } else {
        <Login />
    }
}