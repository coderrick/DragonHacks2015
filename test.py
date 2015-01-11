import sys
from firebase import firebase

firebase =firebase.FirebaseApplication('https://dragonhacks2015.firebaseio.com',None)

firebase.post('arduino',sys.argv[1])
