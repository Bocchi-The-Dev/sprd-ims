.class public Lcom/spreadtrum/ims/ut/ImsUtProxy;
.super Lcom/android/ims/internal/IImsUt$Stub;
.source "ImsUtProxy.java"


# static fields
.field private static final ACTION_CHANGE_CB_PW:I = 0x14

.field private static final ACTION_QUERY_CB:I = 0x1

.field private static final ACTION_QUERY_CF:I = 0x2

.field private static final ACTION_QUERY_CF_EX:I = 0x10

.field private static final ACTION_QUERY_CLIP:I = 0x5

.field private static final ACTION_QUERY_CLIR:I = 0x4

.field private static final ACTION_QUERY_COLP:I = 0x7

.field private static final ACTION_QUERY_COLR:I = 0x6

.field private static final ACTION_QUERY_CW:I = 0x3

.field private static final ACTION_TRANSACT:I = 0x8

.field private static final ACTION_UPDATE_CB:I = 0x9

.field private static final ACTION_UPDATE_CF:I = 0xa

.field private static final ACTION_UPDATE_CF_EX:I = 0x11

.field private static final ACTION_UPDATE_CLIP:I = 0xd

.field private static final ACTION_UPDATE_CLIR:I = 0xc

.field private static final ACTION_UPDATE_CLOR:I = 0xe

.field private static final ACTION_UPDATE_COLP:I = 0xf

.field private static final ACTION_UPDATE_CW:I = 0xb

.field private static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field private static final EXTRA_BARR_LIST:Ljava/lang/String; = "barrList"

.field private static final EXTRA_CFACTION:Ljava/lang/String; = "CFAction"

.field private static final EXTRA_CFREASON:Ljava/lang/String; = "CFReason"

.field private static final EXTRA_CLIR_MODE:Ljava/lang/String; = "clirMode"

.field private static final EXTRA_DIALING_NUM:Ljava/lang/String; = "dialingNumber"

.field private static final EXTRA_FACILITY:Ljava/lang/String; = "facility"

.field private static final EXTRA_ID:Ljava/lang/String; = "id"

.field private static final EXTRA_LOCK_STATE:Ljava/lang/String; = "lockState"

.field private static final EXTRA_OLD_PASSWORD:Ljava/lang/String; = "oldPassword"

.field private static final EXTRA_PASSWORD:Ljava/lang/String; = "password"

.field private static final EXTRA_RULE_SET:Ljava/lang/String; = "ruleSet"

.field private static final EXTRA_SERVICE_CLASS:Ljava/lang/String; = "serviceClass"

.field private static final EXTRA_TIMER_SECONDS:Ljava/lang/String; = "timerSeconds"

.field private static final INVALID_ID:I = -0x1

.field private static final PRIORITY_VOLTE_UT:I = 0x0

.field private static final PRIORITY_VOWIFI_UT:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final VOWIFI_QUERY_ID:I = 0x64


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImsService:Lcom/spreadtrum/ims/ImsService;

.field private final mImsUtListener:Lcom/android/ims/internal/IImsUtListener$Stub;

.field private final mImsUtListenerExBinder:Lcom/android/ims/internal/IImsUtListenerEx$Stub;

.field private mListener:Lcom/android/ims/internal/IImsUtListener;

.field private mListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

.field private mPendingMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mPriority:I

.field private mQueryOnVoLTE:Z

.field private mQueryOnVoLTEId:Landroid/util/SparseIntArray;

.field private mServiceId:I

.field private mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

