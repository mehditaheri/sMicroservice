using MassTransit.Mediator;
using Microsoft.AspNetCore.Mvc;
using Ste.Sms.Contract;

namespace Ste.Sms.Host.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class HomeController : ControllerBase
    {
        private readonly ILogger<HomeController> _logger;
        readonly IMediator _mediator;

        public HomeController(ILogger<HomeController> logger, IMediator mediator)
        {
            _logger = logger;
            _mediator = mediator;
        }

        [HttpPost(Name = "SendSms")]
        public async Task<Framework.Result> SendSms(SendSms sendSms)
        {
            sendSms.SmsId = Guid.NewGuid();
            //await _mediator.Send(sendSms);
            var response = await _mediator.CreateRequestClient<SendSms>().GetResponse<SendSmsResult>(new { OrderId = sendSms.SmsId });
            return response.Message;
        }
    }
}