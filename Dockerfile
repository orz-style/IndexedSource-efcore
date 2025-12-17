FROM mcr.microsoft.com/dotnet/aspnet:10.0
LABEL maintainer Taku Izumi <admin@orz-style.com>

ENV ASPNETCORE_URLS=http://+:8080
ENV ASPNETCORE_HTTPS_PORT=https://+:8443

WORKDIR /app
COPY ./app .

ENTRYPOINT ["dotnet", "Microsoft.SourceBrowser.SourceIndexServer.dll"]
