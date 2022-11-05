using Ste.Framework;

namespace Ste.Sms.Contract;

public class SendSms
{
    public int ServiceId { get; set; }
    public Guid SmsId { get; set; }
    public int UserId { get; set; }
    public long Sender { get; set; }
    public long Receiver { get; set; }
    public string? Message { get; set; }
    public bool Status { get; set; }
    public byte Priority { get; set; }
}

public class SendSmsResult:Result{}