type typeCard = Leader | Character | Event

type card = {
  id: string,
  name: string,
  cost: int,
  attribute: string,
  power: int,
  counter: int,
  color: string,
  effect: string,
  typeCharacter: string,
  typeCard: typeCard,
  imageUrl: string,
}