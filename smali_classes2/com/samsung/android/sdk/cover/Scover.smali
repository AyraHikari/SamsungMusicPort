.class public final Lcom/samsung/android/sdk/cover/Scover;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVersionCode()I
    .locals 1

    const/high16 v0, 0x1010000

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 5

    const-string v0, "%d.%d.%d"

    const/4 v1, 0x3

    .line 62
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/samsung/android/sdk/cover/Scover;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 81
    invoke-static {}, Lcom/samsung/android/sdk/SsdkVendorCheck;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 86
    new-instance p1, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/Scover;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const/4 v0, 0x1

    const-string v1, "This device is not supported Scover!!!"

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 82
    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const/4 v0, 0x0

    const-string v1, "This is not Samsung device!!!"

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 78
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context may not be null!!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isFeatureEnabled(I)Z
    .locals 2

    .line 105
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/cover/Scover;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportTypeOfCover(I)Z

    move-result p1

    return p1
.end method
