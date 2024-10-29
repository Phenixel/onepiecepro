@react.component
let make = (~id: string) => {
  let users = UsersData.users
  let user = users->Array.find(u => u.id == id)

  switch user {
  | Some(user) =>
    <div>
      <h1> {React.string(user.name)} </h1>
    </div>
  | None =>
    <div>
      <h1> {"User not found"->React.string} </h1>
    </div>
  }
}