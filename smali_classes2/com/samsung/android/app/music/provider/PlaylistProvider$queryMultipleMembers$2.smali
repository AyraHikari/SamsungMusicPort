.class final Lcom/samsung/android/app/music/provider/PlaylistProvider$queryMultipleMembers$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $orderHash:Ljava/util/HashMap;

.field final synthetic this$0:Lcom/samsung/android/app/music/provider/PlaylistProvider;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/provider/PlaylistProvider;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider$queryMultipleMembers$2;->this$0:Lcom/samsung/android/app/music/provider/PlaylistProvider;

    iput-object p2, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider$queryMultipleMembers$2;->$orderHash:Ljava/util/HashMap;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/provider/PlaylistProvider$queryMultipleMembers$2;->invoke(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "selection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider$queryMultipleMembers$2;->this$0:Lcom/samsung/android/app/music/provider/PlaylistProvider;

    invoke-static {v0}, Lcom/samsung/android/app/music/provider/PlaylistProvider;->a(Lcom/samsung/android/app/music/provider/PlaylistProvider;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "audio_playlists"

    const-string v0, "_id"

    const-string v3, "sort_by"

    .line 242
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 244
    check-cast p2, Ljava/util/Collection;

    const/4 v0, 0x0

    .line 2138
    new-array v4, v0, [Ljava/lang/String;

    invoke-interface {p2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    move-object v5, p2

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    .line 240
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 p2, 0x0

    .line 248
    check-cast p2, Ljava/lang/Throwable;

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/database/Cursor;

    if-eqz v1, :cond_3

    .line 249
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 2140
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    goto :goto_1

    .line 254
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/provider/PlaylistProvider$queryMultipleMembers$2;->$orderHash:Ljava/util/HashMap;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "it.getString(0)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    const/4 v5, 0x4

    goto :goto_0

    .line 258
    :cond_2
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 254
    :goto_0
    invoke-static {v5}, Lcom/samsung/android/app/music/util/ListUtils;->e(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ListUtils.getPlaylistOrd\u2026                        )"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2143
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 262
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v3

    :cond_3
    :goto_2
    :try_start_1
    const-string v1, "PlaylistProvider"

    const-string v2, "fillOrderHash : failed to get sort_by from db"

    .line 250
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 248
    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 2138
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
