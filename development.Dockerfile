FROM ruby:2.7

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

ENTRYPOINT ["bundle", "exec", "jekyll"]
CMD ["serve"]
