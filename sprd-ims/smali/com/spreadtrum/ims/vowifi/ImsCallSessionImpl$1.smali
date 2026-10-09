.class Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$1;
.super Ljava/lang/Object;
.source "ImsCallSessionImpl.java"

# interfaces
.implements Lcom/spreadtrum/ims/vowifi/VoWifiCallManager$ICallChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$1;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/ims/internal/IVoWifiCall;)V
    .locals 2

    .line 261
    if-eqz p1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$1;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$fputmICall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Lcom/android/ims/internal/IVoWifiCall;)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$1;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    invoke-static {v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$fgetmICall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;)Lcom/android/ims/internal/IVoWifiCall;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 264
    invoke-static {}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The call interface changed to null, terminate the call."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$1;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    invoke-static {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->-$$Nest$fputmICall(Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;Lcom/android/ims/internal/IVoWifiCall;)V

    .line 268
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl$1;->this$0:Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;

    const/16 v0, 0x1f5

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsCallSessionImpl;->terminateCall(I)V

    .line 270
    :cond_1
    :goto_0
    return-void
.end method
