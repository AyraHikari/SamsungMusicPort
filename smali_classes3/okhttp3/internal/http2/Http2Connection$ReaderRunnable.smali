.class Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;
.super Lokhttp3/internal/NamedRunnable;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/http2/Http2Reader$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Http2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReaderRunnable"
.end annotation


# instance fields
.field final a:Lokhttp3/internal/http2/Http2Reader;

.field final synthetic c:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method constructor <init>(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V
    .locals 3

    .line 598
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    .line 599
    new-array v1, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lokhttp3/internal/http2/Http2Connection;->d:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 600
    iput-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->a:Lokhttp3/internal/http2/Http2Reader;

    return-void
.end method

.method private a(Lokhttp3/internal/http2/Settings;)V
    .locals 6

    .line 736
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v0}, Lokhttp3/internal/http2/Http2Connection;->b(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;

    const-string v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Connection;->d:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$3;-><init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/http2/Settings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(IIIZ)V
    .locals 0

    return-void
.end method

.method public a(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 813
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p1, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->a(ILjava/util/List;)V

    return-void
.end method

.method public a(IJ)V
    .locals 4

    if-nez p1, :cond_0

    .line 792
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v0

    .line 793
    :try_start_0
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iget-wide v1, p1, Lokhttp3/internal/http2/Http2Connection;->j:J

    const/4 v3, 0x0

    add-long/2addr v1, p2

    iput-wide v1, p1, Lokhttp3/internal/http2/Http2Connection;->j:J

    .line 794
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 795
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 797
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Connection;->a(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 799
    monitor-enter p1

    .line 800
    :try_start_1
    invoke-virtual {p1, p2, p3}, Lokhttp3/internal/http2/Http2Stream;->a(J)V

    .line 801
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ILokhttp3/internal/http2/ErrorCode;)V
    .locals 1

    .line 690
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Connection;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->c(ILokhttp3/internal/http2/ErrorCode;)V

    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Http2Connection;->b(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 696
    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/Http2Stream;->c(Lokhttp3/internal/http2/ErrorCode;)V

    :cond_1
    return-void
.end method

.method public a(ILokhttp3/internal/http2/ErrorCode;Lokio/ByteString;)V
    .locals 3

    .line 771
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    .line 776
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter p2

    .line 777
    :try_start_0
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iget-object p3, p3, Lokhttp3/internal/http2/Http2Connection;->c:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iget-object v0, v0, Lokhttp3/internal/http2/Http2Connection;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lokhttp3/internal/http2/Http2Stream;

    .line 778
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lokhttp3/internal/http2/Http2Connection;->g:Z

    .line 779
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    .line 783
    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream;->a()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 784
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v1, v2}, Lokhttp3/internal/http2/Http2Stream;->c(Lokhttp3/internal/http2/ErrorCode;)V

    .line 785
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Http2Stream;->a()I

    move-result v1

    invoke-virtual {v2, v1}, Lokhttp3/internal/http2/Http2Connection;->b(I)Lokhttp3/internal/http2/Http2Stream;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 779
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(ZII)V
    .locals 3

    if-eqz p1, :cond_0

    .line 756
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter p1

    .line 757
    :try_start_0
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lokhttp3/internal/http2/Http2Connection;->a(Lokhttp3/internal/http2/Http2Connection;Z)Z

    .line 758
    iget-object p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 759
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 763
    :cond_0
    :try_start_1
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {p1}, Lokhttp3/internal/http2/Http2Connection;->b(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lokhttp3/internal/http2/Http2Connection$PingRunnable;

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p2, p3}, Lokhttp3/internal/http2/Http2Connection$PingRunnable;-><init>(Lokhttp3/internal/http2/Http2Connection;ZII)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public a(ZIILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 644
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p3, p2}, Lokhttp3/internal/http2/Http2Connection;->c(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 645
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p3, p2, p4, p1}, Lokhttp3/internal/http2/Http2Connection;->a(ILjava/util/List;Z)V

    return-void

    .line 649
    :cond_0
    iget-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter p3

    .line 650
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/Http2Connection;->a(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    if-nez v0, :cond_4

    .line 654
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iget-boolean v0, v0, Lokhttp3/internal/http2/Http2Connection;->g:Z

    if-eqz v0, :cond_1

    monitor-exit p3

    return-void

    .line 657
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iget v0, v0, Lokhttp3/internal/http2/Http2Connection;->e:I

    if-gt p2, v0, :cond_2

    monitor-exit p3

    return-void

    .line 660
    :cond_2
    rem-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iget v1, v1, Lokhttp3/internal/http2/Http2Connection;->f:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-ne v0, v1, :cond_3

    monitor-exit p3

    return-void

    .line 663
    :cond_3
    new-instance v0, Lokhttp3/internal/http2/Http2Stream;

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    const/4 v6, 0x0

    move-object v3, v0

    move v4, p2

    move v7, p1

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLjava/util/List;)V

    .line 665
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iput p2, p1, Lokhttp3/internal/http2/Http2Connection;->e:I

    .line 666
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iget-object p1, p1, Lokhttp3/internal/http2/Http2Connection;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    invoke-static {}, Lokhttp3/internal/http2/Http2Connection;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p4, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;

    const-string v1, "OkHttp %s stream %d"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iget-object v4, v4, Lokhttp3/internal/http2/Http2Connection;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-direct {p4, p0, v1, v2, v0}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$1;-><init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/http2/Http2Stream;)V

    invoke-interface {p1, p4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 680
    monitor-exit p3

    return-void

    .line 682
    :cond_4
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    invoke-virtual {v0, p4}, Lokhttp3/internal/http2/Http2Stream;->a(Ljava/util/List;)V

    if-eqz p1, :cond_5

    .line 686
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->i()V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 682
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(ZILokio/BufferedSource;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/Http2Connection;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2, p3, p4, p1}, Lokhttp3/internal/http2/Http2Connection;->a(ILokio/BufferedSource;IZ)V

    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p2}, Lokhttp3/internal/http2/Http2Connection;->a(I)Lokhttp3/internal/http2/Http2Stream;

    move-result-object v0

    if-nez v0, :cond_1

    .line 632
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p1, p2, v0}, Lokhttp3/internal/http2/Http2Connection;->a(ILokhttp3/internal/http2/ErrorCode;)V

    int-to-long p1, p4

    .line 633
    invoke-interface {p3, p1, p2}, Lokio/BufferedSource;->i(J)V

    return-void

    .line 636
    :cond_1
    invoke-virtual {v0, p3, p4}, Lokhttp3/internal/http2/Http2Stream;->a(Lokio/BufferedSource;I)V

    if-eqz p1, :cond_2

    .line 638
    invoke-virtual {v0}, Lokhttp3/internal/http2/Http2Stream;->i()V

    :cond_2
    return-void
