.class public final Lcom/spreadtrum/ims/acs/ContactUtil$PhoneNumber;
.super Ljava/lang/Object;
.source "ContactUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/acs/ContactUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneNumber"
.end annotation


# instance fields
.field private final mNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput-object p1, p0, Lcom/spreadtrum/ims/acs/ContactUtil$PhoneNumber;->mNumber:Ljava/lang/String;

    .line 492
    return-void
.end method


# virtual methods
.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/ContactUtil$PhoneNumber;->mNumber:Ljava/lang/String;

    return-object v0
.end method
