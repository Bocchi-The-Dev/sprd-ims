.class Lcom/spreadtrum/ims/IMSLogController$TelephonyLogFlagObserver;
.super Landroid/database/ContentObserver;
.source "IMSLogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/IMSLogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyLogFlagObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/IMSLogController;


# direct methods
.method public constructor <init>(Lcom/spreadtrum/ims/IMSLogController;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/spreadtrum/ims/IMSLogController$TelephonyLogFlagObserver;->this$0:Lcom/spreadtrum/ims/IMSLogController;

    .line 56
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 57
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 61
    iget-object p1, p0, Lcom/spreadtrum/ims/IMSLogController$TelephonyLogFlagObserver;->this$0:Lcom/spreadtrum/ims/IMSLogController;

    invoke-static {p1}, Lcom/spreadtrum/ims/IMSLogController;->-$$Nest$fgetmResolver(Lcom/spreadtrum/ims/IMSLogController;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "telephony_activity_debug_config"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/IMSLogController;->-$$Nest$fputmTelephonyLogFlag(Lcom/spreadtrum/ims/IMSLogController;I)V

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mTelephonyLogFlag = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/IMSLogController$TelephonyLogFlagObserver;->this$0:Lcom/spreadtrum/ims/IMSLogController;

    invoke-static {v0}, Lcom/spreadtrum/ims/IMSLogController;->-$$Nest$fgetmTelephonyLogFlag(Lcom/spreadtrum/ims/IMSLogController;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IMSLogController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/spreadtrum/ims/IMSLogController$TelephonyLogFlagObserver;->this$0:Lcom/spreadtrum/ims/IMSLogController;

    invoke-static {p1}, Lcom/spreadtrum/ims/IMSLogController;->-$$Nest$fgetmTelephonyLogFlag(Lcom/spreadtrum/ims/IMSLogController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/IMSLogController;->-$$Nest$mmatchResult(Lcom/spreadtrum/ims/IMSLogController;I)V

    .line 65
    return-void
.end method

.method public register()V
    .locals 3

    .line 68
    const-string v0, "IMSLogController"

    const-string v1, "TelephonyLogFlagObserver is registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/spreadtrum/ims/IMSLogController$TelephonyLogFlagObserver;->this$0:Lcom/spreadtrum/ims/IMSLogController;

    invoke-static {v0}, Lcom/spreadtrum/ims/IMSLogController;->-$$Nest$fgetmResolver(Lcom/spreadtrum/ims/IMSLogController;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 70
    const-string v1, "telephony_activity_debug_config"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 69
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 71
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 74
    const-string v0, "IMSLogController"

    const-string v1, "TelephonyLogFlagObserver is unregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/spreadtrum/ims/IMSLogController$TelephonyLogFlagObserver;->this$0:Lcom/spreadtrum/ims/IMSLogController;

    invoke-static {v0}, Lcom/spreadtrum/ims/IMSLogController;->-$$Nest$fgetmResolver(Lcom/spreadtrum/ims/IMSLogController;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 76
    return-void
.end method
