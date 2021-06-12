.class public final Lcom/samsung/android/app/music/list/local/HeartFragmentKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lcom/samsung/android/app/music/network/NetworkManager;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/app/music/list/local/HeartFragmentKt;->b(Lcom/samsung/android/app/music/network/NetworkManager;)I

    move-result p0

    return p0
.end method

.method public static final synthetic a(I)Landroid/database/Cursor;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/app/music/list/local/HeartFragmentKt;->b(I)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Lcom/samsung/android/app/music/network/NetworkManager;)I
    .locals 1

    .line 1747
    invoke-interface {p0}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    .line 1748
    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/app/music/network/NetworkInfo;->d:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean p0, p0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final b(I)Landroid/database/Cursor;
    .locals 5

    .line 1719
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;-><init>()V

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;->projection:[Ljava/lang/String;

    .line 1720
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1721
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1722
    array-length v0, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "dummy"

    .line 1727
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1725
    :cond_1
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1731
    :cond_2
    check-cast v2, Ljava/lang/Iterable;

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 1720
    check-cast v1, Landroid/database/Cursor;

    return-object v1
.end method
