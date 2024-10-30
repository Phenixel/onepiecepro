// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Layout from "../Layout.res.mjs";
import * as LoginContext from "../components/LoginContext.res.mjs";
import * as JsxRuntime from "react/jsx-runtime";
import * as RescriptReactRouter from "@rescript/react/src/RescriptReactRouter.res.mjs";

function Login(props) {
  var match = LoginContext.useContext();
  var login = match.login;
  var match$1 = React.useState(function () {
        return "";
      });
  var setUsername = match$1[1];
  var username = match$1[0];
  var match$2 = React.useState(function () {
        return "";
      });
  var setPassword = match$2[1];
  var password = match$2[0];
  var handleSubmit = function ($$event) {
    $$event.preventDefault();
    if (login(username, password)) {
      return RescriptReactRouter.push("/");
    } else {
      console.log("Invalid credentials");
      return ;
    }
  };
  var handleUsernameChange = function ($$event) {
    setUsername($$event.target.value);
  };
  var handlePasswordChange = function ($$event) {
    setPassword($$event.target.value);
  };
  return JsxRuntime.jsxs(Layout.make, {
              children: [
                JsxRuntime.jsx("h1", {
                      children: "Connectez-vous",
                      className: "text-3xl font-bold text-gray-800 mb-4 text-center"
                    }),
                JsxRuntime.jsx("div", {
                      children: JsxRuntime.jsxs("form", {
                            children: [
                              JsxRuntime.jsx("input", {
                                    className: "mb-4 p-2 border border-gray-300 rounded",
                                    placeholder: "Nom",
                                    type: "text",
                                    value: username,
                                    onChange: handleUsernameChange
                                  }),
                              JsxRuntime.jsx("input", {
                                    className: "mb-4 p-2 border border-gray-300 rounded",
                                    placeholder: "Mot de passe",
                                    type: "password",
                                    value: password,
                                    onChange: handlePasswordChange
                                  }),
                              JsxRuntime.jsx("button", {
                                    children: "Login",
                                    className: "p-2 bg-blue-500 text-white rounded",
                                    type: "submit"
                                  })
                            ],
                            className: "flex flex-col",
                            onSubmit: handleSubmit
                          }),
                      className: "flex flex-col max-w-md mx-auto mt-20 mb-20"
                    })
              ]
            });
}

var make = Login;

export {
  make ,
}
/* react Not a pure module */
