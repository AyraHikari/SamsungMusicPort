.class Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$2$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$2;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$2;Landroid/os/Looper;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$2$1;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$2;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 407
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$2$1;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->d(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)V

    return-void
.end method
