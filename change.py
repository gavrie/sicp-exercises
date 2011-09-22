def log(msg):
    pass
    #print msg

def change_combinations(amount, coins):
    if amount == 0:
        return 0

    log("Amount: {}, coins: {}".format(amount, coins))
    coin = coins[0]

    if len(coins) == 1:
        #log("One coin left")
        if amount / coin > 0:
            log("Coin {} matches".format(coin))
            return 1
        else:
            log("Coin {} doesn't match".format(coin))
            return 0

    #log("Multiple coins left")
    combinations = 0

    for count in range(0, amount / coin + 1):
        # All combinations for this coin
        log("Coin {}, count {}".format(coin, count))
        if coin * count == amount:
            combinations += 1
        combinations += change_combinations(amount - coin * count,
                                            coins[1:])
    return combinations

all_coins = [1000, 500, 200, 100, 50, 25, 10, 5, 1]
#print change_combinations(100, all_coins)
print change_combinations(1000, all_coins)
