%%raw(`import './CardDetail.css'`)

@react.component
let make = (~card: CardData.card) => {
  let (isExpanded, setIsExpanded) = React.useState(() => false)

  <div>
    {isExpanded
      ? <div className="overlay visible" onClick={_ => setIsExpanded(_ => false)} />
      : React.null}
    <div
      className={`card-container cursor-pointer ${isExpanded
          ? "expanded"
          : "collapsed hover:scale-105"}`}
      onClick={_ => setIsExpanded(prev => !prev)}>
      <div className="card-image">
        <img src={card.imageUrl} alt={card.name} className="w-full" />
      </div>
      {isExpanded
        ? <div className="card-details p-4">
            <h2 className="text-2xl font-bold mb-4"> {React.string(card.name)} </h2>
            <p className="text-lg mb-2"> {React.string("Cost: " ++ string_of_int(card.cost))} </p>
            <p className="text-lg mb-2"> {React.string("Power: " ++ string_of_int(card.power))} </p>
            <p className="text-lg"> {React.string("Effect: " ++ card.effect)} </p>
          </div>
        : React.null}
    </div>
  </div>
}