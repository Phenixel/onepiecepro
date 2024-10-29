// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Layout from "../Layout.res.mjs";
import * as JsxRuntime from "react/jsx-runtime";

function Login(props) {
  return JsxRuntime.jsxs(Layout.make, {
              children: [
                JsxRuntime.jsx("h1", {
                      children: "Page de Connexion"
                    }),
                JsxRuntime.jsx("div", {
                      children: JsxRuntime.jsxs("form", {
                            children: [
                              JsxRuntime.jsx("input", {
                                    className: "mb-4 p-2 border border-gray-300 rounded",
                                    placeholder: "Nom",
                                    type: "text"
                                  }),
                              JsxRuntime.jsx("input", {
                                    className: "mb-4 p-2 border border-gray-300 rounded",
                                    placeholder: "Mot de passe",
                                    type: "password"
                                  }),
                              JsxRuntime.jsx("button", {
                                    children: "S'inscrire",
                                    className: "p-2 bg-blue-500 text-white rounded",
                                    type: "submit"
                                  })
                            ],
                            className: "flex flex-col"
                          }),
                      className: "flex flex-col max-w-md mx-auto"
                    })
              ]
            });
}

var make = Login;

export {
  make ,
}
/* Layout Not a pure module */
