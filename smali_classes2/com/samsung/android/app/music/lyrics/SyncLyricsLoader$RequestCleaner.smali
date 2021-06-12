.class Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$RequestCleaner;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestCleaner"
.end annotation


# static fields
.field private static final CLEAN_REQUESTS:I = 0x1

.field private static final COLLECT_TIME:J = 0xbb8L

.field private static final DELAY_CLEAN:J = 0x2710L


# instance fields
.field private mLastTime:J


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 79
    invoke-static {}, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Clean requests !"

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/LongSparseArray;

    .line 82
    invoke-static {}, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 84
    :goto_0
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 85
    invoke-virtual {p1, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$Request;

    .line 87
    iget-wide v6, v5, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$Request;->requestTime:J

    const/4 v8, 0x0

    sub-long v6, v2, v6

    const-wide/16 v8, 0x1b58

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 88
    invoke-virtual {p1, v4}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 v4, v4, -0x1

    .line 90
    invoke-static {}, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remove outdated request : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$Request;->clients:Ljava/util/Set;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", time : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v5, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$Request;->requestTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/2addr v4, v1

    goto :goto_0

    .line 94
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 96
    invoke-static {}, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wrong usage !"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method postClean(Landroid/util/LongSparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$Request;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 67
    iget-wide v2, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$RequestCleaner;->mLastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    .line 68
    invoke-static {p0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v2, 0x2710

    .line 69
    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$RequestCleaner;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 71
    iput-wide v0, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$RequestCleaner;->mLastTime:J

    :cond_0
    return-void
.end method
