# existential-assign

[![Dependency status](http://img.shields.io/david/Kikobeats/existential-assign.svg?style=flat)](https://david-dm.org/Kikobeats/existential-assign)
[![Dev Dependencies Status](http://img.shields.io/david/dev/Kikobeats/existential-assign.svg?style=flat)](https://david-dm.org/Kikobeats/existential-assign#info=devDependencies)
[![NPM Status](http://img.shields.io/npm/dm/existential-assign.svg?style=flat)](https://www.npmjs.org/package/existential-assign)
[![Gittip](http://img.shields.io/gittip/Kikobeats.svg?style=flat)](https://www.gittip.com/Kikobeats/)

> Check for the existential value of a variable. Assign value by default.

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

```js
var existsDefault = require('existential-assign');
var hello = null;
hello = existsDefault(hello, 'world');
console.log(hello);
// => 'world'
```

## License

MIT © [Kiko Beats](http://www.kikobeats.com)