.end method

.method public a(ZLokhttp3/internal/http2/Settings;)V
    .locals 10

    .line 703
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v0

    .line 704
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->l:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v1}, Lokhttp3/internal/http2/Settings;->d()I

    move-result v1

    if-eqz p1, :cond_0

    .line 705
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iget-object p1, p1, Lokhttp3/internal/http2/Http2Connection;->l:Lokhttp3/internal/http2/Settings;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Settings;->a()V

    .line 706
    :cond_0
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iget-object p1, p1, Lokhttp3/internal/http2/Http2Connection;->l:Lokhttp3/internal/http2/Settings;

    invoke-virtual {p1, p2}, Lokhttp3/internal/http2/Settings;->a(Lokhttp3/internal/http2/Settings;)V

    .line 707
    invoke-direct {p0, p2}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->a(Lokhttp3/internal/http2/Settings;)V

    .line 708
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iget-object p1, p1, Lokhttp3/internal/http2/Http2Connection;->l:Lokhttp3/internal/http2/Settings;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Settings;->d()I

    move-result p1

    const/4 p2, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, p2, :cond_2

    if-eq p1, v1, :cond_2

    sub-int/2addr p1, v1

    int-to-long p1, p1

    .line 711
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iget-boolean v1, v1, Lokhttp3/internal/http2/Http2Connection;->m:Z

    if-nez v1, :cond_1

    .line 712
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v1, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->a(J)V

    .line 713
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iput-boolean v4, v1, Lokhttp3/internal/http2/Http2Connection;->m:Z

    .line 715
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 716
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iget-object v5, v5, Lokhttp3/internal/http2/Http2Connection;->c:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {v1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Lokhttp3/internal/http2/Http2Stream;

    goto :goto_0

    :cond_2
    move-wide p1, v2

    .line 719
    :cond_3
    :goto_0
    invoke-static {}, Lokhttp3/internal/http2/Http2Connection;->e()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v6, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;

    const-string v7, "OkHttp %s settings"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iget-object v8, v8, Lokhttp3/internal/http2/Http2Connection;->d:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v4, v9

    invoke-direct {v6, p0, v7, v4}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$2;-><init>(Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v1, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 724
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_4

    cmp-long v0, p1, v2

    if-eqz v0, :cond_4

    .line 726
    array-length v0, v5

    :goto_1
    if-ge v9, v0, :cond_4

    aget-object v1, v5, v9

    .line 727
    monitor-enter v1

    .line 728
    :try_start_1
    invoke-virtual {v1, p1, p2}, Lokhttp3/internal/http2/Http2Stream;->a(J)V

    .line 729
    monitor-exit v1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    .line 724
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method protected c()V
    .locals 5

    .line 604
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 605
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 607
    :try_start_0
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->a:Lokhttp3/internal/http2/Http2Reader;

    invoke-virtual {v2, p0}, Lokhttp3/internal/http2/Http2Reader;->a(Lokhttp3/internal/http2/Http2Reader$Handler;)V

    .line 608
    :goto_0
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->a:Lokhttp3/internal/http2/Http2Reader;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Lokhttp3/internal/http2/Http2Reader;->a(ZLokhttp3/internal/http2/Http2Reader$Handler;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 610
    :cond_0
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    :try_start_1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 617
    :try_start_2
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_0
    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_3

    .line 613
    :catch_1
    :goto_1
    :try_start_3
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 614
    :try_start_4
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 617
    :try_start_5
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    :goto_2
    invoke-virtual {v1, v2, v0}, Lokhttp3/internal/http2/Http2Connection;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 620
    :catch_2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->a:Lokhttp3/internal/http2/Http2Reader;

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    .line 617
    :goto_3
    :try_start_6
    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v3, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 620
    :catch_3
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->a:Lokhttp3/internal/http2/Http2Reader;

    invoke-static {v0}, Lokhttp3/internal/Util;->a(Ljava/io/Closeable;)V

    throw v2
.end method
