'use strict'

var exists = require('existential')
var _merge = require('lodash.merge')

function merge (x, y) {
  return _merge({}, x, y)
}

function isObject (arg) {
  return typeof arg === 'object' && arg !== null
}

function resolveMerge (target, source) {
  if (!isObject(source)) return exists(source) ? source : target
  return merge(target, source)
}

module.exports = function () {
  var args = Array.prototype.slice.call(arguments)
  var result = resolveMerge(args.shift(), args.shift())
  while (args.length) result = resolveMerge(args.shift(), result)
  return result
}
