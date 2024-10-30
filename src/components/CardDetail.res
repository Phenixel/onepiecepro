@react.component
let make = (~card: CardData.card) => {
  <div
    className="max-w-sm rounded overflow-hidden shadow-lg bg-white transition-transform transform hover:scale-105">
    <img src={card.imageUrl} alt={card.name} className="w-full" />
    <div className="p-4">
      <h2 className="text-lg font-semibold text-gray-800"> {React.string(card.name)} </h2>
      <p className="text-sm text-gray-600">
        {React.string("Cost: " ++ string_of_int(card.cost))}
      </p>
      <p className="text-sm text-gray-600">
        {React.string("Power: " ++ string_of_int(card.power))}
      </p>
      <p className="text-sm text-gray-600"> {React.string("Effect: " ++ card.effect)} </p>
    </div>
  </div>
}