.field private mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Lcom/android/ims/internal/IImsUtListener;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListenerEx(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Lcom/android/ims/internal/IImsUtListenerEx;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQueryOnVoLTE(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;
    .locals 0

    iget-object p0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTEId:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monConfigurationFailed(Lcom/spreadtrum/ims/ut/ImsUtProxy;Landroid/os/Bundle;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->onConfigurationFailed(Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/spreadtrum/ims/ImsService;Lcom/spreadtrum/ims/ut/ImsUtImpl;Lcom/spreadtrum/ims/vowifi/ImsUtImpl;I)V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/android/ims/internal/IImsUt$Stub;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPriority:I

    .line 81
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mServiceId:I

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    .line 86
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTEId:Landroid/util/SparseIntArray;

    .line 902
    new-instance v0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;-><init>(Lcom/spreadtrum/ims/ut/ImsUtProxy;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener$Stub;

    .line 1056
    new-instance v0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;

    invoke-direct {v0, p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;-><init>(Lcom/spreadtrum/ims/ut/ImsUtProxy;)V

    iput-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mImsUtListenerExBinder:Lcom/android/ims/internal/IImsUtListenerEx$Stub;

    .line 90
    iput-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mContext:Landroid/content/Context;

    .line 91
    iput-object p3, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    .line 92
    iput-object p4, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    .line 93
    iput p5, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mServiceId:I

    .line 94
    iput-object p2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mImsService:Lcom/spreadtrum/ims/ImsService;

    .line 95
    return-void
.end method

.method private changeBarringPassword(Landroid/os/Bundle;)I
    .locals 4

    .line 890
    nop

    .line 891
    const-string v0, "facility"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 892
    const-string v2, "oldPassword"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 893
    const-string v3, "password"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 894
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, v0, v2, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 896
    return p1
.end method

.method private getCallForwardingOption(Landroid/os/Bundle;)I
    .locals 4

    .line 868
    nop

    .line 869
    const-string v0, "CFReason"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 870
    const-string v1, "serviceClass"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 871
    const-string v2, "ruleSet"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 872
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v2, v0, v1, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getCallForwardingOption(IILjava/lang/String;)I

    move-result p1

    .line 874
    return p1
.end method

.method private getUTConfig()V
    .locals 3

    .line 704
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsService;->isVoWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    const-string v0, "getUTConfig primaryCardImsFeature is not wifi"

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 706
    return-void

    .line 709
    :cond_0
    const/4 v0, 0x0

    .line 710
    iget v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mServiceId:I

    invoke-static {v1}, Lcom/spreadtrum/ims/ImsService;->getSubIdByServiceId(I)I

    move-result v1

    .line 711
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->isSingleImsStack()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 712
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 714
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/spreadtrum/ims/vowifi/VoWifiConfiguration;->isSupportUT(Landroid/content/Context;I)Z

    move-result v0

    .line 715
    iput v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPriority:I

    .line 716
    iput-boolean v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    .line 718
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUTConfig isVowifiSupportUT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPriority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 719
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .line 1237
    sget-object v0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mServiceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    return-void
.end method

.method private onConfigurationFailed(Landroid/os/Bundle;)I
    .locals 4

    .line 738
    nop

    .line 739
    nop

    .line 740
    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 741
    const-string v1, "action"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationFailed action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 743
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 784
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->changeBarringPassword(Landroid/os/Bundle;)I

    move-result v0

    .line 785
    goto :goto_0

    .line 781
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->setCallForwardingOption(Landroid/os/Bundle;)I

    move-result v0

    .line 782
    goto :goto_0

    .line 778
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->getCallForwardingOption(Landroid/os/Bundle;)I

    move-result v0

    .line 779
    goto :goto_0

    .line 775
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->updateCLIR(Landroid/os/Bundle;)I

    move-result v0

    .line 776
    goto :goto_0

    .line 772
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->updateCallWaiting(Landroid/os/Bundle;)I

    move-result v0

    .line 773
    goto :goto_0

    .line 769
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->updateCallForward(Landroid/os/Bundle;)I

    move-result v0

    .line 770
    goto :goto_0

    .line 766
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->updateCallBarring(Landroid/os/Bundle;)I

    move-result v0

    .line 767
    goto :goto_0

    .line 763
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->queryCOLP(Landroid/os/Bundle;)I

    move-result v0

    .line 764
    goto :goto_0

    .line 760
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->queryCOLR(Landroid/os/Bundle;)I

    move-result v0

    .line 761
    goto :goto_0

    .line 757
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->queryCLIP(Landroid/os/Bundle;)I

    move-result v0

    .line 758
    goto :goto_0

    .line 754
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->queryCLIR(Landroid/os/Bundle;)I

    move-result v0

    .line 755
    goto :goto_0

    .line 751
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->queryCallWaiting(Landroid/os/Bundle;)I

    move-result v0

    .line 752
    goto :goto_0

    .line 748
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->queryCallForward(Landroid/os/Bundle;)I

    move-result v0

    .line 749
    goto :goto_0

    .line 745
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->queryCallBarring(Landroid/os/Bundle;)I

    move-result v0

    .line 790
    :cond_0
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private queryCLIP(Landroid/os/Bundle;)I
    .locals 0

    .line 817
    nop

    .line 818
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCLIP()I

    move-result p1

    .line 819
    return p1
.end method

.method private queryCLIR(Landroid/os/Bundle;)I
    .locals 0

    .line 812
    nop

    .line 813
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCLIR()I

    move-result p1

    .line 814
    return p1
.end method

.method private queryCOLP(Landroid/os/Bundle;)I
    .locals 0

    .line 827
    nop

    .line 828
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCOLP()I

    move-result p1

    .line 829
    return p1
.end method

.method private queryCOLR(Landroid/os/Bundle;)I
    .locals 0

    .line 822
    nop

    .line 823
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCOLR()I

    move-result p1

    .line 824
    return p1
.end method

.method private queryCallBarring(Landroid/os/Bundle;)I
    .locals 2

    .line 794
    nop

    .line 795
    const-string v0, "facility"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 796
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallBarring(I)I

    move-result p1

    .line 797
    return p1
.end method

.method private queryCallForward(Landroid/os/Bundle;)I
    .locals 3

    .line 800
    nop

    .line 801
    const-string v0, "CFReason"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 802
    const-string v1, "dialingNumber"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 803
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallForward(ILjava/lang/String;)I

    move-result p1

    .line 804
    return p1
.end method

.method private queryCallWaiting(Landroid/os/Bundle;)I
    .locals 0

    .line 807
    nop

    .line 808
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallWaiting()I

    move-result p1

    .line 809
    return p1
.end method

.method private setCallForwardingOption(Landroid/os/Bundle;)I
    .locals 9

    .line 877
    nop

    .line 878
    const-string v0, "CFReason"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 879
    const-string v0, "CFAction"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 880
    const-string v0, "serviceClass"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 881
    const-string v0, "timerSeconds"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 882
    const-string v0, "dialingNumber"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 883
    const-string v0, "ruleSet"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 884
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual/range {v2 .. v8}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->setCallForwardingOption(IIILjava/lang/String;ILjava/lang/String;)I

    move-result p1

    .line 886
    return p1
.end method

.method private updateCLIR(Landroid/os/Bundle;)I
    .locals 2

    .line 862
    nop

    .line 863
    const-string v0, "clirMode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 864
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCLIR(I)I

    move-result p1

    .line 865
    return p1
.end method

.method private updateCallBarring(Landroid/os/Bundle;)I
    .locals 4

    .line 832
    nop

    .line 833
    const-string v0, "facility"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 834
    const-string v2, "lockState"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 835
    const-string v2, "barrList"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 836
    nop

    .line 837
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 838
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 837
    :cond_0
    const/4 p1, 0x0

    .line 840
    :goto_0
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v2, v0, v1, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallBarring(II[Ljava/lang/String;)I

    move-result p1

    .line 841
    return p1
.end method

.method private updateCallForward(Landroid/os/Bundle;)I
    .locals 8

    .line 844
    nop

    .line 845
    const-string v0, "CFAction"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 846
    const-string v0, "CFReason"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 847
    const-string v0, "serviceClass"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 848
    const-string v0, "dialingNumber"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 849
    const-string v0, "timerSeconds"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 850
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual/range {v2 .. v7}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallForward(IILjava/lang/String;II)I

    move-result p1

    .line 852
    return p1
.end method

.method private updateCallWaiting(Landroid/os/Bundle;)I
    .locals 3

    .line 855
    nop

    .line 856
    const-string v0, "lockState"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 857
    const-string v1, "serviceClass"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 858
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallWaiting(ZI)I

    move-result p1

    .line 859
    return p1
.end method


# virtual methods
.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 558
    nop

    .line 559
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 562
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    .line 563
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 564
    const/16 v2, 0x14

    const-string v3, "action"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 565
    const-string v2, "facility"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v2, "oldPassword"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v2, "password"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 570
    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    .line 571
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 578
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CBP id = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 579
    return v0
.end method

.method public close()V
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->close()V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->close()V

    .line 105
    :goto_0
    return-void
.end method

.method public getCallForwardingOption(IILjava/lang/String;)I
    .locals 4

    .line 533
    nop

    .line 534
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->getCallForwardingOption(IILjava/lang/String;)I

    move-result v0

    .line 537
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    .line 538
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 539
    const/16 v2, 0x10

    const-string v3, "action"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 540
    const-string v2, "CFReason"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 541
    const-string v2, "serviceClass"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 542
    const-string v2, "ruleSet"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 545
    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    .line 546
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getCallForwardingOption(IILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->getCallForwardingOption(IILjava/lang/String;)I

    move-result v0

    .line 553
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getCFP id = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 554
    return v0
.end method

.method public isVowifiUtEnable()Z
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPriority:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mImsService:Lcom/spreadtrum/ims/ImsService;

    invoke-virtual {v0}, Lcom/spreadtrum/ims/ImsService;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    return v1

    .line 586
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public queryCLIP()I
    .locals 4

    .line 210
    nop

    .line 212
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->queryCLIP()I

    move-result v0

    .line 214
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    .line 215
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 216
    const-string v2, "action"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    .line 220
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCLIP()I

    move-result v0

    goto :goto_0

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCLIP()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_2
    :goto_0
    goto :goto_1

    .line 225
    :catch_0
    move-exception v1

    .line 226
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 228
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCLIP id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 229
    return v0
.end method

.method public queryCLIR()I
    .locals 4

    .line 184
    nop

    .line 186
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->queryCLIR()I

    move-result v0

    .line 188
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    .line 189
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 190
    const-string v2, "action"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 193
    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    .line 194
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCLIR()I

    move-result v0

    goto :goto_0

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCLIR()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_2
    :goto_0
    goto :goto_1

    .line 199
    :catch_0
    move-exception v1

    .line 200
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 202
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCLIR id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 203
    return v0
.end method

.method public queryCOLP()I
    .locals 4

    .line 262
    nop

    .line 264
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->queryCOLP()I

    move-result v0

    .line 266
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    .line 267
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 268
    const-string v2, "action"

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    .line 272
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCOLP()I

    move-result v0

    goto :goto_0

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCOLP()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_2
    :goto_0
    goto :goto_1

    .line 277
    :catch_0
    move-exception v1

    .line 278
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 280
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCOLP id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 281
    return v0
.end method

.method public queryCOLR()I
    .locals 4

    .line 236
    nop

    .line 238
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->queryCOLR()I

    move-result v0

    .line 240
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    .line 241
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 242
    const-string v2, "action"

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    .line 246
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCOLR()I

    move-result v0

    goto :goto_0

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCOLR()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_2
    :goto_0
    goto :goto_1

    .line 251
    :catch_0
    move-exception v1

    .line 252
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 254
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCOLR id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 255
    return v0
.end method

.method public queryCallBarring(I)I
    .locals 4

    .line 111
    nop

    .line 112
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->queryCallBarring(I)I

    move-result v0

    .line 114
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    .line 115
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 116
    const/4 v2, 0x1

    const-string v3, "action"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    const-string v2, "facility"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    .line 121
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallBarring(I)I

    move-result v0

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallBarring(I)I

    move-result v0

    .line 126
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryCB id = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 127
    return v0
.end method

.method public queryCallBarringForServiceClass(II)I
    .locals 4

    .line 629
    nop

    .line 630
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->queryCallBarring(I)I

    move-result v0

    .line 633
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    .line 634
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 635
    const/4 v2, 0x1

    const-string v3, "action"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 636
    const-string v2, "facility"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 637
    const-string v2, "serviceClass"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 638
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 640
    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    .line 641
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallBarringForServiceClass(II)I

    move-result v0

    goto :goto_0

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallBarringForServiceClass(II)I

    move-result v0

    .line 646
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "queryCB id = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 647
    return v0
.end method

.method public queryCallForward(ILjava/lang/String;)I
    .locals 4

    .line 134
    nop

    .line 135
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->queryCallForward(ILjava/lang/String;)I

    move-result v0

    .line 137
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    .line 138
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 139
    const/4 v2, 0x2

    const-string v3, "action"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const-string v2, "CFReason"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    const-string v2, "dialingNumber"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    .line 145
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallForward(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0, p1, p2}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallForward(ILjava/lang/String;)I

    move-result v0

    .line 150
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "queryCF id = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 151
    return v0
.end method

.method public queryCallWaiting()I
    .locals 4

    .line 158
    nop

    .line 160
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->queryCallWaiting()I

    move-result v0

    .line 162
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    .line 163
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 164
    const-string v2, "action"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 167
    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallWaiting()I

    move-result v0

    goto :goto_0

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->queryCallWaiting()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_2
    :goto_0
    goto :goto_1

    .line 173
    :catch_0
    move-exception v1

    .line 174
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 176
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryCW id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 177
    return v0
.end method

.method public setCallForwardingOption(IIILjava/lang/String;ILjava/lang/String;)I
    .locals 9

    .line 501
    nop

    .line 502
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->setCallForwardingOption(IIILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 505
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    .line 506
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 507
    const/16 v2, 0x11

    const-string v3, "action"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 508
    const-string v2, "CFReason"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 509
    const-string v2, "CFAction"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 510
    const-string v2, "serviceClass"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 511
    const-string v2, "dialingNumber"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v2, "timerSeconds"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 513
    const-string v2, "ruleSet"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 516
    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    .line 517
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->setCallForwardingOption(IIILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 521
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->setCallForwardingOption(IIILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 524
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setCFP id = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 525
    return v0
.end method

.method public setListener(Lcom/android/ims/internal/IImsUtListener;)V
    .locals 1

    .line 482
    iput-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mListener:Lcom/android/ims/internal/IImsUtListener;

    .line 483
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->getUTConfig()V

    .line 486
    :try_start_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    if-eqz p1, :cond_0

    .line 487
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener$Stub;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->setListener(Lcom/android/ims/internal/IImsUtListener;)V

    .line 489
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener$Stub;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->setListener(Lcom/android/ims/internal/IImsUtListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    goto :goto_0

    .line 490
    :catch_0
    move-exception p1

    .line 491
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 493
    :goto_0
    return-void
.end method

.method public setListenerEx(Lcom/android/ims/internal/IImsUtListenerEx;)V
    .locals 1

    .line 692
    iput-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mListenerEx:Lcom/android/ims/internal/IImsUtListenerEx;

    .line 693
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->getUTConfig()V

    .line 695
    const-string p1, "setListenerEx"

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 696
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    if-eqz p1, :cond_0

    .line 697
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mImsUtListenerExBinder:Lcom/android/ims/internal/IImsUtListenerEx$Stub;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->setListenerEx(Lcom/android/ims/internal/IImsUtListenerEx;)V

    .line 699
    :cond_0
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mImsUtListenerExBinder:Lcom/android/ims/internal/IImsUtListenerEx$Stub;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->setListenerEx(Lcom/android/ims/internal/IImsUtListenerEx;)V

    .line 700
    return-void
.end method

.method public transact(Landroid/os/Bundle;)I
    .locals 2

    .line 288
    nop

    .line 289
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->transact(Landroid/os/Bundle;)I

    move-result v0

    .line 291
    if-gez v0, :cond_1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_1

    .line 292
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->transact(Landroid/os/Bundle;)I

    move-result v0

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->transact(Landroid/os/Bundle;)I

    move-result v0

    .line 297
    :cond_1
    :goto_0
    return v0
.end method

.method public updateCLIP(Z)I
    .locals 2

    .line 419
    nop

    .line 421
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->updateCLIP(Z)I

    move-result v0

    .line 423
    if-gez v0, :cond_1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCLIP(Z)I

    move-result v0

    goto :goto_0

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCLIP(Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :cond_1
    :goto_0
    goto :goto_1

    .line 429
    :catch_0
    move-exception p1

    .line 430
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 432
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCLIP id = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 433
    return v0
.end method

.method public updateCLIR(I)I
    .locals 4

    .line 392
    nop

    .line 394
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->updateCLIR(I)I

    move-result v0

    .line 396
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    .line 397
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 398
    const-string v2, "action"

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 399
    const-string v2, "clirMode"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 400
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 402
    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    .line 403
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCLIR(I)I

    move-result v0

    goto :goto_0

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCLIR(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :cond_2
    :goto_0
    goto :goto_1

    .line 408
    :catch_0
    move-exception p1

    .line 409
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 411
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCLIR id = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 412
    return v0
.end method

.method public updateCOLP(Z)I
    .locals 2

    .line 461
    nop

    .line 463
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->updateCOLP(Z)I

    move-result v0

    .line 465
    if-gez v0, :cond_1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_1

    .line 466
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCOLP(Z)I

    move-result v0

    goto :goto_0

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCOLP(Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :cond_1
    :goto_0
    goto :goto_1

    .line 471
    :catch_0
    move-exception p1

    .line 472
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 474
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCOLP id = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 475
    return v0
.end method

.method public updateCOLR(I)I
    .locals 2

    .line 440
    nop

    .line 442
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->updateCOLR(I)I

    move-result v0

    .line 444
    if-gez v0, :cond_1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCOLR(I)I

    move-result v0

    goto :goto_0

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCOLR(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :cond_1
    :goto_0
    goto :goto_1

    .line 450
    :catch_0
    move-exception p1

    .line 451
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 453
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCOLR id = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 454
    return v0
.end method

.method public updateCallBarring(II[Ljava/lang/String;)I
    .locals 5

    .line 304
    nop

    .line 305
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->updateCallBarring(II[Ljava/lang/String;)I

    move-result v0

    .line 307
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_1

    .line 308
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    if-eqz p3, :cond_0

    .line 311
    const/4 v3, 0x0

    :goto_0
    array-length v4, p3

    if-ge v3, v4, :cond_0

    .line 312
    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 316
    :cond_0
    const/16 v3, 0x9

    const-string v4, "action"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 317
    const-string v3, "facility"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 318
    const-string v3, "lockState"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 319
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "barrList"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    :cond_1
    if-gez v0, :cond_3

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_3

    .line 323
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallBarring(II[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallBarring(II[Ljava/lang/String;)I

    move-result v0

    .line 328
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateCB id = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 329
    return v0
.end method

.method public updateCallBarringForServiceClass(II[Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    nop

    .line 596
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->updateCallBarring(II[Ljava/lang/String;)I

    move-result v0

    .line 599
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_1

    .line 600
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 602
    if-eqz p3, :cond_0

    .line 603
    const/4 v3, 0x0

    :goto_0
    array-length v4, p3

    if-ge v3, v4, :cond_0

    .line 604
    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 608
    :cond_0
    const/16 v3, 0x9

    const-string v4, "action"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 609
    const-string v3, "facility"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 610
    const-string v3, "lockState"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 611
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "barrList"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v2, "serviceClass"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 613
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 615
    :cond_1
    if-gez v0, :cond_3

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_3

    .line 616
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallBarringForServiceClass(II[Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 620
    :cond_2
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallBarringForServiceClass(II[Ljava/lang/String;I)I

    move-result v0

    .line 623
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateCB id = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 624
    return v0
.end method

.method public updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I
    .locals 8

    .line 658
    nop

    .line 659
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 661
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->updateCallBarring(II[Ljava/lang/String;)I

    move-result v0

    .line 662
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_1

    .line 663
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 665
    if-eqz p3, :cond_0

    .line 666
    const/4 v3, 0x0

    :goto_0
    array-length v4, p3

    if-ge v3, v4, :cond_0

    .line 667
    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 671
    :cond_0
    const/16 v3, 0x9

    const-string v4, "action"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 672
    const-string v3, "facility"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 673
    const-string v3, "lockState"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 674
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "barrList"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v2, "serviceClass"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 676
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 678
    :cond_1
    if-gez v0, :cond_3

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_3

    .line 679
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 683
    :cond_2
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 686
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateCB id = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 687
    return v0
.end method

.method public updateCallForward(IILjava/lang/String;II)I
    .locals 8

    .line 337
    nop

    .line 338
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->updateCallForward(IILjava/lang/String;II)I

    move-result v0

    .line 340
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    .line 341
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 342
    const/16 v2, 0xa

    const-string v3, "action"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 343
    const-string v2, "CFAction"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    const-string v2, "CFReason"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    const-string v2, "dialingNumber"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v2, "serviceClass"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 347
    const-string v2, "timerSeconds"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    .line 351
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallForward(IILjava/lang/String;II)I

    move-result v0

    goto :goto_0

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallForward(IILjava/lang/String;II)I

    move-result v0

    .line 356
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateCF id = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 357
    return v0
.end method

.method public updateCallWaiting(ZI)I
    .locals 4

    .line 364
    nop

    .line 366
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->isVowifiUtEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    invoke-virtual {v1, p1, p2}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->updateCallWaiting(ZI)I

    move-result v0

    .line 368
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_0

    .line 369
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 370
    const-string v2, "action"

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 371
    const-string v2, "lockState"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 372
    const-string v2, "serviceClass"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 373
    iget-object v2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mPendingMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 375
    :cond_0
    if-gez v0, :cond_2

    iget-boolean v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mQueryOnVoLTE:Z

    if-eqz v1, :cond_2

    .line 376
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1, p2}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallWaiting(ZI)I

    move-result v0

    goto :goto_0

    .line 379
    :cond_1
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoLTEUtImpl:Lcom/spreadtrum/ims/ut/ImsUtImpl;

    invoke-virtual {v1, p1, p2}, Lcom/spreadtrum/ims/ut/ImsUtImpl;->updateCallWaiting(ZI)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :cond_2
    :goto_0
    goto :goto_1

    .line 381
    :catch_0
    move-exception p1

    .line 382
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 384
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateCW id = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->log(Ljava/lang/String;)V

    .line 385
    return v0
.end method

.method public updateUtConfig(Lcom/spreadtrum/ims/vowifi/ImsUtImpl;)V
    .locals 1

    .line 723
    invoke-direct {p0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->getUTConfig()V

    .line 724
    iput-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    .line 727
    if-eqz p1, :cond_0

    .line 728
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mImsUtListener:Lcom/android/ims/internal/IImsUtListener$Stub;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->setListener(Lcom/android/ims/internal/IImsUtListener;)V

    .line 729
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mVoWifiUtImpl:Lcom/spreadtrum/ims/vowifi/ImsUtImpl;

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy;->mImsUtListenerExBinder:Lcom/android/ims/internal/IImsUtListenerEx$Stub;

    invoke-virtual {p1, v0}, Lcom/spreadtrum/ims/vowifi/ImsUtImpl;->setListenerEx(Lcom/android/ims/internal/IImsUtListenerEx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 732
    :catch_0
    move-exception p1

    .line 733
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 734
    :cond_0
    :goto_0
    nop

    .line 735
    :goto_1
    return-void
.end method
