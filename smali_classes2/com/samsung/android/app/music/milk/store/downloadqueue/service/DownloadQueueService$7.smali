.class Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$7;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 719
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$7;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;

    .line 720
    iget v2, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->l:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v0, "SV"

    .line 725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadQueue_DownloadQueueService | saveDownloadingState() - downloading: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 727
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$7;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v2, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->a:I

    iget-wide v3, v1, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueData;->r:J

    invoke-static {v0, v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueDb;->a(Landroid/content/Context;IJ)V

    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 3

    const-string v0, "SV"

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueService | start() - id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$7;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SV"

    .line 740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueService | addDownloadQueueCallback() - callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$7;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->h(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$7;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 743
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$7;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->a(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3

    const-string v0, "SV"

    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueService | pause() - id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$7;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SV"

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueService | removeDownloadQueueCallback() - callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$7;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->h(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(I)V
    .locals 3

    const-string v0, "SV"

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueService | resume() - id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$7;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->d(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)V

    return-void
.end method

.method public d(I)V
    .locals 3

    const-string v0, "SV"

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadQueue_DownloadQueueService | delete() - id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$7;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->e(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;I)V

    return-void
.end method

.method public e(I)V
    .locals 2

    const-string v0, "SV"

    const-string v1, "DownloadQueue_DownloadQueueService | clearNotification()"

    .line 734
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService$7;->a:Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;->g(Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueService;)Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/DownloadQueueNotifier;->b(I)V

    return-void
.end method
