existsAssign = require '..'
should       = require 'should'
objectAssign = require 'object-assign'

describe 'existential default ::', ->

  describe 'non object', ->

    it 'resolve when not exists the value', ->
      existsAssign(null, 'hello world').should.eql 'hello world'
      existsAssign('hello world', 'foo').should.eql 'hello world'

  describe 'object', ->

    it 'added missing field', ->
      expected = hello: 'world', foo: 'bar'
      existsAssign({hello: 'world'}, foo: 'bar').should.be.eql expected

    it  'dont overwrite a present field', ->
      expected = hello: 'world'
      existsAssign({hello: 'world'}, hello: 'foo').should.be.eql expected
