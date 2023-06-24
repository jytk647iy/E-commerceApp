class Product:
    def __init__(self, name, price, quantity):
        self.name = name
        self.price = price
        self.quantity = quantity

    def display_product(self):
        print(f"Product: {self.name}")
        print(f"Price: ${self.price}")
        print(f"Quantity: {self.quantity}")
        print()

class ShoppingCart:
    def __init__(self):
        self.products = []

    def add_product(self, product):
        self.products.append(product)

    def display_cart(self):
        if not self.products:
            print("Your cart is empty.")
        else:
            print("Shopping Cart:")
            total_price = 0
            for product in self.products:
                product.display_product()
                total_price += product.price
            print(f"Total Price: ${total_price}")

if __name__ == '__main__':
    cart = ShoppingCart()

    product1 = Product("Shirt", 20, 2)
    cart.add_product(product1)

    product2 = Product("Jeans", 50, 1)
    cart.add_product(product2)

    product3 = Product("Shoes", 80, 1)
    cart.add_product(product3)

    cart.display_cart()
