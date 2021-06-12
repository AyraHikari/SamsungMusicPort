.class Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$3;
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

    .line 422
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$3;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    const-string p1, "SV"

    const-string v0, "DownloadQueue_DownloadQueueService | QueueChangedHandler | handleMessage()"

    .line 425
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$3;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->d(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)V

    return-void
.end method
