// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Layout from "../components/Layout.res.mjs";
import * as JsxRuntime from "react/jsx-runtime";

function Home(props) {
  return JsxRuntime.jsx(Layout.make, {
              children: JsxRuntime.jsxs("div", {
                    children: [
                      JsxRuntime.jsx("h1", {
                            children: "Bienvenue sur One Piece CG Pro"
                          }),
                      JsxRuntime.jsx("p", {
                            children: "One Piece CG Pro est un site communautaire pour les joueurs de One Piece Card Game. Vous pouvez y créer vos decks, les partager avec la communauté et consulter les decks des autres joueurs."
                          }),
                      JsxRuntime.jsx("p", {
                            children: "Pour commencer, vous pouvez vous connecter ou créer un compte pour accéder à votre espace personnel."
                          })
                    ],
                    className: "home"
                  })
            });
}

var make = Home;

export {
  make ,
}
/* Layout Not a pure module */
