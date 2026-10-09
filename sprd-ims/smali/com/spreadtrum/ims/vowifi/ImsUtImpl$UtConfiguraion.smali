.class Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;
.super Landroid/database/CursorWrapper;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UtConfiguraion"
.end annotation


# static fields
.field private static final COL_UT_CB:Ljava/lang/String; = "utCB"

.field private static final COL_UT_CF:Ljava/lang/String; = "utCF"

.field private static final COL_UT_CLIP:Ljava/lang/String; = "utCLIP"

.field private static final COL_UT_CLIR:Ljava/lang/String; = "utCLIR"

.field private static final COL_UT_COLP:Ljava/lang/String; = "utCOLP"

.field private static final COL_UT_COLR:Ljava/lang/String; = "utCOLR"

.field private static final COL_UT_CW:Ljava/lang/String; = "utCW"

.field private static final COL_UT_SUPPORT:Ljava/lang/String; = "utSupport"

.field private static final SUPPORT_TYPE_QUERY:I = 0x1

.field private static final SUPPORT_TYPE_UPDATE:I = 0x2

.field private static sIndexUtCB:I

.field private static sIndexUtCF:I

.field private static sIndexUtCLIP:I

.field private static sIndexUtCLIR:I

.field private static sIndexUtCOLP:I

.field private static sIndexUtCOLR:I

.field private static sIndexUtCW:I

.field private static sIndexUtSupport:I


# instance fields
.field private mSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1921
    const/4 v0, -0x1

    sput v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtSupport:I

    .line 1922
    sput v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtCW:I

    .line 1923
    sput v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtCF:I

    .line 1924
    sput v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtCB:I

    .line 1925
    sput v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtCLIR:I

    .line 1926
    sput v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtCLIP:I

    .line 1927
    sput v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtCOLR:I

    .line 1928
    sput v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtCOLP:I

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .line 1933
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1930
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mSupport:Z

    .line 1935
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1936
    return-void

    .line 1939
    :cond_0
    sget v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtSupport:I

    if-gez v0, :cond_1

    .line 1940
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mCursor:Landroid/database/Cursor;

    const-string v1, "utSupport"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtSupport:I

    .line 1941
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mCursor:Landroid/database/Cursor;

    const-string v1, "utCW"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtCW:I

    .line 1942
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mCursor:Landroid/database/Cursor;

    const-string v1, "utCF"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtCF:I

    .line 1943
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mCursor:Landroid/database/Cursor;

    const-string v1, "utCB"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtCB:I

    .line 1944
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mCursor:Landroid/database/Cursor;

    const-string v1, "utCLIR"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtCLIR:I

    .line 1945
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mCursor:Landroid/database/Cursor;

    const-string v1, "utCLIP"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtCLIP:I

    .line 1946
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mCursor:Landroid/database/Cursor;

    const-string v1, "utCOLR"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtCOLR:I

    .line 1947
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mCursor:Landroid/database/Cursor;

    const-string v1, "utCOLP"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtCOLP:I

    .line 1951
    :cond_1
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1952
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mCursor:Landroid/database/Cursor;

    sget v1, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtSupport:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2

    const/4 p1, 0x1

    :cond_2
    iput-boolean p1, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mSupport:Z

    .line 1953
    return-void
.end method


# virtual methods
.method public isCBSupport(I)Z
    .locals 3

    .line 1972
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mSupport:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1973
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mCursor:Landroid/database/Cursor;

    sget v2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtCB:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    and-int/2addr p1, v0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1975
    :cond_1
    return v1
.end method

.method public isCFSupport(I)Z
    .locals 3

    .line 1964
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mSupport:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1965
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mCursor:Landroid/database/Cursor;

    sget v2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtCF:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    and-int/2addr p1, v0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1967
    :cond_1
    return v1
.end method

.method public isCLIPSupport(I)Z
    .locals 3

    .line 1988
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mSupport:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1989
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mCursor:Landroid/database/Cursor;

    sget v2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtCLIP:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    and-int/2addr p1, v0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1991
    :cond_1
    return v1
.end method

.method public isCLIRSupport(I)Z
    .locals 3

    .line 1980
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mSupport:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1981
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mCursor:Landroid/database/Cursor;

    sget v2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtCLIR:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    and-int/2addr p1, v0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1983
    :cond_1
    return v1
.end method

.method public isCOLPSupport(I)Z
    .locals 3

    .line 2004
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mSupport:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2005
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mCursor:Landroid/database/Cursor;

    sget v2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtCOLP:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    and-int/2addr p1, v0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2007
    :cond_1
    return v1
.end method

.method public isCOLRSupport(I)Z
    .locals 3

    .line 1996
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mSupport:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1997
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mCursor:Landroid/database/Cursor;

    sget v2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtCOLR:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    and-int/2addr p1, v0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1999
    :cond_1
    return v1
.end method

.method public isCWSupport(I)Z
    .locals 3

    .line 1956
    iget-boolean v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mSupport:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1957
    iget-object v0, p0, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->mCursor:Landroid/database/Cursor;

    sget v2, Lcom/spreadtrum/ims/vowifi/ImsUtImpl$UtConfiguraion;->sIndexUtCW:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    and-int/2addr p1, v0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1959
    :cond_1
    return v1
.end method
