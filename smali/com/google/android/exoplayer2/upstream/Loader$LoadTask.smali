.class final Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/upstream/Loader$Loadable;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:I

.field final synthetic b:Lcom/google/android/exoplayer2/upstream/Loader;

.field private final c:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/exoplayer2/upstream/Loader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:J

.field private f:Ljava/io/IOException;

.field private g:I

.field private volatile h:Ljava/lang/Thread;

.field private volatile i:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Loader;Landroid/os/Looper;Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
            "TT;>;IJ)V"
        }
    .end annotation

    .line 265
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 266
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 267
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->c:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    .line 268
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->d:Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    .line 269
    iput p5, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->a:I

    .line 270
    iput-wide p6, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->e:J

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    .line 410
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->f:Ljava/io/IOException;

    .line 411
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->b(Lcom/google/android/exoplayer2/upstream/Loader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-static {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader;)Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;)Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    return-void
.end method

.method private c()J
    .locals 2

    .line 419
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->g:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->f:Ljava/io/IOException;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->g:I

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->f:Ljava/io/IOException;

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public a(J)V
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader;)Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 281
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;)Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 283
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->a()V

    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 8

    .line 290
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->i:Z

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->f:Ljava/io/IOException;

    const/4 v0, 0x0

    .line 292
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->removeMessages(I)V

    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 295
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->c:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/Loader$Loadable;->a()V

    .line 299
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->h:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 304
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->b()V

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 306
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->d:Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->c:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    iget-wide v5, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->e:J

    sub-long v5, v3, v5

    const/4 v7, 0x1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/upstream/Loader$Callback;->a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V

    :cond_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 363
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->i:Z

    if-eqz v0, :cond_0

    return-void

    .line 366
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 367
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->a()V

    return-void

    .line 370
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    .line 373
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->b()V

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 375
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->e:J

    sub-long v6, v4, v0

    .line 376
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->c:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/Loader$Loadable;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->d:Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->c:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/Loader$Callback;->a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V

    return-void

    .line 380
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 394
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/IOException;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->f:Ljava/io/IOException;

    .line 395
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->d:Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->c:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->f:Ljava/io/IOException;

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/Loader$Callback;->a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 397
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->f:Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_0

    .line 399
    :cond_4
    iget p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->g:I

    add-int/2addr v0, p1

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->g:I

    .line 400
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->a(J)V

    goto :goto_1

    .line 386
    :pswitch_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->d:Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->c:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/upstream/Loader$Callback;->a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "LoadTask"

    const-string v1, "Unexpected exception handling load completed"

    .line 389
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    new-instance v1, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->a(Lcom/google/android/exoplayer2/upstream/Loader;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_1

    .line 382
    :pswitch_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->d:Lcom/google/android/exoplayer2/upstream/Loader$Callback;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->c:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/upstream/Loader$Callback;->a(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V

    :cond_5
    :goto_1
    return-void

    .line 371
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 313
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->h:Ljava/lang/Thread;

    .line 314
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->c:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/Loader$Loadable;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 315
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->c:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/TraceUtil;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :try_start_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->c:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/upstream/Loader$Loadable;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :try_start_2
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->a()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->a()V

    throw v2

    .line 322
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->i:Z

    if-nez v2, :cond_2

    .line 323
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "LoadTask"

    const-string v2, "Unexpected error loading stream"

    .line 353
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->i:Z

    if-nez v1, :cond_1

    const/4 v1, 0x4

    .line 355
    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 357
    :cond_1
    throw v0

    :catch_1
    move-exception v0

    const-string v2, "LoadTask"

    const-string v3, "OutOfMemory error loading stream"

    .line 345
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->i:Z

    if-nez v2, :cond_2

    .line 347
    new-instance v2, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v2, "LoadTask"

    const-string v3, "Unexpected exception loading stream"

    .line 337
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->i:Z

    if-nez v2, :cond_2

    .line 339
    new-instance v2, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/upstream/Loader$UnexpectedLoaderException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :catch_3
    nop

    .line 331
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->c:Lcom/google/android/exoplayer2/upstream/Loader$Loadable;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/Loader$Loadable;->b()Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 332
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->i:Z

    if-nez v1, :cond_2

    .line 333
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->sendEmptyMessage(I)Z

    goto :goto_1

    :catch_4
    move-exception v0

    .line 326
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->i:Z

    if-nez v2, :cond_2

    .line 327
    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/upstream/Loader$LoadTask;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method
