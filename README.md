# bs-node

This is a repo pulled out from BuckleScript's [Node API](http://bucklescript.github.io/bucklescript/Manual.html#_node_module) ([API here](http://bucklescript.github.io/bucklescript/api/Node.html)) so that it can be iterated on independently, in userland. It currently isn't stable! We'll gradually upstream the stable parts back into BuckleScript.

## Installation

```sh
npm install --save buckletypes/bs-node
```

Then add `bs-node` to `bs-dependencies` in your `bsconfig.json`:
```js
{
  ...
  "bs-dependencies": ["bs-node"]
}
```
