.class Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;
.super Ljava/lang/Object;
.source "VoWifiSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sms"
.end annotation


# static fields
.field public static final DIR_RECEIVED:I = 0x2

.field public static final DIR_SEND:I = 0x1

.field public static final FLAG_MSGREF:I = 0x2

.field public static final FLAG_TOKEN:I = 0x1

.field public static final INDICATOR_STATUS_REPORT_REQUEST:I = 0x20

.field public static final STATUS_RECEIVED:I = -0x1

.field public static final STATUS_REPORT_RECEIVED:I = 0x3

.field public static final STATUS_SEND:I = 0x1

.field public static final STATUS_SEND_FINISHED:I = 0x2


# instance fields
.field public _dir:I

.field public _format:Ljava/lang/String;

.field public _id:I

.field public _messageRef:I

.field public _pdu:[B

.field public _phoneId:I

.field public _requireStatusReport:Z

.field public _smsImpl:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;

.field public _status:I

.field public _statusReportFromCS:Z

.field public _token:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_phoneId:I

    .line 697
    iput p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_token:I

    .line 698
    return-void
.end method

.method public constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;IIII[B)V
    .locals 1

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 701
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_smsImpl:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;

    .line 702
    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->-$$Nest$fgetmPhoneId(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;)I

    move-result v0

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_phoneId:I

    .line 703
    iput p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_token:I

    .line 704
    iput p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_messageRef:I

    .line 705
    iput p5, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_status:I

    .line 706
    iput p4, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_dir:I

    .line 707
    iput-object p6, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_pdu:[B

    .line 708
    const/4 p2, 0x0

    aget-byte p3, p6, p2

    and-int/lit8 p3, p3, 0x20

    if-lez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    iput-boolean p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_requireStatusReport:Z

    .line 709
    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$ImsSmsImpl;->getSmsFormat()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_format:Ljava/lang/String;

    .line 710
    iput-boolean p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_statusReportFromCS:Z

    .line 711
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 715
    instance-of v0, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 716
    check-cast p1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    .line 717
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 718
    return v0

    .line 720
    :cond_0
    iget v2, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_token:I

    iget v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_token:I

    if-ne v2, v3, :cond_1

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_phoneId:I

    iget v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_phoneId:I

    if-ne p1, v2, :cond_1

    move v1, v0

    :cond_1
    return v1

    .line 723
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 729
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_token:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_messageRef:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_dir:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_requireStatusReport:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sms[phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_phoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_token:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageRef:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_messageRef:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_dir:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requireStatusReport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_requireStatusReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statusReportFromCS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;->_statusReportFromCS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
