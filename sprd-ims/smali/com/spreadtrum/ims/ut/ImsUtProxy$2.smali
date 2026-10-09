.class Lcom/spreadtrum/ims/ut/ImsUtProxy$2;
.super Lcom/android/ims/internal/IImsUtListenerEx$Stub;
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

    .line 1056
    iput-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-direct {p0}, Lcom/android/ims/internal/IImsUtListenerEx$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public utConfigurationCallBarringFailed(I[II)V
    .locals 2

    .line 1197
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTE(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1198
    iget-object p2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p2}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 1199
    iget-object p3, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p3, p2}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$monConfigurationFailed(Lcom/spreadtrum/ims/ut/ImsUtProxy;Landroid/os/Bundle;)I

    move-result p2

    .line 1200
    iget-object p3, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p3}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1201
    goto :goto_0

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1203
    if-eq v0, v1, :cond_1

    .line 1204
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1205
    move p1, v0

    .line 1208
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmListenerEx(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Lcom/android/ims/internal/IImsUtListenerEx;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationCallBarringFailed(I[II)V

    .line 1209
    iget-object p2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p2}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1212
    goto :goto_0

    .line 1210
    :catch_0
    move-exception p1

    .line 1211
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1214
    :goto_0
    return-void
.end method

.method public utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 2

    .line 1141
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1142
    if-eq v0, v1, :cond_0

    .line 1143
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1144
    move p2, v0

    .line 1147
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmListenerEx(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Lcom/android/ims/internal/IImsUtListenerEx;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 1148
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    goto :goto_0

    .line 1149
    :catch_0
    move-exception p1

    .line 1150
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1152
    :goto_0
    return-void
.end method

.method public utConfigurationCallBarringResult(I[I)V
    .locals 2

    .line 1221
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1222
    if-eq v0, v1, :cond_0

    .line 1223
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1224
    move p1, v0

    .line 1227
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmListenerEx(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Lcom/android/ims/internal/IImsUtListenerEx;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationCallBarringResult(I[I)V

    .line 1228
    iget-object p2, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p2}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    goto :goto_0

    .line 1229
    :catch_0
    move-exception p1

    .line 1230
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1232
    :goto_0
    return-void
.end method

.method public utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/internal/ImsCallForwardInfoEx;)V
    .locals 2

    .line 1160
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1161
    if-eq v0, v1, :cond_0

    .line 1162
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1163
    move p2, v0

    .line 1166
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmListenerEx(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Lcom/android/ims/internal/IImsUtListenerEx;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Lcom/android/ims/internal/ImsCallForwardInfoEx;)V

    .line 1167
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    goto :goto_0

    .line 1168
    :catch_0
    move-exception p1

    .line 1169
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1171
    :goto_0
    return-void
.end method

.method public utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 2

    .line 1179
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1180
    if-eq v0, v1, :cond_0

    .line 1181
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1182
    move p2, v0

    .line 1185
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmListenerEx(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Lcom/android/ims/internal/IImsUtListenerEx;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V

    .line 1186
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1189
    goto :goto_0

    .line 1187
    :catch_0
    move-exception p1

    .line 1188
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1190
    :goto_0
    return-void
.end method

.method public utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    .locals 2

    .line 1101
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1102
    if-eq v0, v1, :cond_0

    .line 1103
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1104
    move p2, v0

    .line 1107
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmListenerEx(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Lcom/android/ims/internal/IImsUtListenerEx;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V

    .line 1108
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1111
    goto :goto_0

    .line 1109
    :catch_0
    move-exception p1

    .line 1110
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1112
    :goto_0
    return-void
.end method

.method public utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    .line 1116
    const/16 v0, 0x64

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTE(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 1118
    iget-object p3, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p3, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$monConfigurationFailed(Lcom/spreadtrum/ims/ut/ImsUtProxy;Landroid/os/Bundle;)I

    move-result p1

    .line 1119
    iget-object p3, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p3}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1120
    goto :goto_0

    .line 1121
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1122
    if-eq v0, v1, :cond_1

    .line 1123
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1124
    move p2, v0

    .line 1127
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmListenerEx(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Lcom/android/ims/internal/IImsUtListenerEx;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1128
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    goto :goto_0

    .line 1129
    :catch_0
    move-exception p1

    .line 1130
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1133
    :goto_0
    return-void
.end method

.method public utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    .line 1077
    const/16 v0, 0x64

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTE(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 1079
    iget-object p3, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p3, p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$monConfigurationFailed(Lcom/spreadtrum/ims/ut/ImsUtProxy;Landroid/os/Bundle;)I

    move-result p1

    .line 1080
    iget-object p3, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p3}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1081
    goto :goto_0

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1083
    if-eq v0, v1, :cond_1

    .line 1084
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1085
    move p2, v0

    .line 1088
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmListenerEx(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Lcom/android/ims/internal/IImsUtListenerEx;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 1089
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    goto :goto_0

    .line 1090
    :catch_0
    move-exception p1

    .line 1091
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1094
    :goto_0
    return-void
.end method

.method public utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
    .locals 2

    .line 1062
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 1063
    if-eq v0, v1, :cond_0

    .line 1064
    iget-object v1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmQueryOnVoLTEId(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1065
    move p2, v0

    .line 1068
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {v0}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmListenerEx(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Lcom/android/ims/internal/IImsUtListenerEx;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/ims/internal/IImsUtListenerEx;->utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V

    .line 1069
    iget-object p1, p0, Lcom/spreadtrum/ims/ut/ImsUtProxy$2;->this$0:Lcom/spreadtrum/ims/ut/ImsUtProxy;

    invoke-static {p1}, Lcom/spreadtrum/ims/ut/ImsUtProxy;->-$$Nest$fgetmPendingMap(Lcom/spreadtrum/ims/ut/ImsUtProxy;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    goto :goto_0

    .line 1070
    :catch_0
    move-exception p1

    .line 1071
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1073
    :goto_0
    return-void
.end method
