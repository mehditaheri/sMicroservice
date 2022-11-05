using FluentValidation;
using MassTransit;
using Ste.Framework;
using Ste.Sms.Application;
using Ste.Sms.Contract;

var builder = WebApplication.CreateBuilder(args);

//----------- Start Config
builder.Services.AddTransient<AbstractValidator<SendSms>, SendSmsValidator>();
builder.Services.AddMediator(x =>
{
    x.AddConsumersFromNamespaceContaining<SendSmsConsumer>();
    x.AddRequestClient<SendSmsResult>();
});
var rabbitMqSettings = builder.Configuration.GetSection(nameof(RabbitMqSettings)).Get<RabbitMqSettings>();
builder.Services.AddMassTransit(x =>
{
    x.UsingRabbitMq((context, cfg) =>
    {
        cfg.Host(rabbitMqSettings.Uri, "/", h => {
            h.Username(rabbitMqSettings.UserName);
            h.Password(rabbitMqSettings.Password);
        });
        cfg.ConfigureEndpoints(context);
    });
});
//----------- End Config

builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
var app = builder.Build();
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}
app.MapControllers();
app.Run();
