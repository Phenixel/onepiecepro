@react.component
let make = (~children, ~header=?) => {
  <div>
    <Navbar />
    {header->Option.getOr(React.null)}
    <div className="container mt-5 mb-5 mx-auto"> {children} </div>
    <Footer />
  </div>
}