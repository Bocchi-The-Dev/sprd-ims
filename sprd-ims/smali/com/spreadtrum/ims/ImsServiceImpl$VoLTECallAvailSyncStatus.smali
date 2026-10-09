.class Lcom/spreadtrum/ims/ImsServiceImpl$VoLTECallAvailSyncStatus;
.super Ljava/lang/Object;
.source "ImsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ImsServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoLTECallAvailSyncStatus"
.end annotation


# static fields
.field public static final VOLTE_CALL_AVAIL_SYNC_FAIL:I = 0x2

.field public static final VOLTE_CALL_AVAIL_SYNC_IDLE:I = 0x0

.field public static final VOLTE_CALL_AVAIL_SYNC_ONGOING:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ImsServiceImpl;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ImsServiceImpl;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/spreadtrum/ims/ImsServiceImpl$VoLTECallAvailSyncStatus;->this$0:Lcom/spreadtrum/ims/ImsServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
