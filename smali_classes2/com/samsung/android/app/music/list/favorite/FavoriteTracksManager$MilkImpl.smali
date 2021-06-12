.class final Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/favorite/IFavoriteTracksManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MilkImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;
    }
.end annotation


# instance fields
.field private final localImpl:Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$LocalImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$LocalImpl;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$LocalImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl;->localImpl:Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$LocalImpl;

    return-void
.end method

.method private final addToServer(Landroid/content/Context;[J)Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;
    .locals 19

    .line 704
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 705
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3f

    const/4 v11, 0x0

    move-object/from16 v3, p2

    .line 707
    invoke-static/range {v3 .. v11}, Lkotlin/collections/ArraysKt;->a([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cp_attrs=524290"

    .line 708
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND _id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 711
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v2, "Tracks.CONTENT_URI"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "_id"

    const-string v4, "source_id"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const/16 v11, 0x18

    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v12}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v2

    .line 1821
    move-object v4, v2

    check-cast v4, Ljava/io/Closeable;

    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, Ljava/lang/Throwable;

    :try_start_0
    move-object v7, v4

    check-cast v7, Landroid/database/Cursor;

    if-nez v2, :cond_0

    goto :goto_1

    .line 1832
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v7, "_id"

    .line 1835
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v9, "source_id"

    .line 1836
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 715
    new-instance v10, Lcom/samsung/android/app/music/list/favorite/FavoriteTrack;

    invoke-direct {v10, v9}, Lcom/samsung/android/app/music/list/favorite/FavoriteTrack;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1837
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_a

    .line 1839
    :goto_1
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1821
    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 719
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->access$isReady(Landroid/content/Context;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_2

    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;

    invoke-direct {v0, v4, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;-><init>(ILjava/util/HashSet;)V

    return-object v0

    .line 721
    :cond_2
    sget-object v2, Lcom/samsung/android/app/music/list/favorite/FavoriteApi;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;

    move-object/from16 v7, p1

    invoke-virtual {v2, v7}, Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v8, "1"

    .line 723
    check-cast v0, Ljava/util/List;

    .line 721
    invoke-static {v2, v8, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->addFavorites(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 726
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add favorite track - resultCode:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getResultCode()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", updateDate:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getUpdateDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static {v2, v9, v9, v8, v5}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    .line 728
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getResultCode()I

    move-result v2

    if-nez v2, :cond_3

    .line 730
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;

    invoke-direct {v0, v9, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;-><init>(ILjava/util/HashSet;)V

    return-object v0

    :cond_3
    const/4 v1, 0x2

    .line 733
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 734
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 735
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/favorite/AddFavoriteResponse;->getTrackList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/2addr v4, v9

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v5

    :goto_2
    if-eqz v0, :cond_8

    check-cast v0, Ljava/lang/Iterable;

    .line 1841
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;

    .line 736
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x27

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/favorite/FavoriteTrackResult;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 740
    :cond_5
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v4, "Tracks.CONTENT_URI"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "_id"

    .line 741
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v9

    .line 742
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cp_attrs=524290 AND source_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v10, v8

    check-cast v10, Ljava/lang/Iterable;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3f

    const/16 v18, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x18

    const/4 v14, 0x0

    move-object/from16 v7, p1

    move-object v8, v0

    .line 739
    invoke-static/range {v7 .. v14}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    .line 1843
    move-object v3, v0

    check-cast v3, Ljava/io/Closeable;

    :try_start_1
    move-object v4, v3

    check-cast v4, Landroid/database/Cursor;

    if-nez v0, :cond_6

    goto :goto_4

    .line 1854
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    const-string v4, "_id"

    .line 1857
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 745
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1858
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1860
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1843
    invoke-static {v3, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 747
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;-><init>(ILjava/util/HashSet;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 1843
    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    invoke-static {v3, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 737
    :cond_8
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;-><init>(ILjava/util/HashSet;)V

    return-object v0

    .line 724
    :cond_9
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;

    invoke-direct {v0, v4, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;-><init>(ILjava/util/HashSet;)V

    return-object v0

    :cond_a
    move-object/from16 v7, p1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v6, v0

    .line 1821
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_6
    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public addInternal(Landroid/content/Context;[J)Lcom/samsung/android/app/music/list/favorite/AddResult;
    .locals 29

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "audioIds"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 542
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 544
    sget-object v13, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v1, "Tracks.CONTENT_URI"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "_id"

    const-string v2, "cp_attrs"

    .line 545
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v14

    .line 546
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id IN ("

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f

    const/4 v9, 0x0

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->a([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x29

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    .line 543
    invoke-static/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v1

    .line 1790
    move-object v2, v1

    check-cast v2, Ljava/io/Closeable;

    const/4 v7, 0x0

    move-object v3, v7

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v2

    check-cast v4, Landroid/database/Cursor;

    const v8, 0x80002

    if-nez v1, :cond_0

    goto :goto_1

    .line 1801
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "_id"

    .line 1804
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v6, "cp_attrs"

    .line 1805
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 551
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 553
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1806
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1808
    :goto_1
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1790
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 561
    move-object v1, v11

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/Collection;)[J

    move-result-object v1

    const/4 v13, 0x4

    invoke-static {v0, v1, v7, v13, v7}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->getUnFavoriteAudioIdSet$default(Landroid/content/Context;[JLjava/lang/Integer;ILjava/lang/Object;)Ljava/util/HashSet;

    move-result-object v14

    .line 562
    invoke-virtual {v14}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v2

    const/4 v11, 0x1

    const/4 v15, 0x0

    if-ge v1, v2, :cond_3

    .line 563
    invoke-static {v15, v11}, Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;->addFlag(II)I

    move-result v1

    move v6, v1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    .line 567
    :goto_2
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v1, "Favorites.Tracks.CONTENT_URI"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "cp_attrs!=524290"

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/16 v16, 0x0

    move-object/from16 v1, p1

    move v8, v6

    move-object/from16 v6, v16

    .line 565
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->queryCount$default(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/Object;)I

    move-result v1

    .line 570
    invoke-virtual {v14}, Ljava/util/HashSet;->size()I

    move-result v2

    add-int v3, v1, v2

    const/16 v4, 0x2710

    const/4 v5, 0x2

    if-le v3, v4, :cond_4

    .line 573
    invoke-static {v8, v5}, Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;->addFlag(II)I

    move-result v6

    rsub-int v1, v1, 0x2710

    goto :goto_3

    :cond_4
    move v1, v2

    move v6, v8

    .line 579
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addInternal - localAddItemCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", localAvailableSize:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v15, v15, v3, v7}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    .line 582
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 585
    move-object v4, v12

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v11

    if-eqz v8, :cond_12

    .line 587
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v8, "MediaContents.Favorites.Tracks.CONTENT_URI"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 588
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modified_state=2"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND audio_id IN ("

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    move-object v3, v12

    check-cast v3, Ljava/lang/Iterable;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x3f

    const/16 v26, 0x0

    move-object/from16 v18, v3

    invoke-static/range {v18 .. v26}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 586
    invoke-static {v0, v2, v8, v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 593
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/Collection;)[J

    move-result-object v2

    invoke-static {v0, v2, v7, v13, v7}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->getUnFavoriteAudioIdSet$default(Landroid/content/Context;[JLjava/lang/Integer;ILjava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    .line 594
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v8

    if-ge v4, v8, :cond_5

    .line 595
    invoke-static {v6, v11}, Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;->addFlag(II)I

    move-result v6

    .line 597
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1810
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    .line 1811
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    .line 598
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    xor-int/2addr v15, v11

    if-eqz v15, :cond_6

    invoke-interface {v8, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1812
    :cond_7
    check-cast v8, Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    .line 1813
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    .line 599
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 601
    :cond_8
    sget-object v3, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;

    const v8, 0x80002

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v0, v8}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;->getFavoriteTrackCount(Landroid/content/Context;Ljava/lang/Integer;)I

    move-result v3

    .line 602
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v8

    add-int v12, v3, v8

    const/16 v15, 0x3e8

    if-le v12, v15, :cond_9

    .line 605
    invoke-static {v6, v13}, Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;->addFlag(II)I

    move-result v6

    rsub-int v3, v3, 0x3e8

    goto :goto_6

    :cond_9
    move v3, v8

    .line 609
    :goto_6
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 610
    move-object v15, v4

    check-cast v15, Ljava/util/Collection;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 612
    check-cast v2, Ljava/lang/Iterable;

    .line 1815
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v9, 0x0

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->longValue()J

    move-result-wide v16

    if-ne v9, v3, :cond_a

    goto :goto_8

    .line 614
    :cond_a
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x0

    goto :goto_7

    .line 617
    :cond_b
    :goto_8
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 609
    check-cast v12, Ljava/util/Collection;

    .line 617
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/Collection;)[J

    move-result-object v2

    move-object/from16 v7, p0

    .line 618
    invoke-direct {v7, v0, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl;->addToServer(Landroid/content/Context;[J)Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;

    move-result-object v2

    .line 619
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;->getState()I

    move-result v9

    if-ne v9, v5, :cond_c

    .line 620
    invoke-static {v6, v13}, Lcom/samsung/android/app/music/list/favorite/AddResult$StateFlag;->addFlag(II)I

    move-result v6

    .line 624
    :cond_c
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;->getResultAudioIdSet()Ljava/util/HashSet;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    xor-int/2addr v12, v11

    if-eqz v12, :cond_d

    goto :goto_9

    :cond_d
    const/4 v9, 0x0

    :goto_9
    if-eqz v9, :cond_e

    .line 625
    check-cast v9, Ljava/util/Collection;

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/Collection;)[J

    move-result-object v9

    const/4 v12, 0x0

    invoke-static {v0, v9, v12, v13, v12}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->getUnFavoriteAudioIdSet$default(Landroid/content/Context;[JLjava/lang/Integer;ILjava/lang/Object;)Ljava/util/HashSet;

    move-result-object v9

    if-eqz v9, :cond_e

    goto :goto_a

    .line 626
    :cond_e
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 628
    :goto_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addInternal - serverAddItemCount:"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", serverAvailableSize:"

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x6

    invoke-static {v3, v8, v8, v12, v5}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    .line 631
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl$ServerResult;->getState()I

    move-result v2

    if-ne v2, v11, :cond_f

    const/4 v2, 0x1

    goto :goto_b

    :cond_f
    const/4 v2, 0x0

    .line 633
    :goto_b
    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v11

    if-eqz v3, :cond_10

    goto :goto_c

    :cond_10
    const/4 v4, 0x0

    :goto_c
    if-eqz v4, :cond_11

    .line 634
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "modified_state"

    .line 635
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 636
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 638
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v8, "Favorites.Tracks.CONTENT_URI"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 640
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "audio_id IN ("

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v4

    check-cast v18, Ljava/lang/Iterable;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x3f

    const/16 v26, 0x0

    invoke-static/range {v18 .. v26}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    .line 637
    invoke-static {v0, v5, v3, v4, v8}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 643
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    move v15, v3

    goto :goto_d

    :cond_11
    const/4 v15, 0x0

    :goto_d
    move v3, v2

    move-object v2, v9

    goto :goto_e

    :cond_12
    move-object/from16 v7, p0

    const/4 v3, 0x0

    const/4 v15, 0x0

    .line 646
    :goto_e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 649
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1817
    array-length v8, v10

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_f
    if-ge v9, v8, :cond_18

    aget-wide v16, v10, v9

    .line 652
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    if-ne v12, v1, :cond_13

    goto :goto_10

    .line 655
    :cond_13
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    add-int/lit8 v11, v11, 0x1

    :goto_10
    move/from16 v27, v1

    :goto_11
    move-object/from16 v28, v2

    const/4 v2, 0x4

    goto :goto_12

    .line 660
    :cond_14
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move/from16 v27, v1

    const/4 v1, 0x0

    const/4 v7, 0x6

    invoke-static {v13, v1, v1, v7, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->makeFavoriteTracksValues$default(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ILjava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    .line 662
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_15
    move/from16 v27, v1

    .line 664
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 665
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    .line 670
    :cond_16
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v28, v2

    const/4 v2, 0x4

    const/4 v13, 0x0

    invoke-static {v1, v7, v13, v2, v13}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->makeFavoriteTracksValues$default(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ILjava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_17
    move-object/from16 v28, v2

    const/4 v2, 0x4

    add-int/lit8 v11, v11, 0x1

    :goto_12
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v7, p0

    const/4 v13, 0x4

    goto :goto_f

    .line 678
    :cond_18
    move-object v1, v4

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_19

    goto :goto_13

    :cond_19
    const/4 v4, 0x0

    :goto_13
    if-eqz v4, :cond_1c

    .line 680
    sget-object v1, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;

    .line 682
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v3, "Favorites.Tracks.CONTENT_URI"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager$Companion;->getInsertUriByOption(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 683
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 684
    check-cast v4, Ljava/util/Collection;

    if-eqz v4, :cond_1b

    const/4 v2, 0x0

    .line 1820
    new-array v3, v2, [Landroid/content/ContentValues;

    invoke-interface {v4, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1a

    check-cast v2, [Landroid/content/ContentValues;

    .line 679
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    .line 686
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_14

    .line 1820
    :cond_1a
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1819
    :cond_1b
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    const/4 v1, 0x0

    :goto_14
    add-int v2, v15, v1

    if-lez v2, :cond_1d

    const/4 v2, 0x3

    .line 689
    new-array v2, v2, [Landroid/net/Uri;

    .line 690
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v4, "Favorites.CONTENT_URI"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 691
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v4, "Favorites.Tracks.CONTENT_URI"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 692
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Meta;->b:Landroid/net/Uri;

    const-string v4, "Playlists.Meta.CARD_VIEW_NOTIFY_CONTENT_URI"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 689
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;[Landroid/net/Uri;)V

    .line 695
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add favorite track - addedCount:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", duplicatedCount:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", totalCount:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", updatedCount:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", flag:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v5, 0x0

    invoke-static {v0, v2, v2, v3, v5}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    .line 696
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/AddResult;

    array-length v2, v10

    invoke-direct {v0, v1, v11, v2, v6}, Lcom/samsung/android/app/music/list/favorite/AddResult;-><init>(IIII)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_15

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 1790
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_15
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public deleteInternal(Landroid/content/Context;[J)Lcom/samsung/android/app/music/list/favorite/DeleteResult;
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "audioIds"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 752
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 753
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 754
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 756
    sget-object v14, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v1, "Tracks.CONTENT_URI"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "_id"

    const-string v2, "source_id"

    const-string v3, "cp_attrs"

    .line 757
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v15

    .line 758
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id IN ("

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f

    const/16 v16, 0x0

    move-object/from16 v1, p2

    move-object v10, v9

    move-object/from16 v9, v16

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->a([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x29

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v3, v15

    .line 755
    invoke-static/range {v1 .. v8}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v1

    .line 1862
    move-object v2, v1

    check-cast v2, Ljava/io/Closeable;

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Ljava/lang/Throwable;

    :try_start_0
    move-object v5, v2

    check-cast v5, Landroid/database/Cursor;

    if-nez v1, :cond_0

    goto :goto_2

    .line 1873
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    const-string v5, "cp_attrs"

    .line 1876
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "_id"

    .line 1877
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const v8, 0x80002

    if-ne v5, v8, :cond_2

    const-string v5, "source_id"

    .line 1878
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 763
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 766
    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1879
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1881
    :goto_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1862
    invoke-static {v2, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 772
    move-object v1, v13

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v4, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v1, :cond_5

    .line 774
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->access$isReady(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 775
    sget-object v1, Lcom/samsung/android/app/music/list/favorite/FavoriteApi;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v7, "1"

    .line 776
    check-cast v13, Ljava/util/List;

    invoke-static {v1, v7, v13}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->deleteFavorites(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/util/List;)Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 777
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete favorite track - updateDate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/favorite/DeleteFavoriteResponse;->getUpdateDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6, v6, v4, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    .line 782
    check-cast v12, Ljava/util/Collection;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 784
    :cond_4
    move-object v13, v12

    check-cast v13, Ljava/lang/Iterable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3f

    const/16 v21, 0x0

    invoke-static/range {v13 .. v21}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 786
    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v8, "MediaContents.Favorites.Tracks.CONTENT_URI"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 787
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "modified_state=1"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " AND audio_id IN ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 785
    invoke-static {v0, v7, v8, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v6

    .line 791
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "modified_state"

    .line 792
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v10, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 795
    sget-object v10, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v12, "Favorites.Tracks.CONTENT_URI"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v10

    .line 797
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "audio_id IN ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 794
    invoke-static {v0, v10, v8, v1, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v6

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 803
    :goto_5
    move-object v8, v11

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v2

    if-eqz v8, :cond_6

    .line 805
    sget-object v8, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v10, "Favorites.Tracks.CONTENT_URI"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 806
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "audio_id IN ("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v13, v11

    check-cast v13, Ljava/lang/Iterable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3f

    const/16 v21, 0x0

    invoke-static/range {v13 .. v21}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 804
    invoke-static {v0, v8, v9, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    add-int/2addr v7, v8

    :cond_6
    add-int v8, v1, v7

    if-lez v8, :cond_7

    const/4 v9, 0x3

    .line 813
    new-array v9, v9, [Landroid/net/Uri;

    .line 814
    sget-object v10, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v11, "Favorites.CONTENT_URI"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v10, v9, v6

    .line 815
    sget-object v10, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v11, "Favorites.Tracks.CONTENT_URI"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v10, v9, v2

    .line 816
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Meta;->b:Landroid/net/Uri;

    const-string v10, "Playlists.Meta.CARD_VIEW_NOTIFY_CONTENT_URI"

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v9, v5

    .line 813
    invoke-static {v0, v9}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;[Landroid/net/Uri;)V

    .line 819
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete favorite track - result : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", updated:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deleted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v6, v4, v3}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->logD$default(Ljava/lang/String;IZILjava/lang/Object;)V

    .line 820
    new-instance v0, Lcom/samsung/android/app/music/list/favorite/DeleteResult;

    move-object/from16 v5, p2

    array-length v1, v5

    invoke-direct {v0, v8, v1}, Lcom/samsung/android/app/music/list/favorite/DeleteResult;-><init>(II)V

    return-object v0

    :cond_8
    move-object/from16 v5, p2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 1862
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    invoke-static {v2, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isFavoriteInternal(Landroid/content/Context;J)Z
    .locals 12

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 824
    invoke-static {p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManagerKt;->access$isReady(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl;->localImpl:Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$LocalImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$LocalImpl;->isFavoriteInternal(Landroid/content/Context;J)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 825
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 827
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v2, "Tracks.CONTENT_URI"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "_id"

    const-string v4, "cp_attrs"

    const-string v5, "source_id"

    const-string v6, "title"

    .line 828
    filled-new-array {v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "_id=?"

    const/4 v10, 0x1

    .line 830
    new-array v6, v10, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    aput-object v2, v6, v11

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, p1

    .line 826
    invoke-static/range {v2 .. v9}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    .line 831
    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v2

    check-cast v3, Landroid/database/Cursor;

    if-eqz v3, :cond_1

    .line 832
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "cp_attrs"

    .line 1883
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const v5, 0x80002

    if-ne v4, v5, :cond_1

    const-string v1, "source_id"

    .line 1884
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 836
    :cond_1
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_4

    .line 838
    sget-object v0, Lcom/samsung/android/app/music/list/favorite/FavoriteApi;->Companion:Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/favorite/FavoriteApi;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "1"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteApiKt;->isFavorite(Lcom/samsung/android/app/music/list/favorite/FavoriteApi;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 839
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 841
    new-array v1, v10, [J

    aput-wide p2, v1, v11

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl;->addInternal(Landroid/content/Context;[J)Lcom/samsung/android/app/music/list/favorite/AddResult;

    goto :goto_0

    .line 843
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl;->localImpl:Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$LocalImpl;

    new-array v2, v10, [J

    aput-wide p2, v2, v11

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$LocalImpl;->deleteInternal(Landroid/content/Context;[J)Lcom/samsung/android/app/music/list/favorite/DeleteResult;

    :goto_0
    if-eqz v0, :cond_3

    .line 839
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    .line 845
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl;->localImpl:Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$LocalImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$LocalImpl;->isFavoriteInternal(Landroid/content/Context;J)Z

    move-result p1

    goto :goto_1

    .line 846
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$MilkImpl;->localImpl:Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$LocalImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/list/favorite/FavoriteTracksManager$LocalImpl;->isFavoriteInternal(Landroid/content/Context;J)Z

    move-result p1

    :goto_1
    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 831
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method
