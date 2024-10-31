@react.component
let make = (~colorNames: array<string>) => {
  let colorClasses = colorNames
    ->Array.map(color =>
      switch color {
      | "Red" => "bg-red-500"
      | "Green" => "bg-green-500"
      | "Blue" => "bg-blue-500"
      | "Yellow" => "bg-yellow-500"
      | "Pink" => "bg-pink-500"
      | _ => "bg-gray-500"
      }
    )

  <div className="flex items-center space-x-1">
    {colorClasses->Array.map(colorClass =>
      <span className={`inline-block w-3 h-3 rounded-full ${colorClass}`} />
    )->React.array}
  </div>
}
