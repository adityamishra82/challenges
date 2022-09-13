def getKey(obj: dict):
    keys = list(obj)
    print(keys)
    while len(keys) == 1:
        return keys[0]
    
def getNestValue(obj: dict, key: str):
    #print(obj, key)
    if type(obj) is not dict:
        return None
    if (key in obj.keys()) :
        if type(obj[key]) is dict:
            return getNestValue(obj[key], getKey(obj[key]))
        else:
            return obj[getKey(obj)]
    else:
        nestedKey = getKey(obj)
        return getNestValue(obj[nestedKey], key)   
    
    
if __name__ == '__main__':
    obj = {'a': {'b': {'c': 'd'}}}
    value = getNestValue(obj, 'b')
    print(value)
