FROM dart:stable AS build
# Resolve app dependencies.
WORKDIR /app
COPY pubspec.* ./
RUN dart pub get
ENV DART_FILE dart_test_http.dart
# Copy app source code and AOT compile it.
COPY . .
# Ensure packages are still up-to-date if anything has
changed
RUN dart pub get --offline
#RUN dart pub run build_runner build --delete-conflictingoutputs
RUN dart compile exe bin/$DART_FILE -o bin/server
# Build minimal serving image from AOT-compiled
# `/server` and required system
# libraries and configuration files stored in `/runtime/`
# from the build stage.
FROM scratch
COPY --from=build /runtime/ /
COPY --from=build /app/bin/server /app/bin/
# Start server.
EXPOSE 8080
CMD ["/app/bin/server"]