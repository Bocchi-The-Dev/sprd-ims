.class public Lcom/spreadtrum/ims/acs/TerminalInfo;
.super Ljava/lang/Object;
.source "TerminalInfo.java"


# static fields
.field private static final CLIENT_VERSION_PREFIX:Ljava/lang/String; = "RCSAndr-"

.field private static final FORWARD_SLASH:C = '/'

.field private static final HYPHEN:C = '-'

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final productName:Ljava/lang/String; = "RCS-client"

.field private static sBuildInfo:Ljava/lang/String;

.field private static sClientInfo:Ljava/lang/String;

.field private static sClientVersion:Ljava/lang/String;

.field private static sProductVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBuildInfo()Ljava/lang/String;
    .locals 3

    .line 68
    sget-object v0, Lcom/spreadtrum/ims/acs/TerminalInfo;->sBuildInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/spreadtrum/ims/acs/TerminalInfo;->getTerminalModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/spreadtrum/ims/acs/TerminalInfo;->getTerminalSoftwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/spreadtrum/ims/acs/TerminalInfo;->getTerminalVendor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/acs/TerminalInfo;->sBuildInfo:Ljava/lang/String;

    .line 72
    :cond_0
    sget-object v0, Lcom/spreadtrum/ims/acs/TerminalInfo;->sBuildInfo:Ljava/lang/String;

    return-object v0
.end method

.method public static getClientVendor()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "unknown"

    :goto_0
    return-object v0
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "RCS-client"

    return-object v0
.end method

.method public static getTerminalModel()Ljava/lang/String;
    .locals 1

    .line 60
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "unknown"

    :goto_0
    return-object v0
.end method

.method public static getTerminalSoftwareVersion()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "unknown"

    :goto_0
    return-object v0
.end method

.method public static getTerminalVendor()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "unknown"

    :goto_0
    return-object v0
.end method
