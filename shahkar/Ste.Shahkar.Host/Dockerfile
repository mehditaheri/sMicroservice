#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["shahkar/Ste.Shahkar.Host/Ste.Shahkar.Host.csproj", "shahkar/Ste.Shahkar.Host/"]
RUN dotnet restore "shahkar/Ste.Shahkar.Host/Ste.Shahkar.Host.csproj"
COPY . .
WORKDIR "/src/shahkar/Ste.Shahkar.Host"
RUN dotnet build "Ste.Shahkar.Host.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "Ste.Shahkar.Host.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Ste.Shahkar.Host.dll"]