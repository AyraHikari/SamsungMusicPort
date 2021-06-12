.class final Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lkotlin/Unit;",
        "Lkotlin/Unit;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask$Companion;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final c:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask;->a:Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;[J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;[J)V"
        }
    .end annotation

    const-string v0, "weakReference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ids"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1592
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask;->c:[J

    return-void
.end method

.method private final a(I)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x1

    const-string v1, "DeleteFavoritesTask"

    .line 1707
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toServerType - invalid type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string p1, "2"

    goto :goto_0

    :pswitch_1
    const-string p1, "3"

    goto :goto_0

    :cond_0
    const-string p1, "5"

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Landroid/app/Activity;)V
    .locals 12

    .line 1608
    check-cast p1, Landroid/content/Context;

    .line 1609
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v1, "MediaContents.Favorites.CONTENT_URI"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask;->c:[J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3f

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/ArraysKt;->a([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1608
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private final a(Landroid/app/Activity;ILjava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1682
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask;->a(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 1684
    sget-object v1, Lcom/samsung/android/app/music/network/Retrofit;->a:Lcom/samsung/android/app/music/network/Retrofit$Companion;

    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/network/Retrofit$Companion;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "DeleteFavoritesTask"

    const-string p2, "deleteToSever - not login"

    .line 1686
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1690
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/network/Retrofit;->a:Lcom/samsung/android/app/music/network/Retrofit$Companion;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/network/Retrofit$Companion;->a(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "DeleteFavoritesTask"

    const-string p2, "deleteToSever - not ready"

    .line 1692
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1696
    :cond_1
    sget-object p1, Lcom/samsung/android/app/music/list/favorite/FavoriteApi;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p3, Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->deleteFavorites(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    return v0
.end method

.method private final b(Landroid/app/Activity;)V
    .locals 30

    move-object/from16 v1, p0

    .line 1616
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x3

    .line 1617
    new-array v12, v2, [Ljava/lang/Integer;

    const/16 v2, 0x55

    .line 1618
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v13, 0x0

    aput-object v2, v12, v13

    const/16 v2, 0x54

    .line 1619
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v14, 0x1

    aput-object v2, v12, v14

    const/16 v2, 0x66

    .line 1620
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v15, 0x2

    aput-object v2, v12, v15

    .line 1624
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "context"

    .line 1625
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1626
    sget-object v11, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v3, "MediaContents.Favorites.CONTENT_URI"

    invoke-static {v11, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "_id"

    .line 1627
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v16

    .line 1628
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "category_type NOT IN ("

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x3f

    const/16 v18, 0x0

    move-object v3, v12

    move-object v15, v10

    move/from16 v10, v17

    move-object/from16 v17, v11

    move-object/from16 v11, v18

    invoke-static/range {v3 .. v11}, Lkotlin/collections/ArraysKt;->a([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") AND _id IN ("

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask;->c:[J

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x3f

    const/16 v27, 0x0

    move-object/from16 v19, v3

    invoke-static/range {v19 .. v27}, Lkotlin/collections/ArraysKt;->a([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x29

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/16 v8, 0x10

    move-object v11, v2

    move-object v2, v0

    move-object/from16 v3, v17

    move-object/from16 v4, v16

    .line 1625
    invoke-static/range {v2 .. v9}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v2

    .line 1754
    move-object v3, v2

    check-cast v3, Ljava/io/Closeable;

    const/4 v15, 0x0

    move-object v9, v15

    check-cast v9, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v3

    check-cast v4, Landroid/database/Cursor;

    if-nez v2, :cond_0

    goto :goto_1

    .line 1765
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 1631
    :cond_1
    :goto_0
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1768
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_b

    .line 1770
    :goto_1
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1754
    invoke-static {v3, v9}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1634
    move-object v2, v11

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v14

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v11, v15

    :goto_2
    if-eqz v11, :cond_3

    .line 1636
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v3, "MediaContents.Favorites.CONTENT_URI"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v11

    check-cast v19, Ljava/lang/Iterable;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x3f

    const/16 v27, 0x0

    invoke-static/range {v19 .. v27}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1635
    invoke-static {v0, v2, v3, v15}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v13

    goto :goto_3

    :cond_3
    const-string v2, "DeleteFavoritesTask"

    const-string v3, "local category is empty"

    .line 1640
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1772
    :goto_3
    array-length v11, v12

    move v8, v2

    :goto_4
    if-ge v13, v11, :cond_a

    aget-object v2, v12, v13

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 1644
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1645
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1647
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v2, "MediaContents.Favorites.CONTENT_URI"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "_id"

    const-string v4, "category_id"

    .line 1648
    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v4

    .line 1649
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "category_type="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " AND _id IN ("

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask;->c:[J

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x3f

    const/16 v27, 0x0

    move-object/from16 v19, v15

    invoke-static/range {v19 .. v27}, Lkotlin/collections/ArraysKt;->a([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x10

    const/16 v19, 0x0

    move-object v2, v0

    move-object v10, v5

    move-object v5, v15

    move-object v15, v6

    move-object/from16 v6, v16

    move/from16 v28, v7

    move-object/from16 v7, v17

    move/from16 v29, v8

    move/from16 v8, v18

    move-object v14, v9

    move-object/from16 v9, v19

    .line 1646
    invoke-static/range {v2 .. v9}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v2

    .line 1773
    move-object v3, v2

    check-cast v3, Ljava/io/Closeable;

    :try_start_1
    move-object v4, v3

    check-cast v4, Landroid/database/Cursor;

    if-nez v2, :cond_4

    goto :goto_6

    .line 1784
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_6

    :cond_5
    :goto_5
    const-string v4, "_id"

    .line 1787
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1652
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "category_id"

    .line 1788
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1653
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1789
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1791
    :goto_6
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1773
    invoke-static {v3, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1656
    move-object v5, v10

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    if-eqz v2, :cond_6

    goto :goto_7

    :cond_6
    const/4 v10, 0x0

    :goto_7
    if-eqz v10, :cond_8

    move-object/from16 v5, p1

    move/from16 v6, v28

    .line 1657
    invoke-direct {v1, v5, v6, v10}, Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask;->a(Landroid/app/Activity;ILjava/util/ArrayList;)Z

    move-result v2

    .line 1659
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    .line 1661
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "category_type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " AND _id IN ("

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v15

    check-cast v19, Ljava/lang/Iterable;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x3f

    const/16 v27, 0x0

    invoke-static/range {v19 .. v27}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_7

    const-string v2, "uri"

    .line 1663
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-static {v0, v3, v6, v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    move/from16 v9, v29

    const/16 v16, 0x2

    goto :goto_8

    :cond_7
    const/4 v7, 0x0

    const-string v2, "uri"

    .line 1665
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "modified_state"

    const/16 v16, 0x2

    .line 1668
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1666
    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1665
    invoke-static {v0, v3, v2, v6, v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    move/from16 v9, v29

    :goto_8
    add-int/2addr v2, v9

    goto :goto_9

    :cond_8
    move-object/from16 v5, p1

    move/from16 v9, v29

    const/4 v7, 0x0

    const/16 v8, 0x29

    const/16 v16, 0x2

    const-string v2, "DeleteFavoritesTask"

    const-string v3, "server category is empty"

    .line 1672
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v9

    :goto_9
    add-int/lit8 v13, v13, 0x1

    move v8, v2

    move-object v15, v7

    move-object v9, v14

    const/16 v10, 0x29

    const/4 v14, 0x1

    goto/16 :goto_4

    :cond_9
    move-object/from16 v5, p1

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v9, v0

    .line 1773
    :try_start_2
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v14, v9

    :goto_a
    invoke-static {v3, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_a
    move v9, v8

    const-string v0, "DeleteFavoritesTask"

    .line 1674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMilkInternal - ids size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask;->c:[J

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    move-object/from16 v5, p1

    const/4 v4, 0x1

    const/4 v14, 0x1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v14, v9

    goto :goto_b

    :catch_1
    move-exception v0

    move-object v9, v0

    .line 1754
    :try_start_3
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_b
    invoke-static {v3, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method protected varargs a([Lkotlin/Unit;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1595
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    const-string v0, "weakReference.get() ?: l\u2026         return\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1600
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 1601
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask;->b(Landroid/app/Activity;)V

    goto :goto_0

    .line 1603
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    .line 1595
    :cond_1
    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask;

    const-string p1, "DeleteFavoritesTask"

    const-string v0, "activity is null"

    .line 1596
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1589
    check-cast p1, [Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask;->a([Lkotlin/Unit;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
