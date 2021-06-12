.class public Lcom/samsung/android/app/music/lyrics/LyricsCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;,
        Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;,
        Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsCacheHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "LyricsCache"


# instance fields
.field private final mActivityCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final mClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCpAttrs:I

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private volatile mLastChangeNotification:J

.field private final mLyricsCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;",
            ">;"
        }
    .end annotation
.end field

.field private mLyricsLoader:Landroid/os/Handler$Callback;

.field private final mLyricsLock:Ljava/lang/Object;

.field private final mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private volatile mNeedCloseCursor:Z

.field private final mNotify:Landroid/database/ContentObserver;

.field private volatile mObserverRegistered:Z

.field private mShareLyrics:Landroid/os/Handler$Callback;

.field private mSyncLyricsLoader:Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;

.field private mThread:Landroid/os/HandlerThread;

.field private mUiHandler:Landroid/os/Handler;

.field private volatile mUsingCursor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsCache$1;

    const/high16 v1, 0x100000

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/lyrics/LyricsCache$1;-><init>(Lcom/samsung/android/app/music/lyrics/LyricsCache;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mLyricsCache:Landroid/util/LruCache;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->a()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 49
    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsCache$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/lyrics/LyricsCache$2;-><init>(Lcom/samsung/android/app/music/lyrics/LyricsCache;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mActivityCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 98
    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsCache$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/lyrics/LyricsCache$3;-><init>(Lcom/samsung/android/app/music/lyrics/LyricsCache;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mNotify:Landroid/database/ContentObserver;

    .line 273
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mLyricsLock:Ljava/lang/Object;

    .line 281
    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsCache$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/lyrics/LyricsCache$4;-><init>(Lcom/samsung/android/app/music/lyrics/LyricsCache;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mShareLyrics:Landroid/os/Handler$Callback;

    .line 320
    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/lyrics/LyricsCache$5;-><init>(Lcom/samsung/android/app/music/lyrics/LyricsCache;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mLyricsLoader:Landroid/os/Handler$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/lyrics/LyricsCache;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->checkRegisterObserver()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/lyrics/LyricsCache;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->checkUnregisterObserver()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mSyncLyricsLoader:Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mObserverRegistered:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/database/Cursor;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/samsung/android/app/music/lyrics/LyricsCache;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/samsung/android/app/music/lyrics/LyricsCache;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mUsingCursor:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mNeedCloseCursor:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/music/lyrics/LyricsCache;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mCursorCpAttrs:I

    return p0
.end method

.method static synthetic access$1802(Lcom/samsung/android/app/music/lyrics/LyricsCache;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mCursorCpAttrs:I

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/lyrics/LyricsCache;)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mLastChangeNotification:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/music/lyrics/LyricsCache;J)J
    .locals 0

    .line 29
    iput-wide p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mLastChangeNotification:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/lyrics/LyricsCache;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->closeCursor()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Ljava/lang/Object;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mLyricsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/lyrics/LyricsCache;)Landroid/util/LruCache;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mLyricsCache:Landroid/util/LruCache;

    return-object p0
.end method

.method private checkRegisterObserver()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->registerObserver(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private checkUnregisterObserver()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mClientCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->unregisterObserver(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private closeCursor()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 114
    iget-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mUsingCursor:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mNeedCloseCursor:Z

    .line 116
    sget-object v0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->LOG_TAG:Ljava/lang/String;

    const-string v1, "closeCursor() : mUsingCursor is true"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    .line 120
    iput-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    .line 121
    iput-boolean v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mNeedCloseCursor:Z

    .line 122
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 123
    sget-object v0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->LOG_TAG:Ljava/lang/String;

    const-string v1, "closeCursor()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private doInit(Landroid/app/Application;)V
    .locals 1

    .line 186
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mContext:Landroid/content/Context;

    .line 187
    iget-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mInitialized:Z

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mActivityCallback:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method private doInit(Landroid/content/Context;)V
    .locals 0

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mContext:Landroid/content/Context;

    .line 180
    iget-boolean p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mInitialized:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 181
    iput-boolean p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mInitialized:Z

    :cond_0
    return-void
.end method

.method private ensureLoadingThread()V
    .locals 5

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mLyricsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 263
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "LyricsLoaderThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 265
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mLyricsLoader:Landroid/os/Handler$Callback;

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mHandler:Landroid/os/Handler;

    .line 266
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mShareLyrics:Landroid/os/Handler$Callback;

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mUiHandler:Landroid/os/Handler;

    .line 267
    iput-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mThread:Landroid/os/HandlerThread;

    .line 269
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/music/lyrics/LyricsCache;
    .locals 1

    .line 198
    invoke-static {}, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsCacheHolder;->access$500()Lcom/samsung/android/app/music/lyrics/LyricsCache;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1

    .line 171
    invoke-static {}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->getInstance()Lcom/samsung/android/app/music/lyrics/LyricsCache;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->doInit(Landroid/app/Application;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 175
    invoke-static {}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->getInstance()Lcom/samsung/android/app/music/lyrics/LyricsCache;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->doInit(Landroid/content/Context;)V

    return-void
.end method

.method private isLyricsSupported(I)Z
    .locals 1

    .line 246
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/CpAttrs;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/music/provider/CpAttrs;->d(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private loadLyrics(IJLcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;Ljava/lang/Object;)V
    .locals 8

    .line 254
    invoke-direct {p0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->ensureLoadingThread()V

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsHolder;-><init>(IJLcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 256
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private registerObserver(Landroid/content/Context;)V
    .locals 3

    .line 148
    iget-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mObserverRegistered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mObserverRegistered:Z

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mNotify:Landroid/database/ContentObserver;

    .line 154
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private unregisterObserver(Landroid/content/Context;)V
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->closeCursor()V

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mObserverRegistered:Z

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mNotify:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mLyricsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mLyricsCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 242
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ensureLyricsLoader()V
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mSyncLyricsLoader:Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;

    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mSyncLyricsLoader:Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;

    :cond_0
    return-void
.end method

.method public getLyrics(IJLcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;Ljava/lang/Object;)V
    .locals 8

    .line 207
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->isLyricsSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    sget-object v0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lyrics is not supported ! - cpAttrs :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", audioId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {p4, p2, p3, v0, p5}, Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;->onLyricLoadFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mLyricsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mLyricsCache:Landroid/util/LruCache;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 216
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    .line 218
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-eq v1, v0, :cond_2

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->ensureLyricsLoader()V

    .line 220
    iget-object v2, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mSyncLyricsLoader:Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;

    move-object v3, v1

    move v4, p1

    move-wide v5, p2

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->isExpired(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;IJLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mLyricsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mLyricsCache:Landroid/util/LruCache;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->loadLyrics(IJLcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 223
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 226
    :cond_1
    invoke-interface {p4, p2, p3, v1, p5}, Lcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;->onLyricLoadFinished(JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Ljava/lang/Object;)V

    goto :goto_0

    .line 229
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->loadLyrics(IJLcom/samsung/android/app/music/lyrics/LyricsCache$OnLyricsListener;Ljava/lang/Object;)V

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 216
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public registerObserver()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->registerObserver(Landroid/content/Context;)V

    return-void
.end method

.method public remove(J)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mLyricsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mLyricsCache:Landroid/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterObserver()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->unregisterObserver(Landroid/content/Context;)V

    return-void
.end method
