.class final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlaylistDetailFilterableImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1396
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences;)I
    .locals 11

    const-string v0, "uiPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1416
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;->a()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 1418
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v3, "activity!!"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1419
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)J

    move-result-wide v2

    const-wide/16 v5, -0xb

    cmp-long v2, v2, v5

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1421
    :goto_0
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v5, "sort_by"

    .line 1422
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    .line 1423
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v7}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    if-eqz v2, :cond_2

    .line 1425
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->d:Landroid/net/Uri;

    .line 1426
    move-object v3, v10

    check-cast v3, Ljava/lang/String;

    move-object v5, v2

    move-object v7, v3

    goto :goto_1

    :cond_2
    move-object v7, v5

    move-object v5, v3

    :goto_1
    const-string v2, "context"

    .line 1429
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "uri"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    check-cast v10, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v2

    check-cast v3, Landroid/database/Cursor;

    if-eqz v3, :cond_4

    .line 1430
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1431
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 1434
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;->a(Landroid/content/SharedPreferences;I)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_2

    .line 1438
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;->a(Landroid/content/SharedPreferences;I)V

    .line 1440
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1429
    invoke-static {v2, v10}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v10, p1

    :try_start_1
    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-static {v2, v10}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public a(Landroid/content/SharedPreferences;I)V
    .locals 5

    const-string v0, "uiPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1445
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "activity!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 1446
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)J

    move-result-wide v0

    const-wide/16 v2, -0xb

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1448
    :goto_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    .line 1449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->a(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1451
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->d:Landroid/net/Uri;

    .line 1452
    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    .line 1455
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "sort_by"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "context"

    .line 1456
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "uri"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public a()[I
    .locals 1

    .line 1399
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 1400
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 1407
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    :goto_0
    return-object v0

    :array_0
    .array-data 4
        0x4
        0x2
        0x5
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x2
        0x5
    .end array-data
.end method
