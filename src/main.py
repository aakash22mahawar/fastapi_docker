from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def fast_hello():
  content = {'message' : 'test of fastapi with lambda'}
  return content

