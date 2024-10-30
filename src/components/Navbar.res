@react.component
let make = () => {
  // Fonction pour naviguer

  <nav className="bg-white shadow-md">
    <div className="container mx-auto flex items-center justify-between p-4">
      <div
        className="flex items-center cursor-pointer" onClick={_ => RescriptReactRouter.push("/")}>
        <img
          src="https://static.wixstatic.com/media/57a197_e334385962ac4203abe6390f3b6ff4c6~mv2.png"
          alt="One Piece CG Pro Logo"
          className="h-10 w-auto"
        />
      </div>
      <ul className="flex space-x-4">
        <li>
          <button
            className="text-gray-700 hover:text-blue-500"
            onClick={_ => RescriptReactRouter.push("/connexion")}>
            {React.string("Sing Up")}
          </button>
        </li>
        <li>
          <button
            className="text-gray-700 hover:text-blue-500"
            onClick={_ => RescriptReactRouter.push("/login")}>
            {React.string("Login")}
          </button>
        </li>
        <li>
          <button
            className="text-gray-700 hover:text-blue-500"
            onClick={_ => RescriptReactRouter.push("/mon-navire")}>
            {React.string("Mon Navire")}
          </button>
        </li>
        <li>
          <button
            className="text-gray-700 hover:text-blue-500"
            onClick={_ => RescriptReactRouter.push("/decks")}>
            {React.string("Decks")}
          </button>
        </li>
      </ul>
    </div>
  </nav>
}