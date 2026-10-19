import os
import sys
import signal
from http.server import HTTPServer, BaseHTTPRequestHandler

name = os.getenv("STUDENT_NAME", "Unknown")
surname = os.getenv("STUDENT_SURNAME", "Unknown")
group = os.getenv("STUDENT_GROUP", "Unknown")
student_id = os.getenv("STUDENT_ID", "Unknown")

text = f"""================================
DevOps Student Application
================================
Name: {name}
Surname: {surname}
Group: {group}
Student ID: {student_id}
================================
Application is running successfully!
"""


class Handler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-Type", "text/plain")
        self.end_headers()
        self.wfile.write(text.encode())


print(text)

if "--once" in sys.argv:
    sys.exit(0)

signal.signal(signal.SIGTERM, lambda s, f: sys.exit(0))
print("Server started on port 5000")
HTTPServer(("0.0.0.0", 5000), Handler).serve_forever()
