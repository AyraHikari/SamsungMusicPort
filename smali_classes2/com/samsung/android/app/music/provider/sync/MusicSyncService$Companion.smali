.class public final Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/sync/MusicSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 211
    invoke-direct {p0}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7

    .line 278
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/4 v0, 0x1

    .line 279
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "MusicSyncService.sync"

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v5, v4}, Lkotlin/text/StringsKt;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    xor-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 280
    :cond_1
    aget-object p1, p1, v5

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string p1, "throwable.stackTrace.let\u2026k[2].toString()\n        }"

    .line 278
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;I)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 246
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/sync/SyncCheckImpl;->a(Landroid/content/Context;)V

    return-void

    .line 250
    :cond_0
    const-class v2, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;

    const/16 v3, 0x520

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.sec.android.app.music.action.LOCAL_SYNC_EVENT"

    .line 251
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.sec.android.app.music.extra.SYNC_EVENT"

    .line 252
    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "com.sec.android.app.music.extra.SYNC_LOG_MESSAGE"

    .line 253
    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    invoke-static {}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " enqueueWork syncEvent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", caller : "

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v5, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {p1, v2, v3, v4}, Landroid/support/v4/app/JobIntentService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/util/EnumSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/music/provider/sync/SyncOperation;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syncOpSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync operations : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;->b(Landroid/content/Context;Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p2

    .line 263
    invoke-virtual {p2}, Ljava/util/EnumSet;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 265
    :cond_0
    const-class v1, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;

    const/16 v2, 0x520

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.sec.android.app.music.action.LOCAL_SYNC_OPERATIONS"

    .line 266
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.sec.android.app.music.extra.SYNC_OPERATIONS"

    .line 268
    move-object v5, p2

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/EnumSet;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 513
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 514
    check-cast v7, Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    .line 268
    invoke-virtual {v7}, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 515
    :cond_1
    check-cast v6, Ljava/util/ArrayList;

    .line 267
    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v4, "com.sec.android.app.music.extra.SYNC_LOG_MESSAGE"

    .line 269
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    .line 272
    invoke-static {}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a()Ljava/lang/String;

    move-result-object v5

    .line 273
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " enqueueWork syncOperations : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", caller : "

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 270
    invoke-static {v4, v5, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {p1, v1, v2, v3}, Landroid/support/v4/app/JobIntentService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method

.method public final a(Landroid/content/Context;[J)Z
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_b

    .line 305
    array-length v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto/16 :goto_9

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f

    const/4 v9, 0x0

    move-object/from16 v1, p2

    .line 310
    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt;->a([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cp_attrs=65537"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 316
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v1, "group_concat(source_id, \',\')"

    .line 317
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v1, p1

    .line 314
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v8, 0x0

    if-eqz v1, :cond_3

    check-cast v1, Ljava/io/Closeable;

    .line 319
    move-object v2, v8

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v3, :cond_3

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    const-string v3, ""

    :goto_3
    move-object v9, v3

    .line 321
    invoke-static {}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncFilesDirectly existsIds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_4
    new-instance v12, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;

    const/16 v1, 0xa

    invoke-direct {v12, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;-><init>(Landroid/content/Context;I)V

    const-wide/16 v1, 0x0

    .line 326
    move-object/from16 v3, p0

    check-cast v3, Lcom/samsung/android/app/music/provider/sync/MusicSyncService$Companion;

    move-wide v13, v1

    const/4 v15, 0x0

    .line 328
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title!=\'\' AND is_music=1 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_id>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    move-object v3, v9

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_6

    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND _id NOT IN ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_6
    move-object v4, v1

    .line 337
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "MediaStore.Audio.Media.EXTERNAL_CONTENT_URI"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "10"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 338
    sget-object v3, Lcom/samsung/android/app/music/provider/sync/MusicSyncInfo;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    move-object/from16 v1, p1

    .line 335
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_a

    check-cast v1, Ljava/io/Closeable;

    .line 340
    move-object v2, v8

    check-cast v2, Ljava/lang/Throwable;

    :try_start_2
    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    .line 341
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v4, :cond_7

    .line 342
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_7
    if-nez v3, :cond_8

    goto :goto_6

    .line 517
    :cond_8
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_6

    :cond_9
    const-string v4, "_id"

    .line 520
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 348
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v13, "MediaContents.Tracks.CONTENT_URI"

    invoke-static {v6, v13}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/net/UriExtensionKt;->c(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const v13, 0x10001

    const-string v14, "mediaStore"

    .line 349
    invoke-static {v3, v13, v14}, Lcom/samsung/android/app/music/provider/sync/MusicSyncInfo;->a(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v13

    .line 347
    invoke-virtual {v12, v6, v13}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->a(Landroid/net/Uri;Landroid/content/ContentValues;)I

    move-result v6

    add-int/2addr v15, v6

    .line 521
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_9

    move-wide v13, v4

    .line 355
    :goto_6
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 340
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_7
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 358
    :cond_a
    :goto_8
    invoke-virtual {v12}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaInserter;->a()I

    move-result v0

    add-int/2addr v0, v15

    .line 359
    invoke-static {}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncFilesDirectly end inserted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    return v11

    .line 306
    :cond_b
    :goto_9
    invoke-static {}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "syncFilesDirectly sourceIdArray invalid."

    invoke-static {v11, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    return v10
.end method

.method public final b(Landroid/content/Context;Ljava/util/EnumSet;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/music/provider/sync/SyncOperation;",
            ">;)",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/music/provider/sync/SyncOperation;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "syncOperations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->k:Z

    if-nez v0, :cond_0

    .line 286
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_PLAYLIST_INSERT:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 287
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_PLAYLIST_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 290
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_PLAYLIST_SYNC_DOWN:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 292
    sget-object p1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_PLAYLIST_SYNC_DOWN:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {p2, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-object p2
.end method
