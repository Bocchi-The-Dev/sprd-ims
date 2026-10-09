.class Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;
.super Ljava/lang/Object;
.source "VoWifiUTManager.java"

# interfaces
.implements Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager$SecurityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySecurityListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;


# direct methods
.method private constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;-><init>(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)V

    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$mnotifyServiceDisabled(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)V

    .line 262
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$mresetConfig(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)V

    .line 263
    return-void
.end method

.method public onFailed(I)V
    .locals 2

    .line 247
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$fgetmSubId(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$mnotifyPrepareResult(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;IZ)V

    .line 248
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$mresetConfig(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)V

    .line 249
    return-void
.end method

.method public onProgress(I)V
    .locals 0

    .line 213
    return-void
.end method

.method public onStopped(ZI)V
    .locals 0

    .line 254
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$mnotifyServiceDisabled(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)V

    .line 255
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$mresetConfig(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)V

    .line 256
    return-void
.end method

.method public onSuccessed(I)V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$fputmSessionId(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;I)V

    .line 218
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$fgetmSecurityMgr(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$fgetmSessionId(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->getConfig(I)Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$fputmSecurityConfig(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;)V

    .line 219
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$fgetmSecurityConfig(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_ip4:Ljava/lang/String;

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$fgetmSecurityConfig(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_ip6:Ljava/lang/String;

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {v2}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$fgetmSecurityConfig(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_dns4:Ljava/lang/String;

    iget-object v3, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {v3}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$fgetmSecurityConfig(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_dns6:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/spreadtrum/ims/vowifi/Utilities$UtConfig;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/spreadtrum/ims/vowifi/Utilities$UtConfig;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$fputmUtConfig(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;Lcom/spreadtrum/ims/vowifi/Utilities$UtConfig;)V

    .line 221
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$fgetmSecurityConfig(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    move-result-object p1

    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$fgetmUtConfig(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)Lcom/spreadtrum/ims/vowifi/Utilities$UtConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$fgetmSecurityConfig(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    move-result-object v1

    iget-boolean v1, v1, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_prefIPv4:Z

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/vowifi/Utilities$UtConfig;->getValidIPVersion(Z)I

    move-result v0

    iput v0, p1, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_useIPVersion:I

    .line 223
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set ip version as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$fgetmSecurityConfig(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    move-result-object v1

    iget v1, v1, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_useIPVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$fgetmSecurityConfig(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    move-result-object p1

    iget p1, p1, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_useIPVersion:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$fgetmSecurityMgr(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;

    move-result-object p1

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {v1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$fgetmSessionId(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)I

    move-result v1

    iget-object v2, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {v2}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$fgetmSecurityConfig(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;

    move-result-object v2

    iget v2, v2, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_useIPVersion:I

    .line 225
    invoke-virtual {p1, v1, v2}, Lcom/spreadtrum/ims/vowifi/VoWifiSecurityManager;->setIPVersion(II)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$mupdateSettings(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 235
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$fgetmSubId(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$mnotifyPrepareResult(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;IZ)V

    goto :goto_0

    .line 237
    :cond_1
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Update settings failed, handle it as prepare failed."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->disabled()V

    .line 239
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$fgetmSubId(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)I

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$mnotifyPrepareResult(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;IZ)V

    .line 240
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$mresetConfig(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)V

    .line 242
    :goto_0
    return-void

    .line 226
    :cond_2
    :goto_1
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "The attach is invalid, handle it as prepare failed."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->disabled()V

    .line 228
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$fgetmSubId(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)I

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$mnotifyPrepareResult(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;IZ)V

    .line 229
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager$MySecurityListener;->this$0:Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;

    invoke-static {p1}, Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;->-$$Nest$mresetConfig(Lcom/spreadtrum/ims/vowifi/VoWifiUTManager;)V

    .line 230
    return-void
.end method
