.class public abstract Landroid/support/v4/app/JobIntentService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/JobIntentService$CommandProcessor;,
        Landroid/support/v4/app/JobIntentService$CompatWorkItem;,
        Landroid/support/v4/app/JobIntentService$GenericWorkItem;,
        Landroid/support/v4/app/JobIntentService$JobWorkEnqueuer;,
        Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;,
        Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;,
        Landroid/support/v4/app/JobIntentService$CompatJobEngine;,
        Landroid/support/v4/app/JobIntentService$WorkEnqueuer;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "JobIntentService"

.field static final sClassWorkEnqueuer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/support/v4/app/JobIntentService$WorkEnqueuer;",
            ">;"
        }
    .end annotation
.end field

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mCompatQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/app/JobIntentService$CompatWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

.field mCurProcessor:Landroid/support/v4/app/JobIntentService$CommandProcessor;

.field mDestroyed:Z

.field mInterruptIfStopped:Z

.field mJobImpl:Landroid/support/v4/app/JobIntentService$CompatJobEngine;

.field mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/JobIntentService;->sLock:Ljava/lang/Object;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v4/app/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 415
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->mInterruptIfStopped:Z

    .line 99
    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->mStopped:Z

    .line 100
    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->mDestroyed:Z

    .line 416
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 417
    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    goto :goto_0

    .line 419
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    :goto_0
    return-void
.end method

.method public static enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    .line 519
    sget-object v0, Landroid/support/v4/app/JobIntentService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 520
    :try_start_0
    invoke-static {p0, p1, v1, p2}, Landroid/support/v4/app/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    move-result-object p0

    .line 521
    invoke-virtual {p0, p2}, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->ensureJobId(I)V

    .line 522
    invoke-virtual {p0, p3}, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->enqueueWork(Landroid/content/Intent;)V

    .line 523
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 517
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "work must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 500
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0, p2, p3}, Landroid/support/v4/app/JobIntentService;->enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V

    return-void
.end method

.method static getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroid/support/v4/app/JobIntentService$WorkEnqueuer;
    .locals 2

    .line 528
    sget-object v0, Landroid/support/v4/app/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    if-nez v0, :cond_2

    .line 530
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 534
    new-instance p2, Landroid/support/v4/app/JobIntentService$JobWorkEnqueuer;

    invoke-direct {p2, p0, p1, p3}, Landroid/support/v4/app/JobIntentService$JobWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 532
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t be here without a job id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 536
    :cond_1
    new-instance p2, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;

    invoke-direct {p2, p0, p1}, Landroid/support/v4/app/JobIntentService$CompatWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    :goto_0
    move-object v0, p2

    .line 538
    sget-object p0, Landroid/support/v4/app/JobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method


# virtual methods
.method dequeueWork()Landroid/support/v4/app/JobIntentService$GenericWorkItem;
    .locals 3

    .line 638
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mJobImpl:Landroid/support/v4/app/JobIntentService$CompatJobEngine;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mJobImpl:Landroid/support/v4/app/JobIntentService$CompatJobEngine;

    invoke-interface {v0}, Landroid/support/v4/app/JobIntentService$CompatJobEngine;->dequeueWork()Landroid/support/v4/app/JobIntentService$GenericWorkItem;

    move-result-object v0

    return-object v0

    .line 641
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 642
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 643
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/JobIntentService$GenericWorkItem;

    monitor-exit v0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 645
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 647
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method doStopCurrentWork()Z
    .locals 2

    .line 598
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCurProcessor:Landroid/support/v4/app/JobIntentService$CommandProcessor;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCurProcessor:Landroid/support/v4/app/JobIntentService$CommandProcessor;

    iget-boolean v1, p0, Landroid/support/v4/app/JobIntentService;->mInterruptIfStopped:Z

    invoke-virtual {v0, v1}, Landroid/support/v4/app/JobIntentService$CommandProcessor;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x1

    .line 601
    iput-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->mStopped:Z

    .line 602
    invoke-virtual {p0}, Landroid/support/v4/app/JobIntentService;->onStopCurrentWork()Z

    move-result v0

    return v0
.end method

