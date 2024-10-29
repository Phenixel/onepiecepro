// Generated by ReScript, PLEASE EDIT WITH CARE

import * as JsxRuntime from "react/jsx-runtime";

function Navbar(props) {
  return JsxRuntime.jsx("nav", {
              children: JsxRuntime.jsxs("div", {
                    children: [
                      JsxRuntime.jsx("div", {
                            children: JsxRuntime.jsx("img", {
                                  className: "h-10 w-auto",
                                  alt: "One Piece CG Pro Logo",
                                  src: "https://static.wixstatic.com/media/57a197_e334385962ac4203abe6390f3b6ff4c6~mv2.png"
                                }),
                            className: "flex items-center"
                          }),
                      JsxRuntime.jsxs("ul", {
                            children: [
                              JsxRuntime.jsx("li", {
                                    children: JsxRuntime.jsx("a", {
                                          children: "Connexion",
                                          className: "text-gray-700 hover:text-blue-500",
                                          href: "/login"
                                        })
                                  }),
                              JsxRuntime.jsx("li", {
                                    children: JsxRuntime.jsx("a", {
                                          children: "Mon Navire",
                                          className: "text-gray-700 hover:text-blue-500",
                                          href: "/mon-espace"
                                        })
                                  }),
                              JsxRuntime.jsx("li", {
                                    children: JsxRuntime.jsx("a", {
                                          children: "Decks",
                                          className: "text-gray-700 hover:text-blue-500",
                                          href: "/decks"
                                        })
                                  })
                            ],
                            className: "flex space-x-4"
                          })
                    ],
                    className: "container mx-auto flex items-center justify-between p-4"
                  }),
              className: "bg-white shadow-md"
            });
}

var make = Navbar;

export {
  make ,
}
/* react/jsx-runtime Not a pure module */
