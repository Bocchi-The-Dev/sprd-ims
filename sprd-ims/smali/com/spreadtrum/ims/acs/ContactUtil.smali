.class public Lcom/spreadtrum/ims/acs/ContactUtil;
.super Ljava/lang/Object;
.source "ContactUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/spreadtrum/ims/acs/ContactUtil$PhoneNumber;
    }
.end annotation


# static fields
.field private static final COUNTRY_AREA_CODE_IDX:I = 0x1

.field private static final COUNTRY_CODE_IDX:I = 0x0

.field private static final COUNTRY_CODE_PREFIX:Ljava/lang/String; = "+"

.field private static final LOG_TAG:Ljava/lang/String; = "ContactUtil"

.field private static final MCC_UNDEFINED:I = 0x0

.field private static final MSISDN_PREFIX_INTERNATIONAL:Ljava/lang/String; = "00"

.field private static final PATTERN_CONTACT:Ljava/util/regex/Pattern;

.field private static final REGEXP_CONTACT:Ljava/lang/String; = "^00\\d{1,15}$|^[+]?\\d{1,15}$|^\\d{1,15}$"

.field private static final sCountryCodes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sInstance:Lcom/spreadtrum/ims/acs/ContactUtil;


# instance fields
.field private mCountryAreaCode:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private final mCtx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-string v0, "^00\\d{1,15}$|^[+]?\\d{1,15}$|^\\d{1,15}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/spreadtrum/ims/acs/ContactUtil;->PATTERN_CONTACT:Ljava/util/regex/Pattern;

    .line 79
    new-instance v0, Lcom/spreadtrum/ims/acs/ContactUtil$1;

    invoke-direct {v0}, Lcom/spreadtrum/ims/acs/ContactUtil$1;-><init>()V

    sput-object v0, Lcom/spreadtrum/ims/acs/ContactUtil;->sCountryCodes:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Lcom/spreadtrum/ims/acs/ContactUtil;->mCtx:Landroid/content/Context;

    .line 329
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/spreadtrum/ims/acs/ContactUtil;
    .locals 2

    .line 335
    sget-object v0, Lcom/spreadtrum/ims/acs/ContactUtil;->sInstance:Lcom/spreadtrum/ims/acs/ContactUtil;

    if-eqz v0, :cond_0

    .line 336
    sget-object p0, Lcom/spreadtrum/ims/acs/ContactUtil;->sInstance:Lcom/spreadtrum/ims/acs/ContactUtil;

    return-object p0

    .line 338
    :cond_0
    const-class v0, Lcom/spreadtrum/ims/acs/ContactUtil;

    monitor-enter v0

    .line 339
    :try_start_0
    sget-object v1, Lcom/spreadtrum/ims/acs/ContactUtil;->sInstance:Lcom/spreadtrum/ims/acs/ContactUtil;

    if-nez v1, :cond_2

    .line 340
    if-eqz p0, :cond_1

    .line 343
    new-instance v1, Lcom/spreadtrum/ims/acs/ContactUtil;

    invoke-direct {v1, p0}, Lcom/spreadtrum/ims/acs/ContactUtil;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/spreadtrum/ims/acs/ContactUtil;->sInstance:Lcom/spreadtrum/ims/acs/ContactUtil;

    goto :goto_0

    .line 341
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context is null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 345
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    sget-object p0, Lcom/spreadtrum/ims/acs/ContactUtil;->sInstance:Lcom/spreadtrum/ims/acs/ContactUtil;

    return-object p0

    .line 345
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 364
    const-string v0, "[ -]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 365
    sget-object v0, Lcom/spreadtrum/ims/acs/ContactUtil;->PATTERN_CONTACT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 366
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 369
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private tryToDetermineAndCacheCountryAndAreaCodes()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/spreadtrum/ims/acs/RcsPermissionDeniedException;
        }
    .end annotation

    .line 442
    const-class v0, Lcom/spreadtrum/ims/acs/ContactUtil;

    monitor-enter v0

    .line 443
    :try_start_0
    iget-object v1, p0, Lcom/spreadtrum/ims/acs/ContactUtil;->mCountryCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 444
    monitor-exit v0

    return-void

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/spreadtrum/ims/acs/ContactUtil;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 448
    sget-object v2, Lcom/spreadtrum/ims/acs/ContactUtil;->sCountryCodes:Landroid/util/SparseArray;

    iget v3, v1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 449
    if-eqz v2, :cond_2

    .line 453
    const/4 v1, 0x0

    aget-object v1, v2, v1

    .line 454
    const-string v3, "+"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/spreadtrum/ims/acs/ContactUtil;->mCountryCode:Ljava/lang/String;

    .line 455
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/spreadtrum/ims/acs/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    .line 456
    array-length v1, v2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 458
    const/4 v1, 0x1

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/spreadtrum/ims/acs/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    .line 460
    :cond_1
    monitor-exit v0

    .line 461
    return-void

    .line 450
    :cond_2
    new-instance v2, Lcom/spreadtrum/ims/acs/RcsPermissionDeniedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get mobile country code ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/spreadtrum/ims/acs/RcsPermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 460
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public createContactIdFromValidatedData(Lcom/spreadtrum/ims/acs/ContactUtil$PhoneNumber;)Lcom/spreadtrum/ims/acs/ContactId;
    .locals 3

    .line 468
    :try_start_0
    invoke-virtual {p1}, Lcom/spreadtrum/ims/acs/ContactUtil$PhoneNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spreadtrum/ims/acs/ContactUtil;->formatContact(Ljava/lang/String;)Lcom/spreadtrum/ims/acs/ContactId;

    move-result-object p1
    :try_end_0
    .catch Lcom/spreadtrum/ims/acs/RcsPermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 470
    :catch_0
    move-exception v0

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone number \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' cannot be converted into contactId!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 477
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public formatContact(Ljava/lang/String;)Lcom/spreadtrum/ims/acs/ContactId;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/spreadtrum/ims/acs/RcsPermissionDeniedException;
        }
    .end annotation

    .line 404
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 407
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/ContactUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 412
    const-string p1, "+"

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    new-instance p1, Lcom/spreadtrum/ims/acs/ContactId;

    invoke-direct {p1, v0}, Lcom/spreadtrum/ims/acs/ContactId;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 416
    :cond_0
    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    new-instance v2, Lcom/spreadtrum/ims/acs/ContactId;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 417
    invoke-virtual {v3, v0, p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 418
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/spreadtrum/ims/acs/ContactId;-><init>(Ljava/lang/String;)V

    .line 417
    return-object v2

    .line 424
    :cond_1
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/ContactUtil;->mCountryCode:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 425
    invoke-direct {p0}, Lcom/spreadtrum/ims/acs/ContactUtil;->tryToDetermineAndCacheCountryAndAreaCodes()V

    .line 428
    :cond_2
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 430
    new-instance p1, Lcom/spreadtrum/ims/acs/ContactId;

    iget-object v1, p0, Lcom/spreadtrum/ims/acs/ContactUtil;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/spreadtrum/ims/acs/ContactId;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 433
    :cond_3
    iget-object p1, p0, Lcom/spreadtrum/ims/acs/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 435
    new-instance p1, Lcom/spreadtrum/ims/acs/ContactId;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/spreadtrum/ims/acs/ContactUtil;->mCountryCode:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/spreadtrum/ims/acs/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    .line 436
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 435
    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/spreadtrum/ims/acs/ContactId;-><init>(Ljava/lang/String;)V

    .line 435
    return-object p1

    .line 438
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local phone number \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' should be prefixed with Country Area Code ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spreadtrum/ims/acs/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 409
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contact \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' has invalid characters or is too long!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input parameter is null or empty!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getValidPhoneNumberFromAndroid(Ljava/lang/String;)Lcom/spreadtrum/ims/acs/ContactUtil$PhoneNumber;
    .locals 3

    .line 351
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/spreadtrum/ims/acs/ContactUtil;->isValidContact(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Lcom/spreadtrum/ims/acs/ContactUtil$PhoneNumber;

    invoke-direct {v0, p1}, Lcom/spreadtrum/ims/acs/ContactUtil$PhoneNumber;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/spreadtrum/ims/acs/RcsPermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 356
    :cond_0
    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to validate phone number from Android \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ContactUtil"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isValidContact(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/spreadtrum/ims/acs/RcsPermissionDeniedException;
        }
    .end annotation

    .line 376
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 377
    return v1

    .line 379
    :cond_0
    invoke-direct {p0, p1}, Lcom/spreadtrum/ims/acs/ContactUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 380
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    return v1

    .line 383
    :cond_1
    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 384
    return v2

    .line 386
    :cond_2
    const-string v0, "00"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 387
    return v2

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/ContactUtil;->mCountryCode:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 394
    invoke-direct {p0}, Lcom/spreadtrum/ims/acs/ContactUtil;->tryToDetermineAndCacheCountryAndAreaCodes()V

    .line 397
    :cond_4
    iget-object v0, p0, Lcom/spreadtrum/ims/acs/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/spreadtrum/ims/acs/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1
.end method
