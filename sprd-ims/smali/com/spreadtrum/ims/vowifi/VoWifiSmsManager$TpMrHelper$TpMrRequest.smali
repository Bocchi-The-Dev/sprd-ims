.class Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$TpMrRequest;
.super Ljava/lang/Object;
.source "VoWifiSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TpMrRequest"
.end annotation


# instance fields
.field public _sms:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

.field public _token:I

.field final synthetic this$1:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;ILcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;)V
    .locals 0

    .line 882
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$TpMrRequest;->this$1:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 883
    iput p2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$TpMrRequest;->_token:I

    .line 884
    iput-object p3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$TpMrHelper$TpMrRequest;->_sms:Lcom/spreadtrum/ims/vowifi/VoWifiSmsManager$Sms;

    .line 885
    return-void
.end method
