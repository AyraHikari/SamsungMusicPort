.class public final Lcom/samsung/android/app/musiclibrary/core/service/server/Event;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/server/Event$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/Event$Companion;

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-ContentServer"

.field private static final SUB_TAG:Ljava/lang/String; = "Server> "


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/server/Event$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/Event$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/server/Event;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/Event$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/net/Socket;Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/net/Socket;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socket"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/Event;->context:Landroid/content/Context;

    .line 61
    invoke-direct {p0, p2, p5, p4}, Lcom/samsung/android/app/musiclibrary/core/service/server/Event;->handlePath(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;Ljava/util/List;)V

    .line 62
    invoke-virtual {p3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 p2, 0x0

    check-cast p2, Ljava/lang/Throwable;

    :try_start_0
    move-object p3, p1

    check-cast p3, Ljava/io/OutputStream;

    const-string p4, "out"

    .line 63
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/server/Event;->writeSuccessHeader(Ljava/io/OutputStream;)V

    .line 64
    sget-object p3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p3

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method private final handlePath(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "event/play_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 93
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/Event;->parsingPlaybackState(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;)V

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "event/seek"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 96
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/Event;->parsingPlaybackState(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;->onSeek(Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;)V

    goto/16 :goto_0

    :sswitch_2
    const-string p3, "event/prev"

    .line 72
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 87
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;->onPrev()V

    goto/16 :goto_0

    :sswitch_3
    const-string p3, "event/play"

    .line 72
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 78
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;->onPlay()V

    goto :goto_0

    :sswitch_4
    const-string p3, "event/next"

    .line 72
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 84
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;->onNext()V

    goto :goto_0

    :sswitch_5
    const-string v0, "event/action"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/Event;->parsingAction(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Action;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 104
    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;->onAction(Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Action;)V

    goto :goto_0

    :sswitch_6
    const-string p3, "event/release"

    .line 72
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 90
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;->onRelease()V

    goto :goto_0

    :sswitch_7
    const-string p3, "event/pause"

    .line 72
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 81
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;->onPause()V

    goto :goto_0

    :sswitch_8
    const-string v0, "event/playing_complete"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/Event;->parsingItem(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Item;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 75
    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;->onPlayingComplete(Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Item;)V

    goto :goto_0

    :sswitch_9
    const-string v0, "event/play_queue_item"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-direct {p0, p3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/Event;->parsingQueueItem(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;->getId()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentServerEventCallback;->onSkipToQueueItem(J)V

    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    :goto_1
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$BadRequestException;

    const-string p2, "no matched event"

    invoke-direct {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$BadRequestException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x61d4a609 -> :sswitch_9
        -0x44b08301 -> :sswitch_8
        -0x374b7dbf -> :sswitch_7
        -0x2248626e -> :sswitch_6
        0x345eab4b -> :sswitch_5
        0x3804f948 -> :sswitch_4
        0x3805f989 -> :sswitch_3
        0x38061088 -> :sswitch_2
        0x38073ccd -> :sswitch_1
        0x47c4165b -> :sswitch_0
    .end sparse-switch
.end method

.method private final parsingAction(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Action;"
        }
    .end annotation

    .line 113
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Action;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/Event;->parsingGson(Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Action;

    return-object p1
.end method

.method private final parsingGson(Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 146
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/Event;->readBody(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 147
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/server/Event;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "folded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/Event;->printInfoLog(Ljava/lang/String;)V

    .line 150
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1, p3}, Lcom/google/gson/Gson;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 151
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/service/server/Event;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 152
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/Event;->printInfoLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " exception "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/Event;->printInfoLog(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final parsingItem(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Item;"
        }
    .end annotation

    .line 121
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Item;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/Event;->parsingGson(Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/Item;

    return-object p1
.end method

.method private final parsingPlaybackState(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;"
        }
    .end annotation

    .line 125
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/Event;->parsingGson(Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;

    return-object p1
.end method

.method private final parsingQueueItem(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;"
        }
    .end annotation

    .line 117
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/Event;->parsingGson(Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/QueueItem;

    return-object p1
.end method

.method private final printInfoLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-ContentServer"

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final readBody(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 130
    check-cast p1, Ljava/lang/Iterable;

    const-string v0, ""

    .line 182
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    if-gez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_0
    check-cast v4, Ljava/lang/String;

    if-nez v3, :cond_2

    .line 132
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    move v3, v0

    :cond_2
    if-eqz v3, :cond_3

    if-ge v3, v0, :cond_3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method private final writeSuccessHeader(Ljava/io/OutputStream;)V
    .locals 1

    const-string v0, "HTTP/1.1 200 OK"

    .line 168
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v0, "Connection: close"

    .line 169
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v0, ""

    .line 170
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method
