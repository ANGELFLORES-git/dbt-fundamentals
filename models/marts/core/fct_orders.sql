with customers as (
    select * from {{ref('stg_customers')}}

),

orders as (
    select * from {{ref('stg_orders')}}

),

payments as (
    select * from {{ref('stg_payments')}}

),

orders_customers as (
    Select 
        orders.order_id,
        customers.customer_id
    from orders left join customers using (customer_id)

),

fct_orders as (
    Select 
        payments.order_id,
        orders_customers.customer_id,
        sum(case when payments.status = 'success' 
                then amount
                else 0
            end) payment_amount

    from payments left join orders_customers using (order_id)
    group by 1,2
)

select * from fct_orders