.class public final Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;,
        Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$BadRequestException;,
        Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Companion;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Companion;

.field private static final DEBUG:Z = false

.field private static final LINGER_TIME_OUT:I = 0x3c

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-ContentServer"

.field private static final RANGE_HTTP_HEADER:Ljava/lang/String; = "Range"

.field private static final SUB_TAG:Ljava/lang/String; = "Server> "


# instance fields
.field private final activeQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

.field private final callback:Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;

.field private final context:Landroid/content/Context;

.field private id:Ljava/lang/String;

.field private final musicContent:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private final socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/net/Socket;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socket"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeQueue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "musicContent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->socket:Ljava/net/Socket;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->activeQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->musicContent:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->callback:Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;

    .line 29
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p1

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Socket InetAddress "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->printLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final close(Ljava/net/Socket;)V
    .locals 2

    .line 67
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    const-string p1, "socket closed."

    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->printInfoLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error during socket close. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->printErrorLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final makeHeader(Ljava/util/List;)Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 101
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    check-cast p1, Ljava/lang/Iterable;

    .line 186
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "GET"

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 105
    invoke-static {v4, v5, v7, v6, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "POST"

    invoke-static {v4, v5, v7, v6, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "Range"

    .line 108
    invoke-static {v4, v5, v7, v6, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Header RANGE line = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->printInfoLog(Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_2

    .line 106
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Header method line = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->printInfoLog(Ljava/lang/String;)V

    move-object v1, v4

    .line 112
    :cond_2
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 114
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "log.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->printLog(Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/server/ServerDump;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/server/ServerDump;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ServerDump;->putLog(Ljava/lang/String;)V

    .line 117
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;

    invoke-direct {p1, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private final printErrorLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-ContentServer"

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final printInfoLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-ContentServer"

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final printLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-ContentServer"

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server> [id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final read(Ljava/io/InputStream;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x400

    .line 88
    new-array v4, v3, [B

    :cond_0
    const/4 v5, 0x0

    .line 91
    invoke-virtual {p1, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 92
    invoke-virtual {v2, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-eq v6, v3, :cond_0

    .line 95
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string v2, "out.toByteArray()"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/text/Charsets;->a:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 96
    new-instance p1, Ljava/io/StringReader;

    invoke-direct {p1, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/io/Reader;

    invoke-static {p1}, Lkotlin/io/TextStreamsKt;->a(Ljava/io/Reader;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 86
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final response(Ljava/net/Socket;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 122
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/io/Closeable;

    const/4 v2, 0x0

    move-object v9, v2

    check-cast v9, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v8

    check-cast v3, Ljava/io/InputStream;

    const-string v4, "input"

    .line 123
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->read(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v6

    .line 124
    invoke-direct {v1, v6}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->makeHeader(Ljava/util/List;)Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;

    move-result-object v3

    .line 125
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;->getGet$musicLibrary_release()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 126
    move-object v10, v4

    check-cast v10, Ljava/lang/CharSequence;

    const/16 v11, 0x2f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->a(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move-object v10, v4

    check-cast v10, Ljava/lang/CharSequence;

    const-string v11, " "

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->b(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v7

    if-eqz v4, :cond_6

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_7

    .line 128
    invoke-direct {v1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->printInfoLog(Ljava/lang/String;)V

    .line 130
    sget-boolean v5, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 131
    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

    iget-object v7, v1, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->context:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {v5, v4}, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->showToast(Ljava/lang/String;)V

    .line 136
    :cond_0
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    new-instance v7, Lkotlin/text/Regex;

    const-string v10, "^track[/][0-9]*$"

    invoke-direct {v7, v10}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 137
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/server/Track;

    iget-object v3, v1, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/server/Track;-><init>(Landroid/content/Context;Ljava/net/Socket;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_1
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    new-instance v7, Lkotlin/text/Regex;

    const-string v10, "^track[/][0-9]*[/]contents$"

    invoke-direct {v7, v10}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;

    iget-object v5, v1, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->context:Landroid/content/Context;

    invoke-direct {v2, v5, v4}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/TrackContent;->writePlayingContents$musicLibrary_release(Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;Ljava/net/Socket;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    .line 142
    :cond_2
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    new-instance v7, Lkotlin/text/Regex;

    const-string v10, "^track[/][0-9]*[/]artwork$"

    invoke-direct {v7, v10}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 143
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;

    iget-object v3, v1, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->context:Landroid/content/Context;

    iget-object v5, v1, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->musicContent:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-direct {v2, v3, v0, v5, v4}, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;-><init>(Landroid/content/Context;Ljava/net/Socket;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v5, "playlist/current"

    .line 145
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 146
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist;

    iget-object v4, v1, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->context:Landroid/content/Context;

    iget-object v5, v1, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->activeQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-direct {v2, v4, v3, v0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;Ljava/net/Socket;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist;->writePlaylist()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_4
    const-string v3, "event/"

    const/4 v5, 0x0

    const/4 v7, 0x2

    .line 148
    invoke-static {v4, v3, v5, v7, v2}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 149
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/server/Event;

    iget-object v3, v1, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->context:Landroid/content/Context;

    iget-object v7, v1, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->callback:Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/server/Event;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/net/Socket;Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :goto_0
    invoke-static {v8, v9}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 152
    :cond_5
    :try_start_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$BadRequestException;

    const-string v2, "this is no matched expression"

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$BadRequestException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 126
    :cond_6
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_7
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$BadRequestException;

    const-string v2, "Header Unable to parse GET"

    invoke-direct {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$BadRequestException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v9, v0

    .line 122
    :try_start_2
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {v8, v9}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final setLinger(Ljava/net/Socket;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x3c

    .line 77
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore error during set linger."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->printInfoLog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final writeBadRequest(Ljava/io/OutputStream;)V
    .locals 1

    const-string v0, "HTTP/1.1 400"

    .line 160
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v0, ""

    .line 161
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->setLinger(Ljava/net/Socket;)V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->response(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->close(Ljava/net/Socket;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 52
    :try_start_1
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$BadRequestException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 54
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Throwable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object v3, v1

    check-cast v3, Ljava/io/OutputStream;

    const-string v4, "it"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->writeBadRequest(Ljava/io/OutputStream;)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    :try_start_6
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 58
    :catch_2
    :cond_0
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->printErrorLog(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :goto_3
    return-void

    .line 61
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->socket:Ljava/net/Socket;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder;->close(Ljava/net/Socket;)V

    throw v0
.end method
