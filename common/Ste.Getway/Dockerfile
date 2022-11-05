#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["common/Ste.Getway/Ste.Getway.csproj", "common/Ste.Getway/"]
RUN dotnet restore "common/Ste.Getway/Ste.Getway.csproj"
COPY . .
WORKDIR "/src/common/Ste.Getway"
RUN dotnet build "Ste.Getway.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "Ste.Getway.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Ste.Getway.dll"]