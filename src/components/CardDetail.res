%%raw(`import './CardDetail.css'`)

@react.component
let make = (~card: CardData.card) => {
  let (isExpanded, setIsExpanded) = React.useState(() => false)

  <div>
    {isExpanded
      ? <div className="overlay visible" onClick={_ => setIsExpanded(_ => false)} />
      : React.null}
    <div
      className={`card-container cursor-pointer ${isExpanded ? "expanded" : "collapsed"}`}
      onClick={_ => setIsExpanded(prev => !prev)}>
      <div className="card-image">
        <img src={card.imageUrl} alt={card.name} className="w-full" />
      </div>
      {isExpanded
        ? <div className="card-details">
            <h2> {React.string(card.name)} </h2>
            <p> {React.string("Cost: " ++ string_of_int(card.cost))} </p>
            <p> {React.string("Power: " ++ string_of_int(card.power))} </p>
            <p> {React.string("Effect: " ++ card.effect)} </p>
          </div>
        : React.null}
    </div>
  </div>
}