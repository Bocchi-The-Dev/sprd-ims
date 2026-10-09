.class public Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;
.super Ljava/lang/Object;
.source "EntitlementConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;
    }
.end annotation


# instance fields
.field private final mConfigurationsDataStore:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfigurationsDataStore;

.field private mXmlDoc:Lcom/android/imsserviceentitlement/utils/XmlDoc;


# direct methods
.method public static synthetic $r8$lambda$fiF8gHkdOF65KwSnFx0Y4cbhDFw(Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->lambda$new$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/android/imsserviceentitlement/utils/XmlDoc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/imsserviceentitlement/utils/XmlDoc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->mXmlDoc:Lcom/android/imsserviceentitlement/utils/XmlDoc;

    .line 43
    invoke-static {p1, p2}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfigurationsDataStore;->getInstance(Landroid/content/Context;I)Lcom/android/imsserviceentitlement/entitlement/EntitlementConfigurationsDataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->mConfigurationsDataStore:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfigurationsDataStore;

    .line 44
    invoke-virtual {p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfigurationsDataStore;->get()Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$$ExternalSyntheticLambda0;-><init>(Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private isTokenInValidityPeriod()Z
    .locals 9

    .line 104
    iget-object v0, p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->mConfigurationsDataStore:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfigurationsDataStore;

    invoke-virtual {v0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfigurationsDataStore;->getQueryTimeMillis()J

    move-result-wide v0

    .line 105
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->getTokenValidity()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    const/4 v6, 0x0

    if-gtz p0, :cond_0

    return v6

    :cond_0
    cmp-long p0, v2, v4

    const/4 v4, 0x1

    if-gtz p0, :cond_1

    return v4

    .line 118
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    cmp-long p0, v7, v2

    if-gez p0, :cond_2

    move v6, v4

    :cond_2
    return v6
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;)V
    .locals 1

    .line 44
    new-instance v0, Lcom/android/imsserviceentitlement/utils/XmlDoc;

    invoke-direct {v0, p1}, Lcom/android/imsserviceentitlement/utils/XmlDoc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->mXmlDoc:Lcom/android/imsserviceentitlement/utils/XmlDoc;

    return-void
.end method


# virtual methods
.method public entitlementValidation()Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;
    .locals 5

    .line 181
    iget-object v0, p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->mXmlDoc:Lcom/android/imsserviceentitlement/utils/XmlDoc;

    const-string v1, "VERS"

    const-string v2, "version"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/imsserviceentitlement/utils/XmlDoc;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$$ExternalSyntheticLambda1;-><init>()V

    .line 185
    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v2, 0x0

    .line 186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 187
    iget-object p0, p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->mXmlDoc:Lcom/android/imsserviceentitlement/utils/XmlDoc;

    const-string v2, "validity"

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/imsserviceentitlement/utils/XmlDoc;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$$ExternalSyntheticLambda2;-><init>()V

    .line 191
    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 192
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    if-lez v0, :cond_0

    cmp-long p0, v3, v1

    if-lez p0, :cond_0

    .line 195
    sget-object p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->VALID_DURING_VALIDITY:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    return-object p0

    :cond_0
    if-lez v0, :cond_1

    cmp-long p0, v3, v1

    if-nez p0, :cond_1

    .line 197
    sget-object p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->VALID_WITHOUT_DURATION:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    return-object p0

    :cond_1
    if-nez v0, :cond_2

    cmp-long p0, v3, v1

    if-nez p0, :cond_2

    .line 199
    sget-object p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->NEEDS_TO_RESET:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    return-object p0

    :cond_2
    const/4 p0, -0x1

    if-ne v0, p0, :cond_3

    const-wide/16 v1, -0x1

    cmp-long p0, v3, v1

    if-nez p0, :cond_3

    .line 201
    sget-object p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->NEEDS_TO_RESET_EXCEPT_VERS:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    return-object p0

    :cond_3
    const/4 p0, -0x2

    if-ne v0, p0, :cond_4

    const-wide/16 v0, -0x2

    cmp-long p0, v3, v0

    if-nez p0, :cond_4

    .line 203
    sget-object p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->NEEDS_TO_RESET_EXCEPT_VERS_UNTIL_SETTING_ON:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    return-object p0

    .line 207
    :cond_4
    sget-object p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->UNKNOWN_BEHAVIOR:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    return-object p0
.end method

.method public getToken()Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->isTokenInValidityPeriod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object p0, p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->mXmlDoc:Lcom/android/imsserviceentitlement/utils/XmlDoc;

    const/4 v0, 0x0

    const-string v1, "TOKEN"

    const-string v2, "token"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/imsserviceentitlement/utils/XmlDoc;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTokenValidity()J
    .locals 3

    .line 126
    iget-object p0, p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->mXmlDoc:Lcom/android/imsserviceentitlement/utils/XmlDoc;

    const-string v0, "TOKEN"

    const-string v1, "validity"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/imsserviceentitlement/utils/XmlDoc;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$$ExternalSyntheticLambda2;-><init>()V

    .line 130
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 131
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVersValidity()J
    .locals 3

    .line 148
    iget-object p0, p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->mXmlDoc:Lcom/android/imsserviceentitlement/utils/XmlDoc;

    const-string v0, "VERS"

    const-string v1, "validity"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/imsserviceentitlement/utils/XmlDoc;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$$ExternalSyntheticLambda2;-><init>()V

    .line 152
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 153
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 3

    .line 139
    iget-object p0, p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->mXmlDoc:Lcom/android/imsserviceentitlement/utils/XmlDoc;

    const-string v0, "VERS"

    const-string v1, "version"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/imsserviceentitlement/utils/XmlDoc;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    .line 140
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->update(Ljava/lang/String;)V

    return-void
.end method

.method public resetConfigsExceptVers()V
    .locals 3

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<wap-provisioningdoc version=\"1.1\">  <characteristic type=\"VERS\">    <parm name=\"version\" value=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"/>    <parm name=\"validity\" value=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->getVersValidity()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\"/>  </characteristic>  <characteristic type=\"TOKEN\">    <parm name=\"token\" value=\"\"/>    <parm name=\"validity\" value=\"0\"/>  </characteristic>  <characteristic type=\"APPLICATION\">    <parm name=\"AppID\" value=\"ap2003\"/>    <parm name=\"EntitlementStatus\" value=\"2\"/>  </characteristic>  <characteristic type=\"APPLICATION\">    <parm name=\"AppID\" value=\"ap2004\"/>    <parm name=\"EntitlementStatus\" value=\"2\"/>  </characteristic>  <characteristic type=\"APPLICATION\">    <parm name=\"AppID\" value=\"ap2005\"/>    <parm name=\"EntitlementStatus\" value=\"2\"/>  </characteristic></wap-provisioningdoc>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->update(Ljava/lang/String;)V

    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->mConfigurationsDataStore:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfigurationsDataStore;

    invoke-virtual {v0, p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfigurationsDataStore;->set(Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/android/imsserviceentitlement/utils/XmlDoc;

    invoke-direct {v0, p1}, Lcom/android/imsserviceentitlement/utils/XmlDoc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;->mXmlDoc:Lcom/android/imsserviceentitlement/utils/XmlDoc;

    return-void
.end method
