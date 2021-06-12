.class public final Lcom/samsung/android/app/musiclibrary/core/service/server/Track;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/net/Socket;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p3

    const-string v1, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "socket"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "path"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "track/"

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 16
    invoke-static {v0, v1, v5, v4, v5}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 18
    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v8, "_id"

    const-string v9, "source_id"

    const-string v10, "cp_attrs"

    const-string v11, "title"

    const-string v12, "artist"

    const-string v13, "album"

    const-string v14, "genre"

    .line 19
    filled-new-array/range {v8 .. v14}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "_id = ?"

    const/4 v1, 0x1

    .line 25
    new-array v10, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v10, v2

    const/4 v11, 0x0

    .line 17
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 55
    move-object v6, v0

    check-cast v6, Ljava/io/Closeable;

    move-object v7, v5

    check-cast v7, Ljava/lang/Throwable;

    :try_start_0
    move-object v8, v6

    check-cast v8, Landroid/database/Cursor;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 67
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_0

    .line 27
    :cond_1
    new-instance v8, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;

    .line 28
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 29
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v1, "c.getString(1)"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v1, 0x3

    .line 31
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v1, "c.getString(3)"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 32
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "c.getString(4)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x5

    .line 33
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "c.getString(5)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x6

    .line 34
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "c.getString(6)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v8

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v0

    .line 27
    invoke-direct/range {v9 .. v18}, Lcom/samsung/android/app/musiclibrary/core/service/server/Track$TrackItem;-><init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual/range {p2 .. p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    check-cast v5, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v0, v1

    check-cast v0, Ljava/io/OutputStream;

    .line 37
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeSuccessHeader(Ljava/io/OutputStream;)V

    .line 38
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v8}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Gson().toJson(item)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lkotlin/text/Charsets;->a:Ljava/nio/charset/Charset;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string v3, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 39
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :try_start_2
    invoke-static {v1, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 40
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    invoke-static {v6, v7}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 38
    :cond_2
    :try_start_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 36
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    invoke-static {v1, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v7, v0

    .line 40
    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    invoke-static {v6, v7}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
