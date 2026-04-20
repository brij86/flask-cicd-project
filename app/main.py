from app import app
import os

@app.route('/')
def home():
    env = os.getenv('APP_ENV', 'development')
    return f'''
    <h1>Flask CI/CD App</h1>
    <p>Environment: <strong>{env}</strong></p>
    <p>Pipeline: GitHub → Jenkins → Docker → Kubernetes</p>
    '''

@app.route('/health')
def health():
    return {'status': 'healthy'}, 200