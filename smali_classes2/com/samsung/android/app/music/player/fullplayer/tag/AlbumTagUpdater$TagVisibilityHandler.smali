.class Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagVisibilityHandler"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;)V
    .locals 1

    .line 417
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 414
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 418
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x2

    .line 468
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method a(I)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 461
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    int-to-long v1, p1

    .line 463
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x1

    .line 472
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method c()V
    .locals 1

    const/4 v0, 0x3

    .line 476
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 423
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "SMUSIC-AlbumTagUpdater"

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag hide request count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 428
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 427
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 451
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_2

    .line 452
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;Z)V

    goto :goto_0

    .line 446
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_2

    .line 447
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;Z)V

    goto :goto_0

    .line 441
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result p1

    if-gtz p1, :cond_2

    .line 442
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;Z)V

    goto :goto_0

    .line 432
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_1

    .line 433
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;Z)V

    return-void

    .line 436
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater$TagVisibilityHandler;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    .line 437
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;->a(Lcom/samsung/android/app/music/player/fullplayer/tag/AlbumTagUpdater;Z)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