.method ensureProcessorRunningLocked(Z)V
    .locals 2

    .line 606
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCurProcessor:Landroid/support/v4/app/JobIntentService$CommandProcessor;

    if-nez v0, :cond_1

    .line 607
    new-instance v0, Landroid/support/v4/app/JobIntentService$CommandProcessor;

    invoke-direct {v0, p0}, Landroid/support/v4/app/JobIntentService$CommandProcessor;-><init>(Landroid/support/v4/app/JobIntentService;)V

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCurProcessor:Landroid/support/v4/app/JobIntentService$CommandProcessor;

    .line 608
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 609
    iget-object p1, p0, Landroid/support/v4/app/JobIntentService;->mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    invoke-virtual {p1}, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->serviceProcessingStarted()V

    .line 612
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/JobIntentService;->mCurProcessor:Landroid/support/v4/app/JobIntentService$CommandProcessor;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/JobIntentService$CommandProcessor;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public isStopped()Z
    .locals 1

    .line 579
    iget-boolean v0, p0, Landroid/support/v4/app/JobIntentService;->mStopped:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 464
    iget-object p1, p0, Landroid/support/v4/app/JobIntentService;->mJobImpl:Landroid/support/v4/app/JobIntentService$CompatJobEngine;

    if-eqz p1, :cond_0

    .line 465
    iget-object p1, p0, Landroid/support/v4/app/JobIntentService;->mJobImpl:Landroid/support/v4/app/JobIntentService$CompatJobEngine;

    invoke-interface {p1}, Landroid/support/v4/app/JobIntentService$CompatJobEngine;->compatGetBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 425
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 427
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 428
    new-instance v0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;

    invoke-direct {v0, p0}, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;-><init>(Landroid/support/v4/app/JobIntentService;)V

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->mJobImpl:Landroid/support/v4/app/JobIntentService$CompatJobEngine;

    .line 429
    iput-object v1, p0, Landroid/support/v4/app/JobIntentService;->mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    goto :goto_0

    .line 431
    :cond_0
    iput-object v1, p0, Landroid/support/v4/app/JobIntentService;->mJobImpl:Landroid/support/v4/app/JobIntentService$CompatJobEngine;

    .line 432
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 433
    invoke-static {p0, v0, v1, v1}, Landroid/support/v4/app/JobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 475
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 476
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x1

    .line 478
    :try_start_0
    iput-boolean v1, p0, Landroid/support/v4/app/JobIntentService;->mDestroyed:Z

    .line 479
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    invoke-virtual {v1}, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->serviceProcessingFinished()V

    .line 480
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method protected abstract onHandleWork(Landroid/content/Intent;)V
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 443
    iget-object p2, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 444
    iget-object p2, p0, Landroid/support/v4/app/JobIntentService;->mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    invoke-virtual {p2}, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->serviceStartReceived()V

    .line 446
    iget-object p2, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter p2

    .line 447
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/v4/app/JobIntentService$CompatWorkItem;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :goto_0
    invoke-direct {v1, p0, p1, p3}, Landroid/support/v4/app/JobIntentService$CompatWorkItem;-><init>(Landroid/support/v4/app/JobIntentService;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 449
    invoke-virtual {p0, p1}, Landroid/support/v4/app/JobIntentService;->ensureProcessorRunningLocked(Z)V

    .line 450
    monitor-exit p2

    const/4 p1, 0x3

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method public onStopCurrentWork()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method processorFinished()V
    .locals 2

    .line 617
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 618
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 619
    :try_start_0
    iput-object v1, p0, Landroid/support/v4/app/JobIntentService;->mCurProcessor:Landroid/support/v4/app/JobIntentService$CommandProcessor;

    .line 628
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 629
    invoke-virtual {p0, v1}, Landroid/support/v4/app/JobIntentService;->ensureProcessorRunningLocked(Z)V

    goto :goto_0

    .line 630
    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/app/JobIntentService;->mDestroyed:Z

    if-nez v1, :cond_1

    .line 631
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService;->mCompatWorkEnqueuer:Landroid/support/v4/app/JobIntentService$WorkEnqueuer;

    invoke-virtual {v1}, Landroid/support/v4/app/JobIntentService$WorkEnqueuer;->serviceProcessingFinished()V

    .line 633
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method public setInterruptIfStopped(Z)V
    .locals 0

    .line 571
    iput-boolean p1, p0, Landroid/support/v4/app/JobIntentService;->mInterruptIfStopped:Z

    return-void
.end method
