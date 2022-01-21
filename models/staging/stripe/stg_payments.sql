with payments as (
    
    Select 
        id as payment_id, 
        orderid as order_id,
        paymentmethod as payment_method,
        status, 
        amount, 
        created, 
        _batched_at
        
    from raw.stripe.payment

)

select * from payments
