// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as JsxRuntime from "react/jsx-runtime";

var context = React.createContext({
      isLogged: false,
      login: (function (_username, _password) {
          
        })
    });

var make = context.Provider;

var Provider = {
  make: make
};

function LoginContext$DefaultProvider(props) {
  var match = React.useState(function () {
        return false;
      });
  var setIsLogged = match[1];
  var isLogged = match[0];
  console.log(isLogged ? "true" : "false");
  return JsxRuntime.jsx(make, {
              value: {
                isLogged: isLogged,
                login: (function (username, password) {
                    console.log("plop");
                    if (username === "admin" && password === "admin") {
                      return setIsLogged(function (param) {
                                  return true;
                                });
                    }
                    
                  })
              },
              children: props.children
            });
}

var DefaultProvider = {
  make: LoginContext$DefaultProvider
};

function useContext() {
  return React.useContext(context);
}

export {
  context ,
  Provider ,
  DefaultProvider ,
  useContext ,
}
/* context Not a pure module */
