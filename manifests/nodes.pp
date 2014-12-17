node /^vagrant\.tscanlon\.iv/ {
  class {'bar':
    fiz => 'bang'
  } -> notify { 'this will only notify after the bar module has completed':}
}
