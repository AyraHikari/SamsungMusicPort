.class Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$HighlightPlayRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HighlightPlayRunnable"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/net/Uri;

.field private c:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)V
    .locals 1

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$HighlightPlayRunnable;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method declared-synchronized a(Landroid/net/Uri;)V
    .locals 1

    monitor-enter p0

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$HighlightPlayRunnable;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 551
    monitor-exit p0

    return-void

    .line 553
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 554
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$HighlightPlayRunnable;->b:Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 548
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Landroid/net/Uri;I)V
    .locals 2

    monitor-enter p0

    .line 558
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$HighlightPlayRunnable;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    if-nez v0, :cond_0

    .line 560
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->l()Ljava/lang/String;

    move-result-object p1

    const-string p2, "postPlay() - preview player is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    monitor-exit p0

    return-void

    .line 563
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 564
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$HighlightPlayRunnable;->b:Landroid/net/Uri;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$HighlightPlayRunnable;->b:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 565
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->l()Ljava/lang/String;

    move-result-object p1

    const-string p2, "postPlay() - uri is not matched!, ignore postPlay"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    monitor-exit p0

    return-void

    .line 568
    :cond_1
    :try_start_2
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$HighlightPlayRunnable;->c:I

    .line 569
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 570
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 557
    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 4

    .line 574
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$HighlightPlayRunnable;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    if-nez v0, :cond_0

    .line 576
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HighlightPlayRunnable - preview player is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 580
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->m()Landroid/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$HighlightPlayRunnable;->b:Landroid/net/Uri;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$HighlightPlayRunnable;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$HighlightPlayRunnable;->c:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;I)V

    .line 584
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->c(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 585
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->c(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;->e()V

    .line 588
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->d(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)V

    return-void
.end method
