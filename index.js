'use strict'

var exists = require('existential')
var merge = require('deepmerge')

function isObject (arg) {
  return typeof arg === 'object' && arg !== null
}

module.exports = function (target, source) {
  if (!isObject(source)) return exists(source) ? source : target
  return merge(target, source)
}
