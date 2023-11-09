import psycopg2

conn = psycopg2.connect(host = 'localhost',
                       database = 'postgres',
                       port = '5432',
                       user = 'postgres',
                       password = '123' )
cur = conn.cursor()

cur.execute("SELECT name FROM Customers")
usernames = [r[0] for r in cur.fetchall()]
Found = False 
while not Found:
    username = input('Login:')
    if username in usernames:
        print('Welcome')
        Found=True
    else:
        print('Enter valid login please')

conn.commit()
cur.close()
conn.close()


# cur.execute("SELECT customer_id, SUM(price * count_or) FROM Orders JOIN Products ON Orders.product_id = Products.product_id GROUP BY customer_id")
# customer_orders = cur.fetchall()

# cur.close()
# conn.close()

# print("Общая сумма заказов для каждого клиента:", customer_orders)


# cur.execute("SELECT SUM(price) FROM Products")
# total_price = cur.fetchone()[0]

# cur.execute("SELECT AVG(price) FROM Products")
# average_price = cur.fetchone()[0]

# cur.close()
# conn.close()

# print("Сумма стоимости продуктов:", total_price)
# print("Средняя стоимость продуктов:", average_price)

# cur.execute("SELECT * FROM Products ORDER BY price")
# sorted_products = cur.fetchall()

# cur.close()
# conn.close()

# print("Продукты отсортированы по стоимости:", sorted_products)
