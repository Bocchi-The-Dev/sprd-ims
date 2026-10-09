.class public Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spreadtrum/ims/vowifi/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecurityConfig"
.end annotation


# instance fields
.field public _dns4:Ljava/lang/String;

.field public _dns6:Ljava/lang/String;

.field public _imsi:Ljava/lang/String;

.field public _ip4:Ljava/lang/String;

.field public _ip6:Ljava/lang/String;

.field public _isSupportMobike:Z

.field public _pcscf4:Ljava/lang/String;

.field public _pcscf6:Ljava/lang/String;

.field public _prefIPv4:Z

.field public _useIPVersion:I

.field public _voltePcscf:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    const/4 v0, -0x1

    iput v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_useIPVersion:I

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_voltePcscf:Ljava/lang/String;

    .line 471
    iput-object p1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_imsi:Ljava/lang/String;

    .line 472
    iput-object p2, p0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_pcscf4:Ljava/lang/String;

    .line 473
    iput-object p3, p0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_pcscf6:Ljava/lang/String;

    .line 474
    iput-object p4, p0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_dns4:Ljava/lang/String;

    .line 475
    iput-object p5, p0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_dns6:Ljava/lang/String;

    .line 476
    iput-object p6, p0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_ip4:Ljava/lang/String;

    .line 477
    iput-object p7, p0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_ip6:Ljava/lang/String;

    .line 478
    iput-boolean p8, p0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_prefIPv4:Z

    .line 479
    iput-boolean p9, p0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_isSupportMobike:Z

    .line 480
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[pcscf4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_pcscf4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pcscf6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_pcscf6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dns4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_dns4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dns6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_dns6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ip4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_ip4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ip6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_ip6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prefIPv4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_prefIPv4:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportMobike="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spreadtrum/ims/vowifi/Utilities$SecurityConfig;->_isSupportMobike:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
