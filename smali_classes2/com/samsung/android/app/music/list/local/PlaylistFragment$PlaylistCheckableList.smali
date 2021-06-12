.class final Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCheckableList;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlaylistCheckableList"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;",
            ")V"
        }
    .end annotation

    const-string v0, "recyclerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCheckableList;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    .line 614
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/SparseBooleanArray;I)[J
    .locals 8

    const-string p2, "checkedItemPositions"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 622
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCheckableList;->c()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 624
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    const-string v2, "audio_id"

    .line 625
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 626
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p2, :cond_3

    .line 629
    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 630
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCheckableList;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-virtual {p1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 634
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "context"

    .line 635
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->c:Landroid/net/Uri;

    const-string v4, "10000"

    .line 636
    invoke-static {p2, v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v4, "MediaContents.getLimitAp\u2026\"10000\"\n                )"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "cp_attrs != 524296"

    .line 642
    check-cast v2, Ljava/util/Collection;

    .line 952
    new-array v5, v7, [Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object v5, v2

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object v2, p2

    .line 635
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 953
    move-object v1, p2

    check-cast v1, Ljava/io/Closeable;

    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Landroid/database/Cursor;

    if-nez p2, :cond_4

    goto :goto_1

    .line 964
    :cond_4
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    .line 645
    :cond_5
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 969
    :goto_1
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 648
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->d(Ljava/util/Collection;)[J

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 953
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 952
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
