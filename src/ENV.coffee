{env} = Deno

< new Proxy(
  {}
  get:(_, key)=>
    env.get key
)
