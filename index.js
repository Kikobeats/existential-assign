'use strict'

var exists = require('existential')
var reduce = require('lodash.reduce')

function isObject (arg) {
  return typeof arg === 'object' && arg !== null
}

function existParam (target, source) {
  return reduce(source, function (accumulator, value, key) {
    if (!exists(target[key])) accumulator[key] = value
    return accumulator
  }, target)
}

module.exports = function (target, source) {
  if (!isObject(target)) return exists(target) ? target : source
  return existParam(target, source)
}
