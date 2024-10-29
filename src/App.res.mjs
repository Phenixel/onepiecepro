// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Home from "./pages/Home.res.mjs";
import * as User from "./pages/User.res.mjs";
import * as Login from "./pages/Login.res.mjs";
import * as Singup from "./pages/Singup.res.mjs";
import * as NotFound from "./pages/NotFound.res.mjs";
import * as JsxRuntime from "react/jsx-runtime";
import * as RescriptReactRouter from "@rescript/react/src/RescriptReactRouter.res.mjs";

function App(props) {
  var url = RescriptReactRouter.useUrl(undefined, undefined);
  var match = url.path;
  if (!match) {
    return JsxRuntime.jsx(NotFound.make, {});
  }
  switch (match.hd) {
    case "" :
        if (match.tl) {
          return JsxRuntime.jsx(NotFound.make, {});
        } else {
          return JsxRuntime.jsx(Home.make, {});
        }
    case "connexion" :
        if (match.tl) {
          return JsxRuntime.jsx(NotFound.make, {});
        } else {
          return JsxRuntime.jsx(Login.make, {});
        }
    case "inscription" :
        if (match.tl) {
          return JsxRuntime.jsx(NotFound.make, {});
        } else {
          return JsxRuntime.jsx(Singup.make, {});
        }
    case "user" :
        var match$1 = match.tl;
        if (match$1 && !match$1.tl) {
          return JsxRuntime.jsx(User.make, {
                      id: match$1.hd
                    });
        } else {
          return JsxRuntime.jsx(NotFound.make, {});
        }
    default:
      return JsxRuntime.jsx(NotFound.make, {});
  }
}

var make = App;

export {
  make ,
}
/* Home Not a pure module */
