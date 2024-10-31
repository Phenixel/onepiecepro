@react.component
let make = (~message: string, ~onClose: unit => unit) => {
  let (isVisible, setIsVisible) = React.useState(() => true)

  isVisible ? (
    <div className="fixed top-0 left-0 w-full h-full flex items-center justify-center bg-black bg-opacity-50">
      <div className="bg-white p-6 rounded shadow-lg text-center">
        <h2 className="text-xl font-bold text-red-600 mb-4">
          {React.string("Alerte")}
        </h2>
        <p className="text-gray-700 mb-4">
          {React.string(message)}
        </p>
        <button
          className="p-2 bg-blue-500 text-white rounded"
          onClick={_event => {
            setIsVisible(_ => false)
            onClose()
          }}
        >
          {React.string("Fermer")}
        </button>
      </div>
    </div>
  ) : React.null
}
