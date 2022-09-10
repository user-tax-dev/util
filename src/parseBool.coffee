< (x)=>
  x and not ['0','false','off'].includes(
    x.trim().toLowerCase()
  )
