// Layout.res

@react.component
let make = (~children) => {
  <div>
    <Navbar />
    {children}
  </div>
}
