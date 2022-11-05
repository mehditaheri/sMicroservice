using FluentValidation;
using MassTransit;
using Ste.Framework;
using Ste.Sms.Contract;

namespace Ste.Sms.Application;

public class SendSmsConsumer : IConsumer<SendSms>
{
    private readonly AbstractValidator<SendSms> _validator;
    public SendSmsConsumer(AbstractValidator<SendSms> validator)
    {
        _validator = validator;
    }

    public async Task Consume(ConsumeContext<SendSms> context)
    {
        var userifo = context.Headers.Get<string>("userInfo");

        var validationResult = await _validator.ValidateAsync(context.Message);
        if (!validationResult.IsValid)
            await context.RespondAsync(new BadRequest(validationResult));
        await context.RespondAsync(new Result { Success = true, StatusCode = "200",Message = context.Message.Message});
    }
}

public class SendSmsValidator : AbstractValidator<SendSms>
{
    public SendSmsValidator()
    {
        RuleFor(customer => customer.Message).NotEmpty().WithMessage("متن پیامک نباید خالی باشد");
    }
}