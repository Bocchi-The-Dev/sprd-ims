.class public Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;
.super Landroid/database/CursorWrapper;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallCursor"
.end annotation


# static fields
.field private static final COL_CONF_ALIGN_WITH_VIDEO:Ljava/lang/String; = "confAlignWithVideo"

.field private static final COL_CONF_INVITED_WAIT_NOTIFY:Ljava/lang/String; = "confInvitedWaitNotify"

.field private static final COL_SOS_AS_NORMAL_CALL:Ljava/lang/String; = "sosAsNormal"

.field private static final COL_SOS_REMOVE_OLD_S2B:Ljava/lang/String; = "sosRemoveOldS2b"

.field private static final COL_SUPPORT_VIDEO_CALL:Ljava/lang/String; = "supportVideoCall"

.field private static final COL_WITH_LOCATION:Ljava/lang/String; = "withLocation"

.field private static sIndexConfAlignWithVideo:I

.field private static sIndexConfInvitedWaitNotify:I

.field private static sIndexSosAsNormalCall:I

.field private static sIndexSosRemoveOldS2b:I

.field private static sIndexSupportVideoCall:I

.field private static sIndexWithLocation:I


# instance fields
.field private mCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1178
    const/4 v0, -0x1

    sput v0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->sIndexSupportVideoCall:I

    .line 1179
    sput v0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->sIndexConfAlignWithVideo:I

    .line 1180
    sput v0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->sIndexWithLocation:I

    .line 1181
    sput v0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->sIndexSosAsNormalCall:I

    .line 1182
    sput v0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->sIndexSosRemoveOldS2b:I

    .line 1183
    sput v0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->sIndexConfInvitedWaitNotify:I

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .line 1186
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1187
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->mCursor:Landroid/database/Cursor;

    .line 1189
    sget v0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->sIndexWithLocation:I

    if-gez v0, :cond_0

    .line 1190
    const-string v0, "supportVideoCall"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->sIndexSupportVideoCall:I

    .line 1191
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->mCursor:Landroid/database/Cursor;

    const-string v0, "confAlignWithVideo"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->sIndexConfAlignWithVideo:I

    .line 1192
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->mCursor:Landroid/database/Cursor;

    const-string v0, "withLocation"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->sIndexWithLocation:I

    .line 1193
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->mCursor:Landroid/database/Cursor;

    const-string v0, "sosAsNormal"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->sIndexSosAsNormalCall:I

    .line 1194
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->mCursor:Landroid/database/Cursor;

    const-string v0, "sosRemoveOldS2b"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->sIndexSosRemoveOldS2b:I

    .line 1195
    iget-object p1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->mCursor:Landroid/database/Cursor;

    .line 1196
    const-string v0, "confInvitedWaitNotify"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->sIndexConfInvitedWaitNotify:I

    .line 1198
    :cond_0
    return-void
.end method


# virtual methods
.method public isConfAlignWithVideo()Z
    .locals 2

    .line 1208
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1209
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->mCursor:Landroid/database/Cursor;

    sget v1, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->sIndexConfAlignWithVideo:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConfInvitedWaitNotify()Z
    .locals 2

    .line 1232
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1233
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->mCursor:Landroid/database/Cursor;

    sget v1, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->sIndexConfInvitedWaitNotify:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needWithLocation()Z
    .locals 2

    .line 1214
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1215
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->mCursor:Landroid/database/Cursor;

    sget v1, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->sIndexWithLocation:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public sosAsNormalCall()Z
    .locals 2

    .line 1220
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1221
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->mCursor:Landroid/database/Cursor;

    sget v1, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->sIndexSosAsNormalCall:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public sosNeedRemoveOldS2b()Z
    .locals 2

    .line 1226
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1227
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->mCursor:Landroid/database/Cursor;

    sget v1, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->sIndexSosRemoveOldS2b:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportVideoCall()Z
    .locals 2

    .line 1202
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1203
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->mCursor:Landroid/database/Cursor;

    sget v1, Lcom/spreadtrum/ims/vowifi/Utilities$CallCursor;->sIndexSupportVideoCall:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
