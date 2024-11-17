@react.component
let make = () => {
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
      <ul className="flex items-center space-x-4">
        <li>
          <button
            className="text-gray-700 hover:text-blue-500 transition-colors"
            onClick={_ => RescriptReactRouter.push("/decks")}>
            {React.string("Decks")}
          </button>
        </li>
        <li>
          <button
            className="text-gray-700 hover:text-blue-500 transition-colors"
            onClick={_ => RescriptReactRouter.push("/mon-navire")}>
            {React.string("Mon Navire")}
          </button>
        </li>
        <li>
          <button
            className="p-2 bg-blue-500 text-white rounded mb-2 hover:bg-blue-600 transition-colors"
            onClick={_ => RescriptReactRouter.push("/add_deck")}>
            {React.string("Ajouter un deck")}
          </button>
        </li>
      </ul>
    </div>
  </nav>
}