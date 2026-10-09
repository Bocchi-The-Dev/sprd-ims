.class public Lcom/spreadtrum/ims/acs/RcsPermissionDeniedException;
.super Lcom/spreadtrum/ims/acs/RcsServiceException;
.source "RcsPermissionDeniedException.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/RcsServiceException;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/spreadtrum/ims/acs/RcsServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method

.method public static assertException(Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/spreadtrum/ims/acs/RcsPermissionDeniedException;
        }
    .end annotation

    .line 56
    const-class v0, Lcom/spreadtrum/ims/acs/RcsPermissionDeniedException;

    invoke-static {p0, v0}, Lcom/spreadtrum/ims/acs/RcsPermissionDeniedException;->isIntendedException(Ljava/lang/Exception;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    return-void

    .line 57
    :cond_0
    new-instance v0, Lcom/spreadtrum/ims/acs/RcsPermissionDeniedException;

    invoke-static {p0}, Lcom/spreadtrum/ims/acs/RcsPermissionDeniedException;->extractServerException(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/spreadtrum/ims/acs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
