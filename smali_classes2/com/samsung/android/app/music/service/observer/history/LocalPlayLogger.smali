.class public Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$LocalPlayHistory;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "LocalPlayLogger"

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private f:I

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private final p:Landroid/content/BroadcastReceiver;

.field private final q:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private final r:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->d:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->f:I

    const-wide/16 v1, 0x0

    .line 74
    iput-wide v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->g:J

    .line 79
    iput-wide v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->h:J

    .line 84
    iput-wide v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->i:J

    .line 89
    iput-wide v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->j:J

    .line 91
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->k:Z

    .line 93
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->l:Z

    .line 363
    new-instance v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$5;-><init>(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->p:Landroid/content/BroadcastReceiver;

    .line 376
    new-instance v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$6;-><init>(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->q:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 390
    new-instance v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$7;-><init>(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->r:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    .line 102
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 357
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x31

    .line 360
    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private a(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$LocalPlayHistory;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi;->a(Landroid/content/Context;Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$LocalPlayHistory;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$3;-><init>(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)V

    .line 253
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$LocalPlayHistory;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$LocalPlayHistory;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4

    .line 214
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->j:J

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 216
    sget-object p1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePlayHistory Do not notify because it played under 30s (played : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->c()V

    return-void

    .line 222
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;-><init>()V

    .line 223
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;->a:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;->b:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;->c:Ljava/lang/String;

    const-string v1, "android.media.metadata.DURATION"

    .line 226
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;->d:Ljava/lang/String;

    .line 228
    new-instance p1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;

    invoke-direct {p1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;-><init>()V

    .line 229
    iput-object v0, p1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;->d:Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord$PlayMeta;

    .line 230
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->g:J

    iput-wide v0, p1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;->c:J

    .line 231
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->g:J

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/util/ConvertSystemTime;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;->b:Ljava/lang/String;

    .line 232
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->j:J

    long-to-int v0, v0

    iput v0, p1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;->a:I

    .line 233
    sget-object v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePlayHistory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$2;-><init>(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;Lcom/samsung/android/app/music/service/observer/history/LocalPlayRecord;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 248
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->c()V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/model/UserInfo;)Z
    .locals 3

    .line 325
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->getUserStatus()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 328
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->o:Z

    if-ne v2, p1, :cond_1

    return v1

    .line 331
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->o:Z

    return v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;Lcom/samsung/android/app/music/model/UserInfo;)Z
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a(Lcom/samsung/android/app/music/model/UserInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)Landroid/content/Context;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 6

    .line 304
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 307
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 309
    iget-wide v4, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->i:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    .line 311
    iget-wide v2, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->h:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->j:J

    goto :goto_0

    .line 314
    :cond_1
    iget-wide v2, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->j:J

    iget-wide v4, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->i:J

    sub-long/2addr v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->j:J

    :goto_0
    const-string v0, "android.media.metadata.DURATION"

    .line 317
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 318
    iget-wide v2, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->j:J

    cmp-long p1, v2, v0

    if-lez p1, :cond_2

    .line 319
    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->j:J

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private c()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 180
    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->g:J

    .line 181
    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->h:J

    .line 182
    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->i:J

    .line 183
    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->j:J

    const/4 v0, 0x0

    .line 184
    iput v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->f:I

    .line 185
    sget-object v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a:Ljava/lang/String;

    const-string v1, "clear completed."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->e()V

    return-void
.end method

.method private d()V
    .locals 4

    .line 189
    const-class v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    monitor-enter v0

    .line 190
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->l:Z

    if-eqz v1, :cond_0

    .line 191
    monitor-exit v0

    return-void

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$1;-><init>(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    .line 199
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->g()V

    .line 200
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->h()Z

    .line 202
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 203
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->q:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 207
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->r:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    const/4 v1, 0x1

    .line 208
    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->l:Z

    .line 209
    sget-object v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a:Ljava/lang/String;

    const-string v2, "ensurePreCondition completed."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic d(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->h()Z

    move-result p0

    return p0
.end method

.method private e()V
    .locals 2

    .line 273
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    sget-object v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a:Ljava/lang/String;

    const-string v1, "sendSavedPlayHistory request saved records."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$4;-><init>(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->g()V

    return-void
.end method

.method private f()Z
    .locals 3

    .line 298
    sget-object v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canSend [MyMusicMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Login: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " NetworkAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g()V
    .locals 1

    .line 336
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->m:Z

    return-void
.end method

.method private h()Z
    .locals 4

    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWiFiConnected(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 344
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v3, "mobile_data"

    .line 345
    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 346
    iget-object v3, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isActiveMobileConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 349
    :goto_1
    iget-boolean v3, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->n:Z

    if-ne v3, v0, :cond_2

    return v1

    .line 352
    :cond_2
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->n:Z

    return v2
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    .line 107
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    sget-object p1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a:Ljava/lang/String;

    const-string v0, "onMetadataChanged Current meta is empty."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 109
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->k:Z

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->c()V

    return-void

    .line 113
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->k:Z

    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEditedMetadata()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 122
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isLocal()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->k:Z

    .line 123
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->k:Z

    if-eqz v0, :cond_3

    .line 124
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->d()V

    .line 125
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    goto :goto_0

    .line 127
    :cond_3
    sget-object p1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a:Ljava/lang/String;

    const-string v0, "onMetadataChanged Current meta is not local."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 4

    .line 133
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->k:Z

    if-nez v0, :cond_0

    .line 134
    sget-object p1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a:Ljava/lang/String;

    const-string v0, "onPlaybackStateChanged Current meta is not local."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 137
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result p1

    .line 138
    iget v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->f:I

    if-ne v0, p1, :cond_1

    .line 139
    sget-object p1, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->a:Ljava/lang/String;

    const-string v0, "onPlaybackStateChanged It\'s the same state so ignore this."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 142
    :cond_1
    iput p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->f:I

    .line 143
    iget p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->f:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 144
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->h:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->g:J

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->h:J

    goto :goto_0

    .line 148
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->i:J

    goto :goto_0

    .line 151
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->e:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    :goto_0
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public release()V
    .locals 3

    .line 168
    const-class v0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->l:Z

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->r:Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V

    .line 171
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->q:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 172
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    .line 173
    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->l:Z

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger;->c()V

    .line 176
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
