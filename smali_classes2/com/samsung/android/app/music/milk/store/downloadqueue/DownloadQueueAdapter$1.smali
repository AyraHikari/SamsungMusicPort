.class Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$1;->b:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$1;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$1;->b:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$1;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    iget v0, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;->d(I)V

    return-void
.end method
