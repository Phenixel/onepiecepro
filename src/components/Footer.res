@react.component
let make = () => {
  <footer className="bg-gray-800 text-white py-6">
    <div className="container mx-auto text-center">
      <p className="text-sm"> {"© 2024 OnePieceCGPro. All rights reserved."->React.string} </p>
      <div className="mt-4">
        <a href="https://twitter.com" className="mx-2 text-blue-400 hover:text-blue-600">
          {"Twitter"->React.string}
        </a>
        <a href="https://facebook.com" className="mx-2 text-blue-600 hover:text-blue-800">
          {"Facebook"->React.string}
        </a>
        <a href="https://instagram.com" className="mx-2 text-pink-400 hover:text-pink-600">
          {"Instagram"->React.string}
        </a>
      </div>
    </div>
  </footer>
}