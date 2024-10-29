// Layout.res

@react.component
let make = (~children) => {
  <div>
    <Navbar />
    <div className="container mt-5 mb-5 mx-auto"> {children} </div>
    <Footer />
  </div>
}