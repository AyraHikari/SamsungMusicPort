.class public final Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-ContentServer"

.field private static final SUB_TAG:Ljava/lang/String; = "Server> "


# instance fields
.field private latch:Ljava/util/concurrent/CountDownLatch;

.field private final musicContent:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private final socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/net/Socket;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Ljava/lang/String;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socket"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "musicContent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;->socket:Ljava/net/Socket;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;->musicContent:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    const-string p2, "track/"

    .line 25
    check-cast p2, Ljava/lang/CharSequence;

    const-string p3, "/artwork"

    check-cast p3, Ljava/lang/CharSequence;

    invoke-static {p4, p2, p3}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 27
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string p1, "cp_attrs"

    const-string p3, "album_id"

    .line 28
    filled-new-array {p1, p3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "_id = ?"

    const/4 p1, 0x1

    .line 29
    new-array v4, p1, [Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p2, v4, p3

    const/4 v5, 0x0

    .line 26
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 85
    move-object p4, p2

    check-cast p4, Ljava/io/Closeable;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v1, p4

    check-cast v1, Landroid/database/Cursor;

    if-nez p2, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-direct {p0, p3, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;->writeArtwork(IJ)V

    .line 32
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {p4, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, p1

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {p4, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final synthetic access$getSocket$p(Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;)Ljava/net/Socket;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;->socket:Ljava/net/Socket;

    return-object p0
.end method

.method private final waitCallback(Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 73
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method private final writeArtwork(IJ)V
    .locals 6

    .line 36
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 37
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v1, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 38
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeArtwork waitCallback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;Ljava/lang/String;)V

    .line 39
    sget v3, Lcom/samsung/android/app/musiclibrary/R$dimen;->bitmap_size_middle:I

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v3

    .line 40
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;->musicContent:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-interface {v4, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedArtworkUri(I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v3, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p1

    .line 41
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$writeArtwork$1;

    invoke-direct {p2, p0, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$writeArtwork$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    .line 65
    iget-boolean p1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_0

    .line 66
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;

    const-string p2, "writeArtwork waitCallback setup count is 1"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt$Companion;Ljava/lang/String;)V

    .line 67
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p1, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;->waitCallback(Ljava/util/concurrent/CountDownLatch;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;->latch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public final setLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/AlbumArt;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method
