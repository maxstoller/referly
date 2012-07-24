Referly
======

Referly is a Ruby wrapper for the Referly API.

Usage
--------
You must first create a client object.

``` ruby
client = Referly.new(key, secret)
```

Accounts
--------
``` ruby
client.accounts.create(email: 'foo@bar.com')
```

Links
--------
``` ruby
client.links.create(url: 'http://refer.ly')
client.links.all
```

Rewards
--------
``` ruby
client.rewards.create(visit_id: '12345', amount: 1.00, earned_on: '2012-07-23', payable_on: '2012-07-24')
client.rewards.all
```

Contributing
--------
Pull requests are welcomed.