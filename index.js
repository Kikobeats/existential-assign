'use strict'

var _ = require('lodash')
var exists = require('existential')

function isObject (arg) {
  return typeof arg === 'object' && arg !== null
}

function existParam (target, source) {
  return _.reduce(source, function (accumulator, value, key) {
    if (!exists(target[key])) accumulator[key] = value
    return accumulator
  }, target)
}

module.exports = function (target, source) {
  if (!isObject(target)) return exists(target) ? target : source
  return existParam(target, source)
}
