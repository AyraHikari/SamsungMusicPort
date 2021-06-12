.class public Lcom/samsung/auth/AuthManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/auth/AuthManager$AccessType;
    }
.end annotation


# static fields
.field public static final AD_CODE:I = 0x1

.field public static final IV_CODE:I = 0x2

.field public static final RD_CODE:I = 0x3

.field private static ad:Z

.field private static iv:Z

.field private static mContext:Landroid/content/Context;

.field private static rd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static DCNMS(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/auth/LocaleFontException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 350
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object p0

    :goto_0
    move-object v1, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 352
    :goto_1
    invoke-static {}, Lcom/samsung/auth/AuthManager;->Prepare()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v2

    .line 353
    sget-object p0, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v3

    .line 354
    sget-object p0, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 358
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double v8, v8, v10

    double-to-int p0, v8

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 369
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f3(I[B[B[B[BIJ)[B

    move-result-object p0

    goto :goto_2

    :pswitch_0
    const/4 v0, 0x3

    .line 366
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f2(I[B[B[B[BIJ)[B

    move-result-object p0

    goto :goto_2

    :pswitch_1
    const/4 v0, 0x3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 363
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f1(I[B[B[B[BIJ)[B

    move-result-object p0

    :goto_2
    if-eqz p0, :cond_4

    .line 373
    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object p0

    .line 375
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    rem-int/lit8 v0, v0, 0x7

    if-ne v0, v1, :cond_1

    .line 376
    sput-boolean v1, Lcom/samsung/auth/AuthManager;->ad:Z

    goto :goto_3

    .line 377
    :cond_1
    array-length v0, p0

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    rem-int/lit8 v0, v0, 0x7

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 378
    sput-boolean v1, Lcom/samsung/auth/AuthManager;->iv:Z

    goto :goto_3

    .line 379
    :cond_2
    array-length v0, p0

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    rem-int/lit8 v0, v0, 0x7

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 380
    sput-boolean v1, Lcom/samsung/auth/AuthManager;->rd:Z

    .line 382
    :cond_3
    :goto_3
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, p0

    sub-int/2addr v3, v1

    invoke-direct {v0, p0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    :cond_4
    const-string p0, ""

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static ECDeviceIdS(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/auth/LocaleFontException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 434
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object p0

    :goto_0
    move-object v1, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 436
    :goto_1
    invoke-static {}, Lcom/samsung/auth/AuthManager;->Prepare()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v2

    .line 437
    sget-object p0, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v3

    .line 438
    sget-object p0, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 442
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double v8, v8, v10

    double-to-int p0, v8

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x5

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 453
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f3(I[B[B[B[BIJ)[B

    move-result-object p0

    goto :goto_2

    :pswitch_0
    const/4 v0, 0x5

    .line 450
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f2(I[B[B[B[BIJ)[B

    move-result-object p0

    goto :goto_2

    :pswitch_1
    const/4 v0, 0x5

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 447
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f1(I[B[B[B[BIJ)[B

    move-result-object p0

    :goto_2
    if-eqz p0, :cond_4

    .line 457
    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object p0

    .line 459
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    rem-int/lit8 v0, v0, 0x7

    if-ne v0, v1, :cond_1

    .line 460
    sput-boolean v1, Lcom/samsung/auth/AuthManager;->ad:Z

    goto :goto_3

    .line 461
    :cond_1
    array-length v0, p0

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    rem-int/lit8 v0, v0, 0x7

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 462
    sput-boolean v1, Lcom/samsung/auth/AuthManager;->iv:Z

    goto :goto_3

    .line 463
    :cond_2
    array-length v0, p0

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    rem-int/lit8 v0, v0, 0x7

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 464
    sput-boolean v1, Lcom/samsung/auth/AuthManager;->rd:Z

    .line 466
    :cond_3
    :goto_3
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, p0

    sub-int/2addr v3, v1

    invoke-direct {v0, p0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    :cond_4
    const-string p0, ""

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static ECNMS(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/auth/LocaleFontException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 392
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object p0

    :goto_0
    move-object v1, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 394
    :goto_1
    invoke-static {}, Lcom/samsung/auth/AuthManager;->Prepare()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v2

    .line 395
    sget-object p0, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v3

    .line 396
    sget-object p0, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 399
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double v8, v8, v10

    double-to-int p0, v8

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 411
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f3(I[B[B[B[BIJ)[B

    move-result-object p0

    goto :goto_2

    :pswitch_0
    const/4 v0, 0x4

    .line 408
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f2(I[B[B[B[BIJ)[B

    move-result-object p0

    goto :goto_2

    :pswitch_1
    const/4 v0, 0x4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 405
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f1(I[B[B[B[BIJ)[B

    move-result-object p0

    :goto_2
    if-eqz p0, :cond_4

    .line 415
    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object p0

    .line 417
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    rem-int/lit8 v0, v0, 0x7

    if-ne v0, v1, :cond_1

    .line 418
    sput-boolean v1, Lcom/samsung/auth/AuthManager;->ad:Z

    goto :goto_3

    .line 419
    :cond_1
    array-length v0, p0

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    rem-int/lit8 v0, v0, 0x7

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 420
    sput-boolean v1, Lcom/samsung/auth/AuthManager;->iv:Z

    goto :goto_3

    .line 421
    :cond_2
    array-length v0, p0

    sub-int/2addr v0, v1

    aget-byte v0, p0, v0

    rem-int/lit8 v0, v0, 0x7

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 422
    sput-boolean v1, Lcom/samsung/auth/AuthManager;->rd:Z

    .line 424
    :cond_3
    :goto_3
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, p0

    sub-int/2addr v3, v1

    invoke-direct {v0, p0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    :cond_4
    const-string p0, ""

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static GetAccessKey(Landroid/content/Context;Lcom/samsung/auth/AuthManager$AccessType;JLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 295
    invoke-static {p1}, Lcom/samsung/auth/AuthManager;->getIntegerAccessType(Lcom/samsung/auth/AuthManager$AccessType;)I

    move-result p0

    .line 297
    invoke-static {p0, p2, p3, p4}, Lcom/samsung/auth/AuthManager;->GetAccessKeyS(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized GetAccessKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-class v0, Lcom/samsung/auth/AuthManager;

    monitor-enter v0

    .line 43
    :try_start_0
    invoke-static {p1}, Lcom/samsung/auth/AuthManager;->convertTimeFormatToTickCount(Ljava/lang/String;)J

    move-result-wide v1

    .line 44
    sget-object p1, Lcom/samsung/auth/AuthManager$AccessType;->MusicRadio:Lcom/samsung/auth/AuthManager$AccessType;

    .line 45
    invoke-static {p0, p1, v1, v2, p2}, Lcom/samsung/auth/AuthManager;->GetAccessKey(Landroid/content/Context;Lcom/samsung/auth/AuthManager$AccessType;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 41
    monitor-exit v0

    throw p0
.end method

.method private static GetAccessKeyS(IJLjava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 305
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object p3

    move-object v2, p3

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 307
    :goto_0
    invoke-static {}, Lcom/samsung/auth/AuthManager;->Prepare()[B

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v3

    .line 308
    sget-object p3, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v4

    .line 309
    sget-object p3, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v5

    .line 313
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    mul-double v6, v6, v8

    double-to-int p3, v6

    packed-switch p3, :pswitch_data_0

    const/4 v1, 0x2

    move v6, p0

    move-wide v7, p1

    .line 325
    :try_start_0
    invoke-static/range {v1 .. v8}, Lcom/samsung/auth/Locale;->f3(I[B[B[B[BIJ)[B

    move-result-object p0

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x2

    move v6, p0

    move-wide v7, p1

    .line 322
    invoke-static/range {v1 .. v8}, Lcom/samsung/auth/Locale;->f2(I[B[B[B[BIJ)[B

    move-result-object p0

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x2

    move v6, p0

    move-wide v7, p1

    .line 319
    invoke-static/range {v1 .. v8}, Lcom/samsung/auth/Locale;->f1(I[B[B[B[BIJ)[B

    move-result-object p0
    :try_end_0
    .catch Lcom/samsung/auth/LocaleFontException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 329
    invoke-virtual {p0}, Lcom/samsung/auth/LocaleFontException;->printStackTrace()V

    :goto_2
    if-eqz v0, :cond_4

    .line 332
    invoke-static {v0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object p0

    .line 334
    array-length p1, p0

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    aget-byte p1, p0, p1

    rem-int/lit8 p1, p1, 0x7

    if-ne p1, p2, :cond_1

    .line 335
    sput-boolean p2, Lcom/samsung/auth/AuthManager;->ad:Z

    goto :goto_3

    .line 336
    :cond_1
    array-length p1, p0

    sub-int/2addr p1, p2

    aget-byte p1, p0, p1

    rem-int/lit8 p1, p1, 0x7

    const/4 p3, 0x2

    if-ne p1, p3, :cond_2

    .line 337
    sput-boolean p2, Lcom/samsung/auth/AuthManager;->iv:Z

    goto :goto_3

    .line 338
    :cond_2
    array-length p1, p0

    sub-int/2addr p1, p2

    aget-byte p1, p0, p1

    rem-int/lit8 p1, p1, 0x7

    const/4 p3, 0x3

    if-ne p1, p3, :cond_3

    .line 339
    sput-boolean p2, Lcom/samsung/auth/AuthManager;->rd:Z

    .line 341
    :cond_3
    :goto_3
    new-instance p1, Ljava/lang/String;

    const/4 p3, 0x0

    array-length v0, p0

    sub-int/2addr v0, p2

    invoke-direct {p1, p0, p3, v0}, Ljava/lang/String;-><init>([BII)V

    return-object p1

    :cond_4
    const-string p0, ""

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static Prepare()[B
    .locals 6

    .line 280
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    .line 282
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0xa

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    const/16 v5, 0x60

    .line 287
    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v5, v2

    int-to-char v5, v5

    .line 288
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static Resolver([B)[B
    .locals 3

    const/4 v0, 0x0

    .line 269
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 271
    rem-int/lit8 v1, v0, 0x4

    mul-int/lit8 v1, v1, 0x8

    const v2, 0x6fea9814

    shr-int v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    .line 273
    aget-byte v2, p0, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static declared-synchronized Uninitialize()V
    .locals 13

    const-class v0, Lcom/samsung/auth/AuthManager;

    monitor-enter v0

    const/4 v1, 0x1

    .line 209
    :try_start_0
    invoke-static {}, Lcom/samsung/auth/AuthManager;->Prepare()[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v4

    .line 210
    invoke-static {}, Lcom/samsung/auth/AuthManager;->Prepare()[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v5

    .line 211
    sget-object v2, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v6

    .line 212
    sget-object v2, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    .line 216
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    mul-double v2, v2, v11

    double-to-int v2, v2

    packed-switch v2, :pswitch_data_0

    const/4 v3, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    .line 227
    :try_start_1
    invoke-static/range {v3 .. v10}, Lcom/samsung/auth/Locale;->f3(I[B[B[B[BIJ)[B

    goto :goto_0

    :pswitch_0
    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move v6, v8

    move-wide v7, v9

    .line 224
    invoke-static/range {v1 .. v8}, Lcom/samsung/auth/Locale;->f2(I[B[B[B[BIJ)[B

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    .line 221
    invoke-static/range {v3 .. v10}, Lcom/samsung/auth/Locale;->f1(I[B[B[B[BIJ)[B
    :try_end_1
    .catch Lcom/samsung/auth/LocaleFontException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 231
    :try_start_2
    invoke-virtual {v1}, Lcom/samsung/auth/LocaleFontException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 207
    monitor-exit v0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertTimeFormatToTickCount(Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 238
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v0, "UTC"

    .line 239
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 240
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 241
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 242
    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static declared-synchronized getDecoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/samsung/auth/AuthManager;

    monitor-enter v0

    .line 103
    :try_start_0
    sget-object v1, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 104
    monitor-exit v0

    return-object v2

    :cond_0
    if-eqz p0, :cond_4

    .line 105
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->DCNMS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Lcom/samsung/auth/LocaleFontException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    if-eqz p0, :cond_2

    :try_start_3
    const-string v1, "Fail"

    .line 116
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_0

    .line 119
    :cond_2
    monitor-exit v0

    return-object p0

    .line 117
    :cond_3
    :goto_0
    monitor-exit v0

    return-object v2

    :catch_0
    move-exception p0

    .line 112
    :try_start_4
    invoke-virtual {p0}, Lcom/samsung/auth/LocaleFontException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    monitor-exit v0

    return-object v2

    .line 106
    :cond_4
    :goto_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 101
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/samsung/auth/AuthManager;

    monitor-enter v0

    .line 125
    :try_start_0
    sget-object v1, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 126
    monitor-exit v0

    return-object v2

    :cond_0
    if-eqz p0, :cond_4

    .line 127
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->ECNMS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Lcom/samsung/auth/LocaleFontException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    if-eqz p0, :cond_2

    :try_start_3
    const-string v1, "Fail"

    .line 138
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_0

    .line 141
    :cond_2
    monitor-exit v0

    return-object p0

    .line 139
    :cond_3
    :goto_0
    monitor-exit v0

    return-object v2

    :catch_0
    move-exception p0

    .line 134
    :try_start_4
    invoke-virtual {p0}, Lcom/samsung/auth/LocaleFontException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    monitor-exit v0

    return-object v2

    .line 128
    :cond_4
    :goto_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 123
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getEncodingDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/samsung/auth/AuthManager;

    monitor-enter v0

    .line 147
    :try_start_0
    sget-object v1, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 148
    monitor-exit v0

    return-object v2

    :cond_0
    if-eqz p0, :cond_4

    .line 149
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    goto :goto_2

    .line 154
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->ECDeviceIdS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Lcom/samsung/auth/LocaleFontException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 157
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/auth/LocaleFontException;->printStackTrace()V

    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_3

    if-eqz p0, :cond_2

    const-string v1, "Fail"

    .line 160
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_1

    .line 164
    :cond_2
    monitor-exit v0

    return-object p0

    .line 161
    :cond_3
    :goto_1
    monitor-exit v0

    return-object v2

    .line 150
    :cond_4
    :goto_2
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 145
    monitor-exit v0

    throw p0
.end method

.method private static getIntegerAccessType(Lcom/samsung/auth/AuthManager$AccessType;)I
    .locals 1

    .line 248
    sget-object v0, Lcom/samsung/auth/AuthManager$1;->$SwitchMap$com$samsung$auth$AuthManager$AccessType:[I

    invoke-virtual {p0}, Lcom/samsung/auth/AuthManager$AccessType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    :goto_0
    :pswitch_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getRDInfo()Ljava/lang/String;
    .locals 14

    const-class v0, Lcom/samsung/auth/AuthManager;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v2, 0x6

    .line 57
    :try_start_1
    invoke-static {}, Lcom/samsung/auth/AuthManager;->Prepare()[B

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v4

    .line 58
    invoke-static {}, Lcom/samsung/auth/AuthManager;->Prepare()[B

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v5

    .line 59
    sget-object v1, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v6

    .line 60
    sget-object v1, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v7

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    .line 63
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    mul-double v10, v10, v12

    double-to-int v3, v10

    const/4 v11, 0x0

    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x6

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    .line 76
    :try_start_2
    invoke-static/range {v3 .. v10}, Lcom/samsung/auth/Locale;->f1(I[B[B[B[BIJ)[B

    move-result-object v1

    goto :goto_0

    :pswitch_0
    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v1

    .line 73
    invoke-static/range {v2 .. v9}, Lcom/samsung/auth/Locale;->f1(I[B[B[B[BIJ)[B

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x6

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    .line 70
    invoke-static/range {v3 .. v10}, Lcom/samsung/auth/Locale;->f1(I[B[B[B[BIJ)[B

    move-result-object v1
    :try_end_2
    .catch Lcom/samsung/auth/LocaleFontException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    move-object v11, v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 81
    :try_start_3
    invoke-virtual {v1}, Lcom/samsung/auth/LocaleFontException;->printStackTrace()V

    :goto_1
    if-nez v11, :cond_1

    const-string v1, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    monitor-exit v0

    return-object v1

    .line 86
    :cond_1
    :try_start_4
    invoke-static {v11}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    :try_start_5
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v3, "Fail"

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ""
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 90
    monitor-exit v0

    return-object v2

    :catch_1
    move-exception v2

    .line 94
    :try_start_6
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 97
    :cond_2
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 50
    monitor-exit v0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getStatus()I
    .locals 3

    const-class v0, Lcom/samsung/auth/AuthManager;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-boolean v1, Lcom/samsung/auth/AuthManager;->ad:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 31
    monitor-exit v0

    return v2

    .line 32
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/samsung/auth/AuthManager;->iv:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    .line 33
    monitor-exit v0

    return v1

    .line 34
    :cond_1
    :try_start_2
    sget-boolean v1, Lcom/samsung/auth/AuthManager;->rd:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 35
    monitor-exit v0

    return v1

    :cond_2
    const/4 v1, 0x0

    .line 37
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 29
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/auth/LocaleFontException;
        }
    .end annotation

    const-class v0, Lcom/samsung/auth/AuthManager;

    monitor-enter v0

    .line 169
    :try_start_0
    sput-object p0, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 172
    invoke-static {p0}, Lcom/samsung/auth/SDRMUtil;->GetAuthDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v4

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v5

    .line 174
    sget-object v2, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v6

    .line 175
    sget-object v2, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    .line 178
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    mul-double v2, v2, v11

    double-to-int v2, v2

    const/4 v11, 0x0

    .line 182
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/auth/Locale;->setApplicationInfo(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v2, :pswitch_data_0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    .line 193
    invoke-static/range {v3 .. v10}, Lcom/samsung/auth/Locale;->f3(I[B[B[B[BIJ)[B

    move-result-object p0

    goto :goto_0

    :pswitch_0
    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move v6, v8

    move-wide v7, v9

    .line 190
    invoke-static/range {v1 .. v8}, Lcom/samsung/auth/Locale;->f2(I[B[B[B[BIJ)[B

    move-result-object p0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    .line 187
    invoke-static/range {v3 .. v10}, Lcom/samsung/auth/Locale;->f1(I[B[B[B[BIJ)[B

    move-result-object p0

    :goto_0
    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 197
    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object p0

    .line 198
    new-instance v11, Ljava/lang/String;

    array-length v2, p0

    invoke-direct {v11, p0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    :cond_0
    if-eqz v11, :cond_1

    const-string p0, "Success"

    .line 202
    invoke-virtual {v11, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    monitor-exit v0

    return v1

    :cond_1
    const/4 p0, 0x1

    .line 203
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 168
    monitor-exit v0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
