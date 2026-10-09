.class Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$1;
.super Ljava/lang/Object;
.source "RequestResolver.java"

# interfaces
.implements Lcom/spreadtrum/ims/n3am/vowifi/CountryCodeHelper$CountryCodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->getCountryCode(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

.field final synthetic val$response:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$1;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    iput-object p2, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$1;->val$response:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Ljava/lang/String;)V
    .locals 2

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object p1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$1;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$1;->val$response:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;

    const-string v1, "**"

    invoke-static {p1, v0, v1}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$mnotifyCountryCode(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$1;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$1;->val$response:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;

    invoke-static {v0, v1, p1}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$mnotifyCountryCode(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;Ljava/lang/String;)V

    .line 151
    :goto_0
    return-void
.end method

.method public onLoadFailed()V
    .locals 3

    .line 140
    invoke-static {}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCountryCode, onLoadFailed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$1;->this$0:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;

    iget-object v1, p0, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$1;->val$response:Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;

    const-string v2, "**"

    invoke-static {v0, v1, v2}, Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;->-$$Nest$mnotifyCountryCode(Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver;Lcom/spreadtrum/ims/n3am/vowifi/RequestResolver$Response;Ljava/lang/String;)V

    .line 142
    return-void
.end method
