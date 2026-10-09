.class public final enum Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;
.super Ljava/lang/Enum;
.source "EntitlementConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

.field public static final enum NEEDS_TO_RESET:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

.field public static final enum NEEDS_TO_RESET_EXCEPT_VERS:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

.field public static final enum NEEDS_TO_RESET_EXCEPT_VERS_UNTIL_SETTING_ON:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

.field public static final enum UNKNOWN_BEHAVIOR:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

.field public static final enum VALID_DURING_VALIDITY:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

.field public static final enum VALID_WITHOUT_DURATION:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 158
    new-instance v0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    const-string v1, "UNKNOWN_BEHAVIOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->UNKNOWN_BEHAVIOR:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    .line 160
    new-instance v1, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    const-string v3, "VALID_DURING_VALIDITY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->VALID_DURING_VALIDITY:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    .line 162
    new-instance v3, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    const-string v5, "VALID_WITHOUT_DURATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->VALID_WITHOUT_DURATION:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    .line 164
    new-instance v5, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    const-string v7, "NEEDS_TO_RESET"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->NEEDS_TO_RESET:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    .line 170
    new-instance v7, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    const-string v9, "NEEDS_TO_RESET_EXCEPT_VERS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->NEEDS_TO_RESET_EXCEPT_VERS:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    .line 176
    new-instance v9, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    const-string v11, "NEEDS_TO_RESET_EXCEPT_VERS_UNTIL_SETTING_ON"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->NEEDS_TO_RESET_EXCEPT_VERS_UNTIL_SETTING_ON:Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 156
    sput-object v11, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->$VALUES:[Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;
    .locals 1

    .line 156
    const-class v0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    return-object p0
.end method

.method public static values()[Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;
    .locals 1

    .line 156
    sget-object v0, Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->$VALUES:[Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    invoke-virtual {v0}, [Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/imsserviceentitlement/entitlement/EntitlementConfiguration$ClientBehavior;

    return-object v0
.end method
