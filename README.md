# existential-assign

![Last version](https://img.shields.io/github/tag/Kikobeats/existential-assign.svg?style=flat-square)
[![Build Status](http://img.shields.io/travis/Kikobeats/existential-assign/master.svg?style=flat-square)](https://travis-ci.org/Kikobeats/existential-assign)
[![Dependency status](http://img.shields.io/david/Kikobeats/existential-assign.svg?style=flat-square)](https://david-dm.org/Kikobeats/existential-assign)
[![Dev Dependencies Status](http://img.shields.io/david/dev/Kikobeats/existential-assign.svg?style=flat-square)](https://david-dm.org/Kikobeats/existential-assign#info=devDependencies)
[![NPM Status](http://img.shields.io/npm/dm/existential-assign.svg?style=flat-square)](https://www.npmjs.org/package/existential-assign)
[![Donate](https://img.shields.io/badge/donate-paypal-blue.svg?style=flat-square)](https://paypal.me/kikobeats)

> Check for the existential value of a variable/object. Assign one if the value doesn't exist.

## Install

```bash
npm install existential-assign
```

If you want to use in the browser (powered by [Browserify](http://browserify.org/)):

```bash
bower install existential-assign --save
```

and later link in your HTML:

```html
<script src="bower_components/existential-assign/dist/existential-assign.js"></script>
```

## Usage

First load the library:

```js
var existsAssign = require('existential-assign');
```

Working with something that is not a `Object`:

```js
existsAssign(null, 'hello world'); // => 'hello world'
existsAssign('hello', 'world'); // => 'hello'
```

Working with `Object`:

```js
existsAssign(null, {hello: 'world'}) // => {hello: 'world'}
existsAssign({hello: 'world'}, {hello: 'Aloha'}) // => {hello: 'world'}
```

Very useful to setup default values for a options `Object` prioritizing user preferences:

```js
function myFunction(opts) {
  opts = existsAssign(opts, {
    date: new Date(),
    timeout: 3000,
    cb: function() {}
  })
}
```

## License

MIT © [Kiko Beats](http://www.kikobeats.com)
