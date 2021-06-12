.class public final Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScheduledExecutorFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory$Holder;
    }
.end annotation


# instance fields
.field private mExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$1;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;-><init>()V

    return-void
.end method

.method private ensureExecutor()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    .line 311
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;

    monitor-enter v0

    .line 312
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    const/4 v1, 0x4

    .line 313
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 315
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

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;
    .locals 1

    .line 287
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory$Holder;->sInstance:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;

    return-object v0
.end method


# virtual methods
.method public obtainScheduleExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 294
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->ensureExecutor()V

    .line 295
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method release()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 300
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;

    monitor-enter v0

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v1, 0x0

    .line 303
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$ScheduledExecutorFactory;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 305
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
