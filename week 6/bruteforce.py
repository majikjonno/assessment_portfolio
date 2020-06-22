import hashlib
import itertools

#declare hash
passwordHash = '2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824'

#create brute force 
def brute_force(hash):

	#specify a-z characters and limit to 5 characters
	letters = [chr(n) for n in range(ord('a'), ord('z'))]
	for word in itertools.product(letters, repeat=5):

		#print combinations whilst trying
		print(f"Trying password {word}:{hash}")
		password_try = ''.join(word)

		#hash plain text with sha256
		if hashlib.sha256(password_try.encode()).hexdigest() == hash:
			return password_try

#compare two hashes and print a match
password = brute_force(passwordHash)
print(f"Password has been cracked! It was {password}")


