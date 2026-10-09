.class final Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/IGmsServiceBroker;


# instance fields
.field private final zza:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub$zza;->zza:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/google/android/gms/common/internal/IGmsServiceBroker$Stub$zza;->zza:Landroid/os/IBinder;

    return-object p0
.end method
