.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Test;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-ContentServer"

.field private static final SUB_TAG:Ljava/lang/String; = "Client> "

.field public static final TEST_CONTENT_PROXY_SERVER:Z = false

.field public static final TEST_CONTENT_PROXY_SERVER2:Z = false

.field public static final USE_REST_CALLBACK:Z = true


# instance fields
.field private final activeQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

.field private final musicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;)V
    .locals 1

    const-string v0, "playerQueue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "musicContents"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->musicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->getActiveQueue(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->activeQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    return-void
.end method

.method private final getActiveQueue(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    .locals 2

    const/4 v0, 0x1

    .line 33
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v1

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 35
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.core.service.queue.IPlayerQueue"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private final makeQueueItem(Landroid/content/Context;Landroid/util/JsonWriter;[J)V
    .locals 15

    move-object/from16 v0, p2

    const-string v1, ","

    .line 95
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v10, 0x0

    move-object/from16 v2, p3

    invoke-static/range {v2 .. v10}, Lkotlin/collections/ArraysKt;->a([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 96
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "joinToString "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 100
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v2, "source_id"

    const-string v5, "cp_attrs"

    .line 101
    filled-new-array {v1, v2, v5}, [Ljava/lang/String;

    move-result-object v5

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    move-object v7, v2

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3e

    const/4 v14, 0x0

    move-object/from16 v6, p3

    invoke-static/range {v6 .. v14}, Lkotlin/collections/ArraysKt;->a([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 99
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 333
    move-object v2, v1

    check-cast v2, Ljava/io/Closeable;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v2

    check-cast v4, Landroid/database/Cursor;

    if-nez v1, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v4, "id"

    .line 111
    invoke-virtual {v0, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    const/4 v4, 0x2

    .line 112
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 113
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v5, "source_id"

    .line 114
    invoke-virtual {v0, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    const/4 v5, 0x1

    .line 115
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v5, "cp_attrs"

    .line 116
    invoke-virtual {v0, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 117
    invoke-virtual {v0, v4}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 347
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 349
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 333
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final startServer(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;
    .locals 1

    .line 43
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer$Companion;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer$Companion;->obtainServer(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;

    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->activeQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->setPlayerQueue(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->musicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->setMusicContent(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;)V

    .line 46
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->start()V

    return-object p1
.end method

.method private final writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\r\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lkotlin/text/Charsets;->a:Ljava/nio/charset/Charset;

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getOneItemId(Landroid/content/Context;)J
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 293
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string p1, "_id"

    .line 294
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 292
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 351
    move-object v0, p1

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/database/Cursor;

    if-nez p1, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 299
    :goto_0
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-wide v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, p1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final getOneItemId2(Landroid/content/Context;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$getOneItemId2$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$getOneItemId2$1;-><init>(Landroid/content/Context;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final makeQueueJson(Landroid/content/Context;[J)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->startServer(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBaseUrl "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->getBaseUrl(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v4, "Environment.getExternalStorageDirectory()"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/q.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "json path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V

    .line 78
    new-instance v2, Landroid/util/JsonWriter;

    .line 79
    new-instance v4, Ljava/io/OutputStreamWriter;

    .line 80
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/io/OutputStream;

    .line 81
    sget-object v1, Lkotlin/text/Charsets;->a:Ljava/nio/charset/Charset;

    .line 79
    invoke-direct {v4, v5, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    check-cast v4, Ljava/io/Writer;

    .line 78
    invoke-direct {v2, v4}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    const-string v1, "  "

    .line 84
    invoke-virtual {v2, v1}, Landroid/util/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v1, "url"

    .line 86
    invoke-virtual {v2, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 87
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->getBaseUrl(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    const-string v0, "items"

    .line 88
    invoke-virtual {v2, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 89
    invoke-direct {p0, p1, v2, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->makeQueueItem(Landroid/content/Context;Landroid/util/JsonWriter;[J)V

    .line 90
    invoke-virtual {v2}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 91
    invoke-virtual {v2}, Landroid/util/JsonWriter;->close()V

    return-void
.end method

.method public final tempSaveUrl(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->startServer(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;

    move-result-object p1

    .line 52
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBaseUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->getBaseUrl(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v3, "Environment.getExternalStorageDirectory()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/input.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "json path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V

    .line 57
    new-instance v1, Landroid/util/JsonWriter;

    .line 58
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 59
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/io/OutputStream;

    .line 60
    sget-object v0, Lkotlin/text/Charsets;->a:Ljava/nio/charset/Charset;

    .line 58
    invoke-direct {v3, v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    check-cast v3, Ljava/io/Writer;

    .line 57
    invoke-direct {v1, v3}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "  "

    .line 63
    invoke-virtual {v1, v0}, Landroid/util/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "url"

    .line 65
    invoke-virtual {v1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 66
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->getBaseUrl(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 67
    invoke-virtual {v1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 68
    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V

    return-void
.end method

.method public final testServer(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    const-string v1, "testServer"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer$Companion;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer$Companion;->obtainServer(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->musicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->setMusicContent(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;)V

    .line 130
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->activeQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServer;->setPlayerQueue(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)V

    .line 132
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->getOneItemId(Landroid/content/Context;)J

    return-void
.end method

.method public final testServer(Ljava/lang/String;)V
    .locals 6

    const-string v0, "urlString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V

    .line 210
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 213
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 214
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xce

    if-eq v0, v1, :cond_0

    .line 217
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP response error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 220
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    const-string v2, "connection.headerFields"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 221
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client responseCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 233
    :try_start_2
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, ""

    :goto_1
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    :goto_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :goto_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    .line 211
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final testServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const-string v0, "urlString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 181
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 182
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_0

    const/16 v3, 0xce

    if-eq v1, v3, :cond_0

    .line 185
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP response error code: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 204
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 188
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    const-string v4, "connection.headerFields"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 189
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_1
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "client responseCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v5, v1

    check-cast v5, Ljava/io/InputStream;

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "Environment.getExternalStorageDirectory()"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 194
    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json path "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V

    .line 195
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/io/Closeable;

    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    move-object v8, v7

    check-cast v8, Ljava/io/FileOutputStream;

    .line 196
    sget-object v9, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "client request "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " copy as file"

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V

    const-string p1, "input"

    .line 197
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/io/OutputStream;

    const/4 p1, 0x0

    const/4 p2, 0x2

    invoke-static {v5, v8, p1, p2, v3}, Lkotlin/io/ByteStreamsKt;->a(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    :try_start_4
    invoke-static {v7, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 192
    :try_start_5
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v6, p1

    .line 195
    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    invoke-static {v7, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v4, p1

    .line 192
    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_2
    :try_start_9
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    .line 201
    :try_start_a
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    const-string v1, ""

    :goto_3
    invoke-static {p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 204
    :goto_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :goto_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1

    .line 179
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final testServerPost(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    const-string v0, "urlString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "obj"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x3e8

    .line 245
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 246
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "Accept-Encoding"

    const-string v2, "identity"

    .line 247
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 248
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 251
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 252
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client request json "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V

    const-string v1, "json"

    .line 254
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lkotlin/text/Charsets;->a:Ljava/nio/charset/Charset;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v2, Ljava/io/Closeable;

    const/4 v1, 0x0

    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v4, v2

    check-cast v4, Ljava/io/ByteArrayInputStream;

    .line 255
    check-cast v4, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    const-string v6, "connection.outputStream"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v4, v5, v6, v7, v1}, Lkotlin/io/ByteStreamsKt;->a(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :try_start_2
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 257
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client request send to server "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " write output success "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 264
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client request HTTP response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V

    const/16 p2, 0xc8

    if-eq p1, p2, :cond_0

    const/16 p2, 0xce

    if-eq p1, p2, :cond_0

    .line 267
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP response error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 287
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 270
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    const-string p2, "connection.headerFields"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 271
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v3, p1

    .line 254
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 284
    :try_start_6
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, ""

    :goto_2
    invoke-static {p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/queue/LuxTestModule$Companion;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 287
    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :goto_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1

    .line 243
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
