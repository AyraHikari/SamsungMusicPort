.class final Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler$DownloadableImpl;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/Downloadable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final e:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final f:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final g:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadQueue_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;

    .line 585
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Landroid/os/Handler;Landroid/os/Handler;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 608
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 609
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;->b:Landroid/content/Context;

    .line 610
    new-instance p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler$DownloadableImpl;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler$DownloadableImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$1;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/Downloadable;

    .line 611
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;->d:Landroid/os/Handler;

    .line 612
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;->e:Landroid/os/Handler;

    .line 613
    iput-object p5, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;->f:Landroid/os/Handler;

    .line 614
    iput-object p6, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;->g:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 619
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    if-nez p1, :cond_0

    const-string p1, "SV"

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "handleMessage() - null data."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "SV"

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "handleMessage() - data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 626
    iput v0, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    .line 627
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;->b:Landroid/content/Context;

    iget v2, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueDb;->a(Landroid/content/Context;II)V

    .line 628
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 630
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/Downloadable;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;->f:Landroid/os/Handler;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/Downloadable;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Landroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "SV"

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "handleMessage() - Fail to fill download info."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 635
    :cond_1
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->s:J

    const-wide/16 v4, 0x3

    mul-long v2, v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const-string v0, "SV"

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "handleMessage() - Not enough device storage."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;->f:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(ILcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 642
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;->g:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;

    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->a(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;->c:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/Downloadable;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$DownloadHandler;->f:Landroid/os/Handler;

    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/Downloadable;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;Landroid/os/Handler;Landroid/os/Handler;)V

    return-void
.end method
