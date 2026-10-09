.class Lcom/spreadtrum/ims/vt/VideoCallEngine$1;
.super Ljava/lang/Object;
.source "VideoCallEngine.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vt/VideoCallEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/vt/VideoCallEngine;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$1;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 141
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$1;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    invoke-static {p2}, Lcom/android/ims/internal/IN3AMVideoStateNoitfy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IN3AMVideoStateNoitfy;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fputmN3amVideoStateNoitfy(Lcom/spreadtrum/ims/vt/VideoCallEngine;Lcom/android/ims/internal/IN3AMVideoStateNoitfy;)V

    .line 142
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "N3AM: onServiceConnected"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 147
    iget-object p1, p0, Lcom/spreadtrum/ims/vt/VideoCallEngine$1;->this$0:Lcom/spreadtrum/ims/vt/VideoCallEngine;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$fputmN3amVideoStateNoitfy(Lcom/spreadtrum/ims/vt/VideoCallEngine;Lcom/android/ims/internal/IN3AMVideoStateNoitfy;)V

    .line 148
    invoke-static {}, Lcom/spreadtrum/ims/vt/VideoCallEngine;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "N3AM: onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method
