from app import create_app, db
from app.models import Student
import os

port = os.getenv("PORT", 5000)

app = create_app()

with app.app_context():
    db.create_all()

if _name_ == "_main_":
    app.run(host="0.0.0.0", port=5000)
