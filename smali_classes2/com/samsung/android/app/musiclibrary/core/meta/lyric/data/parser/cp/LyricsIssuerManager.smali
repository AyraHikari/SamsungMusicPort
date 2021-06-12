.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LyricsIssuerManager"

.field private static final sIssuingManager:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;

.field private static final sMapLock:Ljava/lang/Object;

.field private static final sThreadLock:Ljava/lang/Object;


# instance fields
.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mIssuerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->sThreadLock:Ljava/lang/Object;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->sMapLock:Ljava/lang/Object;

    .line 21
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->sIssuingManager:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->mIssuerMap:Ljava/util/HashMap;

    return-void
.end method

.method private createThreadInternal()V
    .locals 3

    .line 76
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->sThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Landroid/os/HandlerThread;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 79
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 81
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private destroyThreadInternal()V
    .locals 2

    .line 85
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->sThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    .line 88
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 90
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;
    .locals 1

    .line 28
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->sIssuingManager:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;

    return-object v0
.end method


# virtual methods
.method public final createIssuer(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;
    .locals 3

    .line 36
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->sMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->createThreadInternal()V

    .line 38
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 39
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;-><init>(Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader;Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->mIssuerMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final destroyAll()V
    .locals 3

    .line 64
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->sMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->mIssuerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->release()V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->mIssuerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->destroyThreadInternal()V

    .line 72
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final destroyIssuer(Ljava/lang/String;)V
    .locals 2

    .line 52
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->sMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->mIssuerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->release()V

    .line 56
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->mIssuerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->destroyThreadInternal()V

    .line 60
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final getIssuer(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;
    .locals 2

    .line 46
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->sMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->mIssuerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
