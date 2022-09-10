var env;

({env} = Deno);

export default new Proxy({}, {
  get: (_, key) => {
    return env.get(key);
  }
});
