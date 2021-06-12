.class Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$2;
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

    .line 128
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$2;->b:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 131
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    iget p1, p1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 136
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$2;->b:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    iget v0, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;->b(I)V

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$2;->b:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    iget v0, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;->a(I)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$2;->b:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter$2;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    iget v0, v0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;->c(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
