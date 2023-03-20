.class public Lcom/samsung/auth/AuthManager;
.super Ljava/lang/Object;
.source "AuthManager.java"


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

.field private static ad:Z = false

.field private static iv:Z = false

.field private static mContext:Landroid/content/Context; = null

.field private static rd:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static DCNMS(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v1, p0

    .line 2
    invoke-static {}, Lcom/samsung/auth/AuthManager;->Prepare()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v2

    .line 3
    sget-object p0, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v3

    .line 4
    sget-object p0, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double/2addr v8, v10

    double-to-int p0, v8

    const/4 v8, 0x1

    if-eqz p0, :cond_2

    if-eq p0, v8, :cond_1

    const/4 v0, 0x3

    .line 6
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f3(I[B[B[B[BIJ)[B

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 7
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f2(I[B[B[B[BIJ)[B

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 8
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f1(I[B[B[B[BIJ)[B

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_6

    .line 9
    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object p0

    .line 10
    array-length v0, p0

    sub-int/2addr v0, v8

    aget-byte v0, p0, v0

    rem-int/lit8 v0, v0, 0x7

    if-ne v0, v8, :cond_3

    .line 11
    sput-boolean v8, Lcom/samsung/auth/AuthManager;->ad:Z

    goto :goto_2

    .line 12
    :cond_3
    array-length v0, p0

    sub-int/2addr v0, v8

    aget-byte v0, p0, v0

    rem-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 13
    sput-boolean v8, Lcom/samsung/auth/AuthManager;->iv:Z

    goto :goto_2

    .line 14
    :cond_4
    array-length v0, p0

    sub-int/2addr v0, v8

    aget-byte v0, p0, v0

    rem-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 15
    sput-boolean v8, Lcom/samsung/auth/AuthManager;->rd:Z

    .line 16
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    sub-int/2addr v2, v8

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    :cond_6
    const-string p0, ""

    return-object p0
.end method

.method private static ECDeviceIdS(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v1, p0

    .line 2
    invoke-static {}, Lcom/samsung/auth/AuthManager;->Prepare()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v2

    .line 3
    sget-object p0, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v3

    .line 4
    sget-object p0, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double/2addr v8, v10

    double-to-int p0, v8

    const/4 v8, 0x1

    if-eqz p0, :cond_2

    if-eq p0, v8, :cond_1

    const/4 v0, 0x5

    .line 6
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f3(I[B[B[B[BIJ)[B

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 7
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f2(I[B[B[B[BIJ)[B

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 v0, 0x5

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 8
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f1(I[B[B[B[BIJ)[B

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_6

    .line 9
    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object p0

    .line 10
    array-length v0, p0

    sub-int/2addr v0, v8

    aget-byte v0, p0, v0

    rem-int/lit8 v0, v0, 0x7

    if-ne v0, v8, :cond_3

    .line 11
    sput-boolean v8, Lcom/samsung/auth/AuthManager;->ad:Z

    goto :goto_2

    .line 12
    :cond_3
    array-length v0, p0

    sub-int/2addr v0, v8

    aget-byte v0, p0, v0

    rem-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 13
    sput-boolean v8, Lcom/samsung/auth/AuthManager;->iv:Z

    goto :goto_2

    .line 14
    :cond_4
    array-length v0, p0

    sub-int/2addr v0, v8

    aget-byte v0, p0, v0

    rem-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 15
    sput-boolean v8, Lcom/samsung/auth/AuthManager;->rd:Z

    .line 16
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    sub-int/2addr v2, v8

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    :cond_6
    const-string p0, ""

    return-object p0
.end method

.method private static ECNMS(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v1, p0

    .line 2
    invoke-static {}, Lcom/samsung/auth/AuthManager;->Prepare()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v2

    .line 3
    sget-object p0, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v3

    .line 4
    sget-object p0, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double/2addr v8, v10

    double-to-int p0, v8

    const/4 v8, 0x1

    if-eqz p0, :cond_2

    if-eq p0, v8, :cond_1

    const/4 v0, 0x4

    .line 6
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f3(I[B[B[B[BIJ)[B

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 7
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f2(I[B[B[B[BIJ)[B

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    .line 8
    invoke-static/range {v0 .. v7}, Lcom/samsung/auth/Locale;->f1(I[B[B[B[BIJ)[B

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_6

    .line 9
    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object p0

    .line 10
    array-length v0, p0

    sub-int/2addr v0, v8

    aget-byte v0, p0, v0

    rem-int/lit8 v0, v0, 0x7

    if-ne v0, v8, :cond_3

    .line 11
    sput-boolean v8, Lcom/samsung/auth/AuthManager;->ad:Z

    goto :goto_2

    .line 12
    :cond_3
    array-length v0, p0

    sub-int/2addr v0, v8

    aget-byte v0, p0, v0

    rem-int/lit8 v0, v0, 0x7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 13
    sput-boolean v8, Lcom/samsung/auth/AuthManager;->iv:Z

    goto :goto_2

    .line 14
    :cond_4
    array-length v0, p0

    sub-int/2addr v0, v8

    aget-byte v0, p0, v0

    rem-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 15
    sput-boolean v8, Lcom/samsung/auth/AuthManager;->rd:Z

    .line 16
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    sub-int/2addr v2, v8

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    :cond_6
    const-string p0, ""

    return-object p0
.end method

.method private static GetAccessKey(Lcom/samsung/auth/AuthManager$AccessType;JLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 5
    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->getIntegerAccessType(Lcom/samsung/auth/AuthManager$AccessType;)I

    move-result p0

    .line 6
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/auth/AuthManager;->GetAccessKeyS(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized GetAccessKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/samsung/auth/AuthManager;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->convertTimeFormatToTickCount(Ljava/lang/String;)J

    move-result-wide v1

    .line 2
    sget-object p0, Lcom/samsung/auth/AuthManager$AccessType;->MusicRadio:Lcom/samsung/auth/AuthManager$AccessType;

    .line 3
    invoke-static {p0, v1, v2, p1}, Lcom/samsung/auth/AuthManager;->GetAccessKey(Lcom/samsung/auth/AuthManager$AccessType;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static GetAccessKeyS(IJLjava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object p3

    move-object v2, p3

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 2
    :goto_0
    invoke-static {}, Lcom/samsung/auth/AuthManager;->Prepare()[B

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v3

    .line 3
    sget-object p3, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v4

    .line 4
    sget-object p3, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v5

    .line 5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v8

    double-to-int p3, v6

    const/4 v9, 0x1

    if-eqz p3, :cond_2

    if-eq p3, v9, :cond_1

    const/4 v1, 0x2

    move v6, p0

    move-wide v7, p1

    .line 6
    :try_start_0
    invoke-static/range {v1 .. v8}, Lcom/samsung/auth/Locale;->f3(I[B[B[B[BIJ)[B

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    move v6, p0

    move-wide v7, p1

    .line 7
    invoke-static/range {v1 .. v8}, Lcom/samsung/auth/Locale;->f2(I[B[B[B[BIJ)[B

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    move v6, p0

    move-wide v7, p1

    .line 8
    invoke-static/range {v1 .. v8}, Lcom/samsung/auth/Locale;->f1(I[B[B[B[BIJ)[B

    move-result-object p0
    :try_end_0
    .catch Lcom/samsung/auth/LocaleFontException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    if-eqz v0, :cond_6

    .line 10
    invoke-static {v0}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object p0

    .line 11
    array-length p1, p0

    sub-int/2addr p1, v9

    aget-byte p1, p0, p1

    rem-int/lit8 p1, p1, 0x7

    if-ne p1, v9, :cond_3

    .line 12
    sput-boolean v9, Lcom/samsung/auth/AuthManager;->ad:Z

    goto :goto_3

    .line 13
    :cond_3
    array-length p1, p0

    sub-int/2addr p1, v9

    aget-byte p1, p0, p1

    rem-int/lit8 p1, p1, 0x7

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 14
    sput-boolean v9, Lcom/samsung/auth/AuthManager;->iv:Z

    goto :goto_3

    .line 15
    :cond_4
    array-length p1, p0

    sub-int/2addr p1, v9

    aget-byte p1, p0, p1

    rem-int/lit8 p1, p1, 0x7

    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    .line 16
    sput-boolean v9, Lcom/samsung/auth/AuthManager;->rd:Z

    .line 17
    :cond_5
    :goto_3
    new-instance p1, Ljava/lang/String;

    const/4 p2, 0x0

    array-length p3, p0

    sub-int/2addr p3, v9

    invoke-direct {p1, p0, p2, p3}, Ljava/lang/String;-><init>([BII)V

    return-object p1

    :cond_6
    const-string p0, ""

    return-object p0
.end method

.method private static Prepare()[B
    .locals 6

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0xa

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    const/16 v5, 0x60

    .line 4
    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v5, v2

    int-to-char v5, v5

    .line 5
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
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

    .line 1
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 2
    rem-int/lit8 v1, v0, 0x4

    mul-int/lit8 v1, v1, 0x8

    const v2, 0x6fea9814

    shr-int v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    .line 3
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

    .line 1
    :try_start_0
    invoke-static {}, Lcom/samsung/auth/AuthManager;->Prepare()[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v4

    .line 2
    invoke-static {}, Lcom/samsung/auth/AuthManager;->Prepare()[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v5

    .line 3
    sget-object v2, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v6

    .line 4
    sget-object v2, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    .line 5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v11

    double-to-int v2, v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move v6, v8

    move-wide v7, v9

    .line 6
    :try_start_1
    invoke-static/range {v1 .. v8}, Lcom/samsung/auth/Locale;->f3(I[B[B[B[BIJ)[B

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    .line 7
    invoke-static/range {v3 .. v10}, Lcom/samsung/auth/Locale;->f2(I[B[B[B[BIJ)[B

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    .line 8
    invoke-static/range {v3 .. v10}, Lcom/samsung/auth/Locale;->f1(I[B[B[B[BIJ)[B
    :try_end_1
    .catch Lcom/samsung/auth/LocaleFontException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static convertTimeFormatToTickCount(Ljava/lang/String;)J
    .locals 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    .line 2
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 5
    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static declared-synchronized getDecoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/samsung/auth/AuthManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    monitor-exit v0

    return-object v2

    :cond_0
    if-eqz p0, :cond_4

    .line 3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->DCNMS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Lcom/samsung/auth/LocaleFontException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    :try_start_3
    const-string v1, "Fail"

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    monitor-exit v0

    return-object p0

    .line 7
    :cond_3
    :goto_0
    monitor-exit v0

    return-object v2

    :catch_0
    move-exception p0

    .line 8
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 9
    monitor-exit v0

    return-object v2

    .line 10
    :cond_4
    :goto_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/samsung/auth/AuthManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    monitor-exit v0

    return-object v2

    :cond_0
    if-eqz p0, :cond_4

    .line 3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/samsung/auth/AuthManager;->ECNMS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Lcom/samsung/auth/LocaleFontException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_3

    :try_start_3
    const-string v1, "Fail"

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    monitor-exit v0

    return-object p0

    .line 7
    :cond_3
    :goto_0
    monitor-exit v0

    return-object v2

    :catch_0
    move-exception p0

    .line 8
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 9
    monitor-exit v0

    return-object v2

    .line 10
    :cond_4
    :goto_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getEncodingDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/samsung/auth/AuthManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    monitor-exit v0

    return-object v2

    :cond_0
    if-eqz p0, :cond_4

    .line 3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    goto :goto_2

    .line 4
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

    .line 5
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_3

    const-string v1, "Fail"

    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    monitor-exit v0

    return-object p0

    .line 8
    :cond_3
    :goto_1
    monitor-exit v0

    return-object v2

    .line 9
    :cond_4
    :goto_2
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getIntegerAccessType(Lcom/samsung/auth/AuthManager$AccessType;)I
    .locals 4

    sget-object v0, Lcom/samsung/auth/AuthManager$1;->$SwitchMap$com$samsung$auth$AuthManager$AccessType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_3

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    :goto_0
    return v0
.end method

.method public static declared-synchronized getStatus()I
    .locals 3

    const-class v0, Lcom/samsung/auth/AuthManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/samsung/auth/AuthManager;->ad:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2
    monitor-exit v0

    return v2

    .line 3
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/samsung/auth/AuthManager;->iv:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    .line 4
    monitor-exit v0

    return v1

    .line 5
    :cond_1
    :try_start_2
    sget-boolean v1, Lcom/samsung/auth/AuthManager;->rd:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 6
    monitor-exit v0

    return v1

    :cond_2
    const/4 v1, 0x0

    .line 7
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)I
    .locals 13

    const-class v0, Lcom/samsung/auth/AuthManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sput-object p0, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 2
    invoke-static {p0}, Lcom/samsung/auth/SDRMUtil;->GetAuthDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v4

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v5

    .line 4
    sget-object v2, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v6

    .line 5
    sget-object v2, Lcom/samsung/auth/AuthManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    .line 6
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, v11

    double-to-int v2, v2

    const/4 v11, 0x0

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/auth/Locale;->setApplicationInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_0

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move v6, v8

    move-wide v7, v9

    .line 8
    invoke-static/range {v1 .. v8}, Lcom/samsung/auth/Locale;->f3(I[B[B[B[BIJ)[B

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    .line 9
    invoke-static/range {v3 .. v10}, Lcom/samsung/auth/Locale;->f2(I[B[B[B[BIJ)[B

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    .line 10
    invoke-static/range {v3 .. v10}, Lcom/samsung/auth/Locale;->f1(I[B[B[B[BIJ)[B

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 11
    invoke-static {v1}, Lcom/samsung/auth/AuthManager;->Resolver([B)[B

    move-result-object v1

    .line 12
    new-instance v11, Ljava/lang/String;

    array-length v3, v1

    invoke-direct {v11, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    :cond_2
    if-eqz v11, :cond_3

    const-string v1, "Success"

    .line 13
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    monitor-exit v0

    return v2

    .line 14
    :cond_3
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
