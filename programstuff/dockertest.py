import os


#Docker test method
def do_the_test():
    #os.environ['MESSAGE'] = 'Hello from constant world'
    MESSAGE = os.getenv('MESSAGE')
    print(MESSAGE)

def main():
    do_the_test()

if __name__ == '__main__':
    main()