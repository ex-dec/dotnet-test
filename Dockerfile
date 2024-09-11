FROM ubuntu:22.04

RUN apt update && apt install -y wget libicu-dev

RUN wget https://download.visualstudio.microsoft.com/download/pr/84a39cad-2147-4a3e-b8fd-ec6fca0f80dd/d86fc06f750e758770f5a2237e01f5c5/dotnet-sdk-9.0.100-preview.7.24407.12-linux-x64.tar.gz

RUN mkdir -p /usr/share/dotnet && tar zxf dotnet-sdk-9.0.100-preview.7.24407.12-linux-x64.tar.gz -C /usr/share/dotnet

COPY ./ /app

WORKDIR /app

EXPOSE 5000

CMD [ "/usr/share/dotnet/dotnet", "run" ]