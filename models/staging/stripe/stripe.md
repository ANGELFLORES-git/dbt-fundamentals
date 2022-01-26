{% docs payment_status %}
	
One of the following values: 

| status         | definition                                       |
|----------------|--------------------------------------------------|
| success        | Payment applied                                  |
| fail           | Payment declined, not applied                    |


{% enddocs %}


{% docs payment_method %}

One of the following values: 

| status         | definition                                       |
|----------------|--------------------------------------------------|
| credit_card    | Credit card from bank account                    | 
| coupon         | Partner Coupon Card                              |
| bank_transfer  | Banks transfer from external company             |
| gift_card      | Gift card / promotions and new customers         |


{% enddocs %}