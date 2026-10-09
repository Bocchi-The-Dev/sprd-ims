.class final Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;
.super Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
.source "AutoValue_ServiceEntitlementRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private acceptContentType:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private authenticationToken:Ljava/lang/String;

.field private configurationVersion:Ljava/lang/Integer;

.field private entitlementVersion:Ljava/lang/String;

.field private notificationAction:Ljava/lang/Integer;

.field private notificationToken:Ljava/lang/String;

.field private terminalId:Ljava/lang/String;

.field private terminalModel:Ljava/lang/String;

.field private terminalSoftwareVersion:Ljava/lang/String;

.field private terminalVendor:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/libraries/entitlement/ServiceEntitlementRequest;
    .locals 17

    move-object/from16 v0, p0

    .line 297
    iget-object v1, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->configurationVersion:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->entitlementVersion:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->authenticationToken:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->terminalId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->terminalVendor:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->terminalModel:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->terminalSoftwareVersion:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->appName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->appVersion:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->notificationToken:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->notificationAction:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->acceptContentType:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    new-instance v2, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;

    .line 349
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->entitlementVersion:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->authenticationToken:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->terminalId:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->terminalVendor:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->terminalModel:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->terminalSoftwareVersion:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->appName:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->appVersion:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->notificationToken:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->notificationAction:Ljava/lang/Integer;

    .line 359
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v15, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->acceptContentType:Ljava/lang/String;

    const/16 v16, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v16}, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest-IA;)V

    return-object v2

    .line 309
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    iget-object v2, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->configurationVersion:Ljava/lang/Integer;

    if-nez v2, :cond_2

    const-string v2, " configurationVersion"

    .line 311
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_2
    iget-object v2, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->entitlementVersion:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, " entitlementVersion"

    .line 314
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_3
    iget-object v2, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->authenticationToken:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, " authenticationToken"

    .line 317
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_4
    iget-object v2, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->terminalId:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string v2, " terminalId"

    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_5
    iget-object v2, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->terminalVendor:Ljava/lang/String;

    if-nez v2, :cond_6

    const-string v2, " terminalVendor"

    .line 323
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_6
    iget-object v2, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->terminalModel:Ljava/lang/String;

    if-nez v2, :cond_7

    const-string v2, " terminalModel"

    .line 326
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_7
    iget-object v2, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->terminalSoftwareVersion:Ljava/lang/String;

    if-nez v2, :cond_8

    const-string v2, " terminalSoftwareVersion"

    .line 329
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_8
    iget-object v2, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->appName:Ljava/lang/String;

    if-nez v2, :cond_9

    const-string v2, " appName"

    .line 332
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :cond_9
    iget-object v2, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->appVersion:Ljava/lang/String;

    if-nez v2, :cond_a

    const-string v2, " appVersion"

    .line 335
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    :cond_a
    iget-object v2, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->notificationToken:Ljava/lang/String;

    if-nez v2, :cond_b

    const-string v2, " notificationToken"

    .line 338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_b
    iget-object v2, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->notificationAction:Ljava/lang/Integer;

    if-nez v2, :cond_c

    const-string v2, " notificationAction"

    .line 341
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_c
    iget-object v0, v0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->acceptContentType:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string v0, " acceptContentType"

    .line 344
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAcceptContentType(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 292
    iput-object p1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->acceptContentType:Ljava/lang/String;

    return-object p0

    .line 290
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null acceptContentType"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAppName(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 263
    iput-object p1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->appName:Ljava/lang/String;

    return-object p0

    .line 261
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null appName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAppVersion(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 271
    iput-object p1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->appVersion:Ljava/lang/String;

    return-object p0

    .line 269
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null appVersion"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAuthenticationToken(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 223
    iput-object p1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->authenticationToken:Ljava/lang/String;

    return-object p0

    .line 221
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null authenticationToken"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setConfigurationVersion(I)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
    .locals 0

    .line 207
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->configurationVersion:Ljava/lang/Integer;

    return-object p0
.end method

.method public setEntitlementVersion(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 215
    iput-object p1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->entitlementVersion:Ljava/lang/String;

    return-object p0

    .line 213
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null entitlementVersion"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNotificationAction(I)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
    .locals 0

    .line 284
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->notificationAction:Ljava/lang/Integer;

    return-object p0
.end method

.method public setNotificationToken(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 279
    iput-object p1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->notificationToken:Ljava/lang/String;

    return-object p0

    .line 277
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null notificationToken"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTerminalId(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 231
    iput-object p1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->terminalId:Ljava/lang/String;

    return-object p0

    .line 229
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null terminalId"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTerminalModel(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 247
    iput-object p1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->terminalModel:Ljava/lang/String;

    return-object p0

    .line 245
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null terminalModel"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTerminalSoftwareVersion(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 255
    iput-object p1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->terminalSoftwareVersion:Ljava/lang/String;

    return-object p0

    .line 253
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null terminalSoftwareVersion"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTerminalVendor(Ljava/lang/String;)Lcom/android/libraries/entitlement/ServiceEntitlementRequest$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 239
    iput-object p1, p0, Lcom/android/libraries/entitlement/AutoValue_ServiceEntitlementRequest$Builder;->terminalVendor:Ljava/lang/String;

    return-object p0

    .line 237
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null terminalVendor"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
