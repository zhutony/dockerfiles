### prepare system
# Create a user for logging.
RUN addgroup --gid 9998 log && \
 adduser --uid 9998 --gid 9998 --disabled-password --no-create-home --gecos "Logger" log && \
 usermod -L log

# Create a user for whatever application we choose to run.
RUN addgroup --gid 9999 app && \
 adduser --uid 9999 --gid 9999 --disabled-password --gecos "Application" app && \
 usermod -L app && \
 mkdir -p /home/app/.ssh && \
 chmod 700 /home/app/.ssh && \
 chown app:app /home/app/.ssh