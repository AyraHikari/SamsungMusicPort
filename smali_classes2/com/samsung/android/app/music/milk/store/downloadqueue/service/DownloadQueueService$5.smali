.class Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;Landroid/os/Looper;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 570
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->h(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;

    .line 571
    invoke-interface {v1, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;I)V
    .locals 0

    .line 463
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a(I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 466
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    .line 467
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v1, "SV"

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadQueue_DownloadQueueService | ResultHandler | handleMessage() - result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", networkInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    .line 471
    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->i(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 468
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x64

    const-wide/16 v3, 0x0

    if-eq p1, v2, :cond_2

    packed-switch p1, :pswitch_data_0

    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    const-string p1, "SV"

    const-string v0, "DownloadQueue_DownloadQueueService | ResultHandler | handleMessage() - Don\'t really have to deal with this case?"

    .line 563
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 551
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    iget v3, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->c(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)I

    const-string v2, "SV"

    .line 552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadQueue_DownloadQueueService | ResultHandler | handleMessage() - Keep queue id to continue downloading after get connection again. mPendingQueueId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    .line 554
    invoke-static {v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->j(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 552
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget v2, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    iget-wide v3, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->r:J

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueDb;->a(Landroid/content/Context;IJ)V

    .line 556
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->i(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->j(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)V

    .line 559
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a(I)V

    goto/16 :goto_1

    .line 545
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->g(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->d()V

    .line 546
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)V

    .line 547
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a(I)V

    goto/16 :goto_1

    .line 520
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 521
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;I)V

    .line 522
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto/16 :goto_1

    :pswitch_3
    const/16 v5, 0x3ea

    if-ne p1, v5, :cond_1

    .line 508
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->g(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->e()V

    goto :goto_0

    .line 510
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->g(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->c()V

    .line 512
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v5, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)V

    .line 513
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)V

    .line 514
    iput-wide v3, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->r:J

    .line 515
    iget v0, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-static {v1, v0, v3, v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueDb;->a(Landroid/content/Context;IJ)V

    .line 516
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a(I)V

    goto :goto_1

    .line 486
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    iget v0, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)V

    .line 487
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)V

    .line 488
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a(I)V

    goto :goto_1

    .line 482
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)V

    goto :goto_1

    .line 475
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->g(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;

    move-result-object p1

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->b(Ljava/lang/String;)V

    .line 476
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)V

    .line 477
    iget p1, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueDb;->a(Landroid/content/Context;I)V

    .line 478
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)V

    goto :goto_1

    .line 495
    :cond_2
    :pswitch_7
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    iget v5, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-static {v2, v5}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)V

    .line 496
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadableUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)V

    .line 497
    iput-wide v3, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->r:J

    .line 498
    iget v0, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-static {v1, v0, v3, v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueDb;->a(Landroid/content/Context;IJ)V

    .line 499
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)V

    .line 500
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$5;->a(I)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3e8
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
