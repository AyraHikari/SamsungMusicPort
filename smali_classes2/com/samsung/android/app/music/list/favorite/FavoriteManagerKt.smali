.class public final Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOCAL_MAX_FAVORITE_TRACK:I = 0x2710

.field private static final SERVER_MAX_FAVORITE_ITEM:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "FavoriteManager"


# direct methods
.method public static final synthetic access$getQuantityString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->getQuantityString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isLogin(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->isLogin(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isNetworkEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->isNetworkEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isReady(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->isReady(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$sendMessage(Landroid/os/Handler;ILjava/util/HashMap;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->sendMessage(Landroid/os/Handler;ILjava/util/HashMap;Z)V

    return-void
.end method

.method private static final getQuantityString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 3

    .line 1743
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "resources.getQuantityStr\u2026g(id, quantity, quantity)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final getUnFavoriteAudioIdSet(Landroid/content/Context;[JLjava/lang/Integer;)Ljava/util/HashSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[J",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1538
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f

    const/4 v9, 0x0

    move-object v1, p1

    .line 1539
    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->a([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 1542
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AND cp_attrs="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p2, " AND _id"

    .line 1543
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " NOT IN (SELECT audio_id"

    .line 1544
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " FROM favorite_tracks_map WHERE audio_id IN ("

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND modified_state!=2)"

    .line 1546
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1548
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string p1, "Tracks.CONTENT_URI"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "_id"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object p0

    .line 1790
    move-object p1, p0

    check-cast p1, Ljava/io/Closeable;

    const/4 p2, 0x0

    check-cast p2, Ljava/lang/Throwable;

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/database/Cursor;

    if-nez p0, :cond_1

    goto :goto_0

    .line 1801
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1549
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1804
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1806
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1790
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object p2, p0

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p0
.end method

.method static synthetic getUnFavoriteAudioIdSet$default(Landroid/content/Context;[JLjava/lang/Integer;ILjava/lang/Object;)Ljava/util/HashSet;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1536
    check-cast p2, Ljava/lang/Integer;

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->getUnFavoriteAudioIdSet(Landroid/content/Context;[JLjava/lang/Integer;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method private static final isLogin(Landroid/content/Context;)Z
    .locals 1

    .line 1722
    sget-object v0, Lcom/samsung/android/app/music/network/Retrofit;->a:Lcom/samsung/android/app/music/network/Retrofit$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/network/Retrofit$Companion;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static final isNetworkEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 1725
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;-><init>(Landroid/content/Context;)V

    .line 1726
    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->a()V

    .line 1727
    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->c()V

    .line 1729
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean p0, p0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1730
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->b()V

    return p0
.end method

.method private static final isReady(Landroid/content/Context;)Z
    .locals 4

    .line 1735
    invoke-static {p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->isLogin(Landroid/content/Context;)Z

    move-result v0

    .line 1736
    invoke-static {p0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->isNetworkEnabled(Landroid/content/Context;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isReady - ready:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", login:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", network:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v1, v2, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static final logD(Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "FavoriteManager"

    .line 1771
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->prependIndent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic logD$default(Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 1770
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD(Ljava/lang/String;IZ)V

    return-void
.end method

.method private static final logE(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "FavoriteManager"

    .line 1780
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->prependIndent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1, v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic logE$default(Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1780
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logE(Ljava/lang/String;I)V

    return-void
.end method

.method private static final logI(Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "FavoriteManager"

    .line 1775
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->prependIndent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic logI$default(Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 1774
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logI(Ljava/lang/String;IZ)V

    return-void
.end method

.method private static final logW(Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "FavoriteManager"

    .line 1778
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->prependIndent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic logW$default(Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 1777
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logW(Ljava/lang/String;IZ)V

    return-void
.end method

.method private static final makeFavoriteTracksValues(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)Landroid/content/ContentValues;
    .locals 3

    .line 1558
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p0, :cond_0

    .line 1559
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-string p0, "audio_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1560
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    const-string p1, "modified_state"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 1561
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    const-string p2, "date_modified"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    return-object v0
.end method

.method static synthetic makeFavoriteTracksValues$default(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ILjava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    and-int/lit8 p4, p3, 0x2

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 1555
    move-object p1, v0

    check-cast p1, Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    .line 1556
    move-object p2, v0

    check-cast p2, Ljava/lang/Long;

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->makeFavoriteTracksValues(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method private static final prependIndent(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1786
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "                "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1785
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "            "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1784
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "        "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1783
    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final queryCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    const-string v0, "count(*)"

    .line 1753
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object p0

    check-cast p0, Ljava/io/Closeable;

    const/4 p1, 0x0

    move-object p2, p1

    check-cast p2, Ljava/lang/Throwable;

    :try_start_0
    move-object p3, p0

    check-cast p3, Landroid/database/Cursor;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 1754
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, p3

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1753
    :cond_1
    invoke-static {p0, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object p2, p1

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p0, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static synthetic queryCount$default(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1750
    check-cast p3, [Ljava/lang/String;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->queryCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static final sendMessage(Landroid/os/Handler;ILjava/util/HashMap;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 1764
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1765
    iput p1, v0, Landroid/os/Message;->what:I

    if-eqz p2, :cond_0

    .line 1766
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_1

    .line 1767
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method static synthetic sendMessage$default(Landroid/os/Handler;ILjava/util/HashMap;ZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const/4 p2, 0x0

    .line 1761
    check-cast p2, Ljava/util/HashMap;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 1762
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->sendMessage(Landroid/os/Handler;ILjava/util/HashMap;Z)V

    return-void
.end method
