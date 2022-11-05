#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["ticket/Ste.Ticket.Host/Ste.Ticket.Host.csproj", "ticket/Ste.Ticket.Host/"]
RUN dotnet restore "ticket/Ste.Ticket.Host/Ste.Ticket.Host.csproj"
COPY . .
WORKDIR "/src/ticket/Ste.Ticket.Host"
RUN dotnet build "Ste.Ticket.Host.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "Ste.Ticket.Host.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Ste.Ticket.Host.dll"]