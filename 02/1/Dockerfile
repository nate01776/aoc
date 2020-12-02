FROM ruby:latest

RUN apt-get update && \
    apt-get install -y net-tools

WORKDIR ~/Code/docker_scripts/ruby_template/run

COPY ./build/Gemfile ./
RUN bundle install

COPY ./build .

# ENV PORT 3000
# EXPOSE 3000

CMD ["ruby", "./index.rb"]