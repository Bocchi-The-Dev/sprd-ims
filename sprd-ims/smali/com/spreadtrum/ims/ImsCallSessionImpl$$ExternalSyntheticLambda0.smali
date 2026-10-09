.class public final synthetic Lcom/spreadtrum/ims/ImsCallSessionImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

.field public final synthetic f$1:Landroid/telephony/ims/ImsSuppServiceNotification;


# direct methods
.method public synthetic constructor <init>(Lcom/spreadtrum/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$$ExternalSyntheticLambda0;->f$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iput-object p2, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/ims/ImsSuppServiceNotification;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$$ExternalSyntheticLambda0;->f$0:Lcom/spreadtrum/ims/ImsCallSessionImpl;

    iget-object v1, p0, Lcom/spreadtrum/ims/ImsCallSessionImpl$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/ims/ImsSuppServiceNotification;

    invoke-virtual {v0, v1}, Lcom/spreadtrum/ims/ImsCallSessionImpl;->lambda$handleNotificationCode$0$com-spreadtrum-ims-ImsCallSessionImpl(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    return-void
.end method
