.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;
    }
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentSongObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIsCurrentRegistered:Z

.field private mIsRegistered:Z

.field private final mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;

.field private final mObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mIsRegistered:Z

    .line 27
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mIsCurrentRegistered:Z

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 35
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;

    .line 37
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;)V

    .line 43
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;->setContentChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;)V

    .line 44
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;)Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mListener:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$OnContentChangeListener;

    return-object p0
.end method

.method private unregisterContentObserver()V
    .locals 2

    .line 80
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mIsRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mIsRegistered:Z

    return-void
.end method

.method private unregisterCurrentSongObserver()V
    .locals 2

    .line 88
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mIsCurrentRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mCurrentSongObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mIsCurrentRegistered:Z

    return-void
.end method


# virtual methods
.method registerContentObserver(Landroid/net/Uri;)V
    .locals 3

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->unregisterContentObserver()V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mObserver:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$QueueContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mIsRegistered:Z

    return-void
.end method

.method registerCurrentSongObserver(Landroid/net/Uri;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->unregisterCurrentSongObserver()V

    if-nez p1, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mCurrentSongObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$2;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mCurrentSongObserver:Landroid/database/ContentObserver;

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mCurrentSongObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->mIsCurrentRegistered:Z

    return-void
.end method

.method unregisterObserver()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->unregisterContentObserver()V

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerListContentObserver;->unregisterCurrentSongObserver()V

    return-void
.end method
