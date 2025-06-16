from fastapi import FastAPI, HTTPException
import math

app = FastAPI()

@app.get("/sqrt/{value}")
def get_square_root(value: float):
    if value < 0:
        raise HTTPException(status_code=400, detail="Cannot compute square root of a negative number.")
    return {"value": value, "square_root": math.sqrt(value)}
