existsAssign = require '..'
should       = require 'should'
objectAssign = require 'object-assign'

describe 'existential default ::', ->

  describe 'non object', ->

    it 'resolve when not exists the value', ->
      existsAssign('hello world', null).should.eql 'hello world'
      existsAssign('foo', 'hello world').should.eql 'hello world'

  describe 'object', ->

    it 'added missing field', ->
      expected = hello: 'world', foo: 'bar'
      existsAssign({foo: 'bar'}, {hello: 'world'}).should.be.eql expected

    it  'dont overwrite a present field', ->
      expected = hello: 'world'
      existsAssign({hello: 'foo'}, {hello: 'world'}).should.be.eql expected

    it  'works with recursive object keys', ->
      defaults =
        one: 'one'
        two:
          three: 'three'
          five: 'five'

      objt =
        two: four: 'four'

      expected =
        one: 'one'
        two:
          three: 'three'
          four: 'four'
          five: 'five'

      existsAssign(defaults, objt).should.be.eql expected

      objt =
        two: 'two'

      expected =
        one: 'one'
        two: 'two'

      existsAssign(defaults, objt).should.be.eql expected
