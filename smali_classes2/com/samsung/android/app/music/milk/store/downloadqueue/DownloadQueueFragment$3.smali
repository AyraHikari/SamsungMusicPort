.class Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$3;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "Ui"

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueFragment | onServiceConnected() - name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$3;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    check-cast p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    .line 308
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$3;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    new-instance p2, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$3;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->d(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$3;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    .line 309
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->f(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 308
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    .line 310
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$3;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;->setHasStableIds(Z)V

    .line 311
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$3;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->f(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$3;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueAdapter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 313
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$3;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->d(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment$3;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;->c(Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueFragment;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "Ui"

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueFragment | onServiceDisconnected() - name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
