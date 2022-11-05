using MassTransit;
using Microsoft.AspNetCore.Mvc;
using Ste.Framework;
using Ste.Sms.Contract;

namespace Ste.Sms.Host.Controllers
{
    //[ApiController]
    //[Route("[controller]")]
    //public class HomeController : ControllerBase
    //{
    //    private readonly ILogger<HomeController> _logger;
    //    readonly IRequestClient<SendSms> _requestClient;

    //    private readonly IPublishEndpoint _publishEndpoint;

    //    public HomeController(ILogger<HomeController> logger, IRequestClient<SendSms> requestClient, IPublishEndpoint publishEndpoint)
    //    {
    //        _logger = logger;
    //        _requestClient = requestClient;
    //        _publishEndpoint = publishEndpoint;
    //    }

    //    [HttpPost(Name = "SendSms")]
    //    public async Task<Result> SendSms(SendSms sendSms)
    //    {
    //        await _publishEndpoint.Publish(new { Id = 1 });

    //        object obj = sendSms;

    //        sendSms.SmsId = Guid.NewGuid();
    //        var response1 = await _requestClient.GetResponse<Result>(new
    //        {
    //            ServiceId = sendSms.ServiceId,
    //            SmsId = sendSms.SmsId,
    //            UserId = sendSms.UserId,
    //            Sender = sendSms.Sender,
    //            Receiver = sendSms.Receiver,
    //            Message = sendSms.Message,
    //            Status = sendSms.Status,
    //            Priority = sendSms.Priority,
    //        });

    //        var response = await _requestClient.GetResponse<Result>(sendSms);
    //        return response.Message;
    //    }
    //}
}