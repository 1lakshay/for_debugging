import os

from fastapi import FastAPI


# os.environ["TESTING"]

app = FastAPI()

@app.get('/')
def welcome():
    return {"message":"hello"}

@app.get('/helper')
def helper():
    name = os.environ["TESTING"]
    return {"message": f"{name}"}

