.class Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;
.super Ljava/lang/Object;
.source "UtSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/UtSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncState"
.end annotation


# instance fields
.field public final _subId:I

.field public _synced:Z

.field public _syncedWhenAMOff:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;->_synced:Z

    .line 124
    iput-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;->_syncedWhenAMOff:Z

    .line 127
    iput p1, p0, Lcom/spreadtrum/ims/vowifi/UtSyncManager$SyncState;->_subId:I

    .line 128
    return-void
.end method
