// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Home from "./pages/Home.res.mjs";
import * as User from "./pages/User.res.mjs";
import * as Login from "./pages/Login.res.mjs";
import * as Singup from "./pages/Singup.res.mjs";
import * as NotFound from "./pages/NotFound.res.mjs";
import * as DetailDeck from "./pages/DetailDeck.res.mjs";
import * as LoginContext from "./components/LoginContext.res.mjs";
import * as JsxRuntime from "react/jsx-runtime";
import * as RescriptReactRouter from "@rescript/react/src/RescriptReactRouter.res.mjs";

function App(props) {
  var url = RescriptReactRouter.useUrl(undefined, undefined);
  var match = LoginContext.useContext();
  var isLogged = match.isLogged;
  var match$1 = url.path;
  var tmp;
  if (match$1) {
    switch (match$1.hd) {
      case "connexion" :
          tmp = match$1.tl ? JsxRuntime.jsx(NotFound.make, {
                  errorType: "notFound"
                }) : JsxRuntime.jsx(Singup.make, {});
          break;
      case "deck" :
          var match$2 = match$1.tl;
          if (match$2 && !match$2.tl) {
            if (isLogged) {
              tmp = JsxRuntime.jsx(DetailDeck.make, {
                    slug: match$2.hd
                  });
            } else {
              RescriptReactRouter.push("/login");
              tmp = JsxRuntime.jsx(Login.make, {});
            }
          } else {
            tmp = JsxRuntime.jsx(NotFound.make, {
                  errorType: "notFound"
                });
          }
          break;
      case "login" :
          tmp = match$1.tl ? JsxRuntime.jsx(NotFound.make, {
                  errorType: "notFound"
                }) : JsxRuntime.jsx(Login.make, {});
          break;
      case "user" :
          var match$3 = match$1.tl;
          if (match$3 && !match$3.tl) {
            if (isLogged) {
              tmp = JsxRuntime.jsx(User.make, {
                    id: match$3.hd
                  });
            } else {
              RescriptReactRouter.push("/login");
              tmp = JsxRuntime.jsx(Login.make, {});
            }
          } else {
            tmp = JsxRuntime.jsx(NotFound.make, {
                  errorType: "notFound"
                });
          }
          break;
      default:
        tmp = JsxRuntime.jsx(NotFound.make, {
              errorType: "notFound"
            });
    }
  } else {
    tmp = JsxRuntime.jsx(Home.make, {});
  }
  return JsxRuntime.jsx(LoginContext.DefaultProvider.make, {
              children: tmp
            });
}

var make = App;

export {
  make ,
}
/* Home Not a pure module */
