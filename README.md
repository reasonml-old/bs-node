# bs-node

~~This is a repo pulled out from BuckleScript's [Node API](https://bucklescript.github.io/bucklescript/api/Node.html) so that it can be iterated on independently, in userland. It currently isn't stable! We'll gradually upstream the stable parts back into BuckleScript.~~

## Installation

```sh
npm install --save reasonml-community/bs-node
```

Then add `bs-node` to `bs-dependencies` in your `bsconfig.json`:
```js
{
  ...
  "bs-dependencies": ["bs-node"]
}
```
