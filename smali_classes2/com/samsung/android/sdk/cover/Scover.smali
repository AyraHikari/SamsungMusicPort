.class public final Lcom/samsung/android/sdk/cover/Scover;
.super Ljava/lang/Object;
.source "Scover.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

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
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    aput-object v2, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%d.%d.%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/cover/Scover;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 2
    invoke-static {}, Lcom/samsung/android/sdk/b;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/Scover;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportCover()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/a;

    const/4 v0, 0x1

    const-string v1, "This device is not supported Scover!!!"

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/sdk/a;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/a;

    const/4 v0, 0x0

    const-string v1, "This is not Samsung device!!!"

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/sdk/a;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context may not be null!!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isFeatureEnabled(I)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/cover/Scover;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->isSupportTypeOfCover(I)Z

    move-result p1

    return p1
.end method
