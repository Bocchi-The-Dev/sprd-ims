.class public abstract Lcom/android/libraries/entitlement/http/HttpResponse$Builder;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/libraries/entitlement/http/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/android/libraries/entitlement/http/HttpResponse;
.end method

.method public abstract setBody(Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpResponse$Builder;
.end method

.method public abstract setContentType(I)Lcom/android/libraries/entitlement/http/HttpResponse$Builder;
.end method

.method public abstract setCookies(Ljava/util/List;)Lcom/android/libraries/entitlement/http/HttpResponse$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/libraries/entitlement/http/HttpResponse$Builder;"
        }
    .end annotation
.end method

.method public abstract setResponseCode(I)Lcom/android/libraries/entitlement/http/HttpResponse$Builder;
.end method

.method public abstract setResponseMessage(Ljava/lang/String;)Lcom/android/libraries/entitlement/http/HttpResponse$Builder;
.end method
