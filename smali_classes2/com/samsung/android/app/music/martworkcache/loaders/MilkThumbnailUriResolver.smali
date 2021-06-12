.class public final Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;

.field private static final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;

    invoke-direct {v0}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;->a:Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 18
    sget-object p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private final a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 1

    const-string v0, "5"

    .line 56
    invoke-static {p1, p4, v0}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p4

    .line 61
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p4, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p4

    .line 62
    new-instance v0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver$requestAlbumUriFromNetwork$1;

    invoke-direct {v0, p2, p3, p1}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver$requestAlbumUriFromNetwork$1;-><init>(JLandroid/content/Context;)V

    check-cast v0, Lio/reactivex/Observer;

    invoke-virtual {p4, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private final b(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    .line 97
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Albums;->b:Landroid/net/Uri;

    const-string v0, "source_album_id"

    .line 98
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 101
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 p2, 0x0

    .line 102
    check-cast p2, Ljava/lang/Throwable;

    :try_start_0
    move-object p3, p1

    check-cast p3, Landroid/database/Cursor;

    if-eqz p3, :cond_0

    .line 103
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 104
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "c.getString(0)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p3

    .line 106
    :cond_0
    :try_start_1
    sget-object p3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p1, ""

    return-object p1

    :catchall_0
    move-exception p3

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 18
    sget-object p0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;J)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "MilkThumbnailUriResolver"

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolveUrisForAlbumId albumId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " was already completed"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 34
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string p1, "MilkThumbnailUriResolver"

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolveUrisForAlbumId albumId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ignored in progress"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 39
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "MilkThumbnailUriResolver"

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find source albumId for album: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v1, "MilkThumbnailUriResolver"

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveUrisForAlbumId albumId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " sourceAlbumId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/martworkcache/loaders/MilkThumbnailUriResolver;->a(Landroid/content/Context;JLjava/lang/String;)V

    return-void
.end method
