.class public Lcom/android/libraries/entitlement/ServiceEntitlementException;
.super Ljava/lang/Exception;
.source "ServiceEntitlementException.java"


# instance fields
.field private mError:I

.field private mHttpStatus:I

.field private mRetryAfter:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-direct {p0, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 90
    iput p1, p0, Lcom/android/libraries/entitlement/ServiceEntitlementException;->mError:I

    .line 91
    iput p2, p0, Lcom/android/libraries/entitlement/ServiceEntitlementException;->mHttpStatus:I

    .line 92
    iput-object p3, p0, Lcom/android/libraries/entitlement/ServiceEntitlementException;->mRetryAfter:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 105
    invoke-direct {p0, p4, p5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    iput p1, p0, Lcom/android/libraries/entitlement/ServiceEntitlementException;->mError:I

    .line 107
    iput p2, p0, Lcom/android/libraries/entitlement/ServiceEntitlementException;->mHttpStatus:I

    .line 108
    iput-object p3, p0, Lcom/android/libraries/entitlement/ServiceEntitlementException;->mRetryAfter:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    .line 80
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/libraries/entitlement/ServiceEntitlementException;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v2, 0x0

    const-string v3, ""

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 96
    invoke-direct/range {v0 .. v5}, Lcom/android/libraries/entitlement/ServiceEntitlementException;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    .line 115
    iget p0, p0, Lcom/android/libraries/entitlement/ServiceEntitlementException;->mError:I

    return p0
.end method

.method public getHttpStatus()I
    .locals 0

    .line 123
    iget p0, p0, Lcom/android/libraries/entitlement/ServiceEntitlementException;->mHttpStatus:I

    return p0
.end method

.method public getRetryAfter()Ljava/lang/String;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/android/libraries/entitlement/ServiceEntitlementException;->mRetryAfter:Ljava/lang/String;

    return-object p0
.end method
