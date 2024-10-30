// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as JsxRuntime from "react/jsx-runtime";

import './CardDetail.css'
;

function CardDetail(props) {
  var card = props.card;
  var match = React.useState(function () {
        return false;
      });
  var setIsExpanded = match[1];
  var isExpanded = match[0];
  return JsxRuntime.jsxs("div", {
              children: [
                JsxRuntime.jsx("div", {
                      children: JsxRuntime.jsx("img", {
                            className: "w-full",
                            alt: card.name,
                            src: card.imageUrl
                          }),
                      className: "card-image"
                    }),
                isExpanded ? JsxRuntime.jsxs("div", {
                        children: [
                          JsxRuntime.jsx("h2", {
                                children: card.name
                              }),
                          JsxRuntime.jsx("p", {
                                children: "Cost: " + String(card.cost)
                              }),
                          JsxRuntime.jsx("p", {
                                children: "Power: " + String(card.power)
                              }),
                          JsxRuntime.jsx("p", {
                                children: "Effect: " + card.effect
                              })
                        ],
                        className: "card-details"
                      }) : null
              ],
              className: "card-container cursor-pointer " + (
                isExpanded ? "expanded" : "collapsed"
              ),
              onClick: (function (param) {
                  setIsExpanded(function (prev) {
                        return !prev;
                      });
                })
            });
}

var make = CardDetail;

export {
  make ,
}
/*  Not a pure module */
