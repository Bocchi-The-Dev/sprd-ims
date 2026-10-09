.class Lcom/android/imsserviceentitlement/entitlement/EntitlementConfigurationsDataStore;
.super Ljava/lang/Object;
.source "EntitlementConfigurationsDataStore.java"


# static fields
.field private static final sInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/imsserviceentitlement/entitlement/EntitlementConfigurationsDataStore;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfigurationsDataStore;->sInstances:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENTITLEMENT_CHARACTERISTICS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfigurationsDataStore;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/android/imsserviceentitlement/entitlement/EntitlementConfigurationsDataStore;
    .locals 2

    .line 37
    sget-object v0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfigurationsDataStore;->sInstances:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfigurationsDataStore;

    invoke-direct {v1, p0, p1}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfigurationsDataStore;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfigurationsDataStore;

    return-object p0
.end method


# virtual methods
.method public get()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object p0, p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfigurationsDataStore;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "XML_DOCUMENT"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getQueryTimeMillis()J
    .locals 3

    .line 62
    iget-object p0, p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfigurationsDataStore;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "QUERY_TIME_MILLIS"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(Ljava/lang/String;)V
    .locals 2

    .line 50
    iget-object p0, p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfigurationsDataStore;->mPreferences:Landroid/content/SharedPreferences;

    .line 51
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "XML_DOCUMENT"

    .line 52
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p1, "QUERY_TIME_MILLIS"

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 54
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
