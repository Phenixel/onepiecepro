@react.component
let make = () => {
  <nav className="bg-white shadow-md">
    <div className="container mx-auto flex items-center justify-between p-4">
      <div className="flex items-center">
        <img
          src="https://static.wixstatic.com/media/57a197_e334385962ac4203abe6390f3b6ff4c6~mv2.png"
          alt="One Piece CG Pro Logo"
          className="h-10 w-auto"
        />
      </div>
      <ul className="flex space-x-4">
        <li>
          <a href="/login" className="text-gray-700 hover:text-blue-500">
            {React.string("Connexion")}
          </a>
        </li>
        <li>
          <a href="/mon-espace" className="text-gray-700 hover:text-blue-500">
            {React.string("Mon Navire")}
          </a>
        </li>
        <li>
          <a href="/decks" className="text-gray-700 hover:text-blue-500">
            {React.string("Decks")}
          </a>
        </li>
      </ul>
    </div>
  </nav>
}


