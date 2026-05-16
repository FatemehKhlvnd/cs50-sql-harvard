from cs50 import SQL

# connect to database
db = SQL("sqlite:///dont-panic.db")

# change admin password
db.execute(
    """
    UPDATE users
    SET password = 'hacked!'
    WHERE username = 'admin';
    """
)

print("Hacked!")
