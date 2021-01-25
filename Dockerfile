FROM webdevops/php:7.4

COPY --from=mysql:8.0.23 / /

WORKDIR /
EXPOSE 9000
ENTRYPOINT ["/entrypoint"]
CMD ["supervisord"]
