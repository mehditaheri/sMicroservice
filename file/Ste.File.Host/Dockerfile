#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["file/Ste.File.Host/Ste.File.Host.csproj", "file/Ste.File.Host/"]
RUN dotnet restore "file/Ste.File.Host/Ste.File.Host.csproj"
COPY . .
WORKDIR "/src/file/Ste.File.Host"
RUN dotnet build "Ste.File.Host.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "Ste.File.Host.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Ste.File.Host.dll"]