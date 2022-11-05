using MassTransit;
using Microsoft.AspNetCore.Mvc;
using Ste.Framework;
using Ste.Sms.Contract;

namespace Ste.Sms.Host.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class HomeController : ControllerBase
    {
        private readonly ILogger<HomeController> _logger;
        readonly IRequestClient<SendSms> _requestClient;

        private readonly IPublishEndpoint _publishEndpoint;

        public HomeController(ILogger<HomeController> logger, IRequestClient<SendSms> requestClient, IPublishEndpoint publishEndpoint)
        {
            _logger = logger;
            _requestClient = requestClient;
            _publishEndpoint = publishEndpoint;
        }

        [HttpPost(Name = "SendSms")]
        public async Task<Result> SendSms(SendSms sendSms)
        {
            await _publishEndpoint.Publish(sendSms);

            sendSms.Message += "_22";
            sendSms.SmsId = Guid.NewGuid();
            
            var response = await _requestClient.GetResponse<Result>(sendSms,
                x => x.UseExecute(
                    context => context.Headers.Set("userInfo", "user1")));
            return response.Message;
        }
    }
}