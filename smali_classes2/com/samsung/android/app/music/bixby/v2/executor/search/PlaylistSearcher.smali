.class final Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistSearcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "command"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistSearcher;->c:Landroid/content/Context;

    .line 310
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistSearcher;->a:Ljava/util/ArrayList;

    const-string p1, "artistName"

    .line 314
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 315
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-string v2, "PlaylistExecutor"

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "artistName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistSearcher;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v2, "songTitle"

    .line 320
    invoke-virtual {p2, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 321
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    const-string v3, "PlaylistExecutor"

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackTitle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistSearcher;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v3, "searchKeyword"

    .line 326
    invoke-virtual {p2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 327
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_5

    const-string v4, "PlaylistExecutor"

    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchKeyword="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistSearcher;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_5
    new-instance v4, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    invoke-direct {v4}, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;-><init>()V

    .line 333
    iput-object p1, v4, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->a:Ljava/lang/String;

    .line 334
    iput-object v2, v4, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->b:Ljava/lang/String;

    .line 335
    iput-object v3, v4, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->d:Ljava/lang/String;

    const-string p1, "searchType"

    .line 337
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 338
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_7

    iput-object p1, v4, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->c:Ljava/lang/String;

    goto :goto_4

    :cond_7
    const-string p1, "Playlist"

    .line 339
    iput-object p1, v4, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->c:Ljava/lang/String;

    :goto_4
    const-string p1, "searchWhere"

    .line 341
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 342
    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_8

    const/4 v0, 0x1

    :cond_8
    if-eqz v0, :cond_9

    iput-object p1, v4, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->e:Ljava/lang/String;

    goto :goto_5

    :cond_9
    const-string p1, "Local"

    .line 343
    iput-object p1, v4, Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;->e:Ljava/lang/String;

    .line 332
    :goto_5
    iput-object v4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistSearcher;->b:Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    return-void
.end method


# virtual methods
.method public final a()Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistSearcher;->b:Lcom/samsung/android/app/music/bixby/v2/result/data/InputData;

    return-object v0
.end method

.method public final b()Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;
    .locals 13

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 351
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v3, "name"

    .line 352
    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 354
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistSearcher;->a:Ljava/util/ArrayList;

    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    const-string v1, " OR "

    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistSearcher$search$selection$1;->INSTANCE:Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistSearcher$search$selection$1;

    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0x1e

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "PlaylistExecutor"

    .line 357
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query selection="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistSearcher;->c:Landroid/content/Context;

    const-string v5, "uri"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 532
    move-object v2, v1

    check-cast v2, Ljava/io/Closeable;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v2

    check-cast v4, Landroid/database/Cursor;

    const/4 v4, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    .line 543
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 359
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistSearcher;->c:Landroid/content/Context;

    const-string v6, "_id"

    .line 546
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x1

    .line 359
    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->getPlaylistMemberCount(Landroid/content/Context;JZ)I

    move-result v5

    if-lez v5, :cond_2

    const-string v5, "_id"

    .line 547
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "name"

    .line 548
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    new-instance v7, Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;

    invoke-direct {v7, v5, v6}, Lcom/samsung/android/app/music/bixby/v2/result/data/PlaylistData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    .line 549
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 551
    :goto_1
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 370
    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;

    invoke-direct {v1, v0, v4}, Lcom/samsung/android/app/music/bixby/v2/executor/search/PlaylistInfo;-><init>(Ljava/util/ArrayList;Z)V

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 532
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
