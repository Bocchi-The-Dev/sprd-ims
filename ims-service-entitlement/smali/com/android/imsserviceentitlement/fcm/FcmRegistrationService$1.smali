.class Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService$1;
.super Landroid/os/AsyncTask;
.source "FcmRegistrationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/app/job/JobParameters;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;


# direct methods
.method constructor <init>(Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService$1;->this$0:Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 92
    check-cast p1, [Landroid/app/job/JobParameters;

    invoke-virtual {p0, p1}, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService$1;->doInBackground([Landroid/app/job/JobParameters;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Landroid/app/job/JobParameters;)Ljava/lang/Void;
    .locals 1

    .line 95
    iget-object p0, p0, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService$1;->this$0:Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/android/imsserviceentitlement/fcm/FcmRegistrationService;->onHandleWork(Landroid/app/job/JobParameters;)V

    const/4 p0, 0x0

    return-object p0
.end method
