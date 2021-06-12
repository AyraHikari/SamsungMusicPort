.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;,
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$SyncServiceArtworkLoaderHolder;,
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ArtworkLoadingListener;,
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceConnectionTimeoutException;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final e:[Ljava/lang/String;

.field private static final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final g:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

.field private static h:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static final i:Landroid/content/ServiceConnection;

.field private static final l:[J

.field private static final q:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

.field private static volatile r:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;


# instance fields
.field private a:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;",
            "[J>;"
        }
    .end annotation
.end field

.field private k:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;

.field private final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

.field private o:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

.field private final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ArtworkLoadingListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArtWork"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    .line 70
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->b:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->c:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "SERVICE_DISCONNECTED"

    const-string v2, "SERVICE_CONNECTING"

    const-string v3, "SERVICE_CONNECTED"

    const-string v4, "SERVICE_DISCONNECTING"

    .line 87
    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->e:[Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Unbind service"

    .line 93
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$1;

    invoke-direct {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$1;-><init>()V

    const/16 v3, 0x3a98

    .line 94
    invoke-static {v0, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceHandlerThread;->a(Ljava/lang/String;ILjava/lang/Runnable;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->g:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    .line 117
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$2;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$2;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->i:Landroid/content/ServiceConnection;

    .line 137
    new-array v0, v1, [J

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->l:[J

    .line 149
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->q:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->j:Ljava/util/Map;

    .line 139
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 140
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->m:Ljava/util/Set;

    .line 146
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 147
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->p:Ljava/util/Set;

    return-void
.end method

.method private a(Landroid/net/Uri;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 602
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->k:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->a(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;
    .locals 0

    .line 606
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->b(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 608
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->n:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    return-object p1

    .line 610
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->o:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;
    .locals 0

    .line 44
    sput-object p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->r:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;

    return-object p0
.end method

.method public static a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;
    .locals 1

    .line 225
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$SyncServiceArtworkLoaderHolder;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    return-object v0
.end method

.method static synthetic a(I)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 179
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->c(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 182
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;->clearDiskCache()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceConnectionTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 185
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->c:Ljava/lang/String;

    const-string v1, "clearDiskCache"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;Landroid/graphics/Bitmap$Config;)V
    .locals 1

    .line 342
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 343
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 344
    :goto_0
    invoke-virtual {p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_1

    goto :goto_2

    .line 360
    :cond_1
    invoke-static {p2, p3, p5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->a(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object p1

    .line 361
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->m:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 362
    invoke-virtual {p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->g()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 363
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;

    .line 364
    invoke-virtual {p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->b()I

    move-result p5

    invoke-virtual {p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->g()Ljava/io/File;

    move-result-object v0

    .line 365
    invoke-virtual {p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a()I

    move-result p4

    invoke-direct {p3, p1, p5, v0, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheFileSaveRequest;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;ILjava/io/File;I)V

    .line 363
    invoke-virtual {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)V

    goto :goto_1

    .line 367
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheUriSaveRequest;

    .line 368
    invoke-virtual {p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a()I

    move-result p4

    invoke-direct {p3, p1, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/MDiskCacheUriSaveRequest;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;I)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;)V

    :cond_3
    :goto_1
    return-void

    .line 345
    :cond_4
    :goto_2
    invoke-virtual {p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->h()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;I)V
    .locals 0

    .line 168
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->c(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 171
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;->addToDiskCache(Landroid/net/Uri;ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceConnectionTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 174
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->c:Ljava/lang/String;

    const-string p2, "addToDiskCache"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;)V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ArtworkLoadingListener;

    if-eqz v1, :cond_0

    .line 335
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ArtworkLoadingListener;->a(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;",
            ">;)V"
        }
    .end annotation

    .line 237
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->b(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method private static b(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_0

    .line 583
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->e:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 584
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->e:[Ljava/lang/String;

    aget-object p0, v0, p0

    goto :goto_0

    .line 586
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static synthetic b()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 44
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private b(Ljava/util/concurrent/Callable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ArtWork"

    const-string v1, "SyncServiceArtworkLoader initialization"

    .line 229
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceLocalLoader;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceLocalLoader;-><init>()V

    .line 231
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->k:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;

    .line 232
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->j:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->l:[J

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a:Ljava/util/concurrent/Callable;

    return-void
.end method

.method private static c(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;
    .locals 6

    .line 502
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->h()V

    .line 503
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->d(Landroid/content/Context;)V

    const/4 p0, 0x0

    const/4 v0, -0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    :goto_0
    const/16 v2, 0x3e8

    const/4 v3, 0x2

    if-ge v0, v2, :cond_4

    .line 506
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eq v2, v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 509
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensureConnection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x3

    const-wide/16 v3, 0xa

    if-eq v2, v1, :cond_1

    packed-switch v2, :pswitch_data_0

    .line 531
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->r:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;

    return-object p0

    .line 527
    :pswitch_0
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    .line 514
    :cond_1
    :pswitch_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x1

    .line 515
    invoke-virtual {v1, v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 516
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->c:Ljava/lang/String;

    const-string v2, "connecting to service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->k()Z

    move-result v1

    if-nez v1, :cond_2

    .line 521
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->j()V

    goto :goto_1

    .line 518
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "This method can\'t be called from UI thread"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 524
    :cond_3
    :goto_1
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 533
    :goto_2
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 536
    :cond_4
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 537
    new-instance p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceConnectionTimeoutException;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceConnectionTimeoutException;-><init>(II)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 469
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->c(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;

    move-result-object p0

    .line 470
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    if-eqz p0, :cond_4

    if-eqz p3, :cond_0

    .line 475
    :try_start_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result p3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    .line 477
    :cond_0
    sget-object p3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->a:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p3}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result p3

    .line 479
    :goto_0
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService;->loadArtwork(Landroid/net/Uri;II)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object p0

    if-nez p0, :cond_1

    .line 483
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    :cond_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    .line 495
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->g:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->a()V

    :cond_2
    return-object p0

    .line 489
    :goto_1
    :try_start_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->c:Ljava/lang/String;

    const-string p2, "loadArtwork"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_5

    goto :goto_3

    :goto_2
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_3

    .line 495
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->g:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->a()V

    :cond_3
    throw p0

    .line 491
    :cond_4
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p0

    if-nez p0, :cond_5

    .line 495
    :goto_3
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->g:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;->a()V

    .line 498
    :cond_5
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    return-object p0
.end method

.method static synthetic c()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 44
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private d(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 407
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    move-result-object v0

    if-nez v0, :cond_0

    .line 409
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    return-object p1

    .line 411
    :cond_0
    invoke-static {p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->a(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object p1

    return-object p1
.end method

.method static synthetic d()V
    .locals 0

    .line 44
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->g()V

    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 1

    .line 576
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->h:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 577
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->h:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method static synthetic e()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;
    .locals 1

    .line 44
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->g:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/ServiceTimer;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->c:Ljava/lang/String;

    return-object v0
.end method

.method private static g()V
    .locals 3

    .line 109
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->h:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->h:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->i:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private static h()V
    .locals 1

    .line 542
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->q:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 545
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->q:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 546
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->q:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->b()V

    return-void

    .line 549
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    move-result-object v0

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->i()V

    .line 550
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->q:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/InitHelper;->d()V

    return-void
.end method

.method private i()V
    .locals 4

    .line 556
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "ArtWork"

    const-string v3, "SyncServiceArtworkLoader allocate remote disk cache"

    .line 562
    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->c:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    invoke-direct {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->n:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    goto :goto_0

    .line 565
    :cond_0
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->n:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    .line 567
    :goto_0
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ArtWork"

    const-string v2, "SyncServiceArtworkLoader allocate local disk cache"

    .line 568
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;->d:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->o:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    goto :goto_1

    .line 571
    :cond_1
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->o:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 558
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->c:Ljava/lang/String;

    const-string v2, "Unable to initialize SyncArtwork loader"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to initialize SyncArtwork loader"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static j()V
    .locals 4

    .line 592
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->h:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->h:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 594
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->h:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->i:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private static k()Z
    .locals 4

    .line 598
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method a(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 7

    .line 310
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->h()V

    .line 313
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->d(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->b:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serviceLoadArtwork() uri = ["

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "], size = ["

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] found in disk cache as = ["

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 320
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->b(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v6

    move-object v5, p4

    .line 321
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;Landroid/graphics/Bitmap$Config;)V

    .line 322
    invoke-direct {p0, p2, v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception p1

    .line 326
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->c:Ljava/lang/String;

    const-string p3, "serviceLoadArtwork"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    return-object p1

    :catch_1
    move-exception p1

    .line 324
    throw p1
.end method

.method public a(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 2

    .line 211
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->h()V

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->m:Ljava/util/Set;

    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->a(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 213
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a(Landroid/content/Context;Landroid/net/Uri;I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;I)V
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->m:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p3, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    iget v1, p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 453
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Ljava/io/File;I)V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->m:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p3, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->b:Landroid/net/Uri;

    iget v1, p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->c:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Ljava/io/File;I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method a(Landroid/net/Uri;ILjava/io/File;I)V
    .locals 2

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->a()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->a(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Ljava/io/File;I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ArtworkLoadingListener;)V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->p:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;[J)V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->k:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;)V

    .line 420
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 10
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 379
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->a(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    .line 380
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    return-object p1

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->j:Ljava/util/Map;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    const/4 v2, 0x0

    .line 387
    invoke-static {p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->a(Landroid/graphics/Bitmap$Config;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v9

    .line 389
    :goto_0
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, v9

    move-object v8, p4

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;->a(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap$Config;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object v3

    .line 390
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->f()Z

    move-result v4

    if-nez v4, :cond_2

    array-length v4, v1

    if-lt v2, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    .line 393
    aget-wide v4, v1, v2

    .line 399
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    move v2, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-object v3
.end method

.method b(Landroid/content/Context;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->m:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->n:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->n:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a(Landroid/content/Context;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->o:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->o:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
