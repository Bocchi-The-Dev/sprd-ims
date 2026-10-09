.class Lcom/spreadtrum/ims/ut/ImsUtProxy$1;
.super Lcom/android/ims/internal/IImsUtListener$Stub;
.source "ImsUtProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/ut/ImsUtProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;


# direct methods
.method constructor <init>(Lcom/spreadtrum/ims/ut/ImsUtProxy;)V
    .locals 0

    .line 902
    iput-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsUtListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V
    .locals 0

    .line 1053
    return-void
.end method

.method public onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    .locals 0

    .line 1045
    return-void
.end method

.method public utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 2

    .line 987
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 988
    if-eq v0, v1, :cond_0

    .line 989
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 990
    move p2, v0

    .line 993
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 994
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    goto :goto_0

    .line 995
    :catch_0
    move-exception p1

    .line 996
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 998
    :goto_0
    return-void
.end method

.method public utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .locals 2

    .line 1006
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1007
    if-eq v0, v1, :cond_0

    .line 1008
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1009
    move p2, v0

    .line 1012
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V

    .line 1013
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    goto :goto_0

    .line 1014
    :catch_0
    move-exception p1

    .line 1015
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1017
    :goto_0
    return-void
.end method

.method public utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 2

    .line 1025
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1026
    if-eq v0, v1, :cond_0

    .line 1027
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1028
    move p2, v0

    .line 1031
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 1032
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    goto :goto_0

    .line 1033
    :catch_0
    move-exception p1

    .line 1034
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1036
    :goto_0
    return-void
.end method

.method public utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    .locals 2

    .line 947
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 948
    if-eq v0, v1, :cond_0

    .line 949
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 950
    move p2, v0

    .line 953
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    .line 954
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    goto :goto_0

    .line 955
    :catch_0
    move-exception p1

    .line 956
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 958
    :goto_0
    return-void
.end method

.method public utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    .line 962
    const/16 v0, 0x64

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTE(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 964
    iget-object p3, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p3, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$monConfigurationFailed(Lcom/spreadtrum/ims/ut/ImsUtProxy;Landroid/os/Bundle;)I

    move-result p1

    .line 965
    iget-object p3, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p3}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 966
    goto :goto_0

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 968
    if-eq v0, v1, :cond_1

    .line 969
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 970
    move p2, v0

    .line 973
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 974
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    goto :goto_0

    .line 975
    :catch_0
    move-exception p1

    .line 976
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 979
    :goto_0
    return-void
.end method

.method public utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    .line 923
    const/16 v0, 0x64

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTE(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 925
    iget-object p3, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p3, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$monConfigurationFailed(Lcom/spreadtrum/ims/ut/ImsUtProxy;Landroid/os/Bundle;)I

    move-result p1

    .line 926
    iget-object p3, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p3}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 927
    goto :goto_0

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 929
    if-eq v0, v1, :cond_1

    .line 930
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 931
    move p2, v0

    .line 934
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 935
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    goto :goto_0

    .line 936
    :catch_0
    move-exception p1

    .line 937
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 940
    :goto_0
    return-void
.end method

.method public utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 909
    if-eq v0, v1, :cond_0

    .line 910
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 911
    move p2, v0

    .line 914
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmListener(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsUtListener;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    .line 915
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$1;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    goto :goto_0

    .line 916
    :catch_0
    move-exception p1

    .line 917
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 919
    :goto_0
    return-void
.end method
