.class public final enum Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;
.super Ljava/lang/Enum;
.source "VideoCallCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vt/VideoCallCameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WorkerTaskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

.field public static final enum CAMERA_CLOSE:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

.field public static final enum CAMERA_OPEN:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

.field public static final enum CAMERA_SWITCH:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

.field public static final enum NONE:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

.field public static final enum VIEW_SWTICH:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 50
    new-instance v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;->NONE:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    new-instance v1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    const-string v3, "CAMERA_SWITCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;->CAMERA_SWITCH:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    new-instance v3, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    const-string v5, "CAMERA_CLOSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;->CAMERA_CLOSE:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    new-instance v5, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    const-string v7, "CAMERA_OPEN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;->CAMERA_OPEN:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    new-instance v7, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    const-string v9, "VIEW_SWTICH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;->VIEW_SWTICH:Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    .line 49
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;->$VALUES:[Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;
    .locals 1

    .line 49
    const-class v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    return-object p0
.end method

.method public static values()[Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;
    .locals 1

    .line 49
    sget-object v0, Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;->$VALUES:[Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    invoke-virtual {v0}, [Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spreadtrum/ims/vt/VideoCallCameraManager$WorkerTaskType;

    return-object v0
.end method
