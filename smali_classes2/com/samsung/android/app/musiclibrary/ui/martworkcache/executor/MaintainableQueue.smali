.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;
.super Ljava/util/concurrent/LinkedBlockingQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/LinkedBlockingQueue<",
        "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ArtWork"

.field private static final MIN_DELAY_BETWEEN_MAINTENANCE:I = 0x2710

.field private static final QUEUE_MIN_MAINTENANCE_SIZE:I = 0x80


# instance fields
.field private mNextQueueMaintenanceTime:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    return-void
.end method

.method private doMaintenance()V
    .locals 4

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 71
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    .line 73
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->mNextQueueMaintenanceTime:J

    return-void
.end method

.method private needMaintenance()Z
    .locals 4

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->size()I

    move-result v0

    const/16 v1, 0x80

    if-le v0, v1, :cond_0

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->mNextQueueMaintenanceTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public poll()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->needMaintenance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->doMaintenance()V

    .line 62
    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->needMaintenance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->doMaintenance()V

    .line 54
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    return-object p1
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->poll()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/executor/MaintainableQueue;->poll(JLjava/util/concurrent/TimeUnit;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;

    move-result-object p1

    return-object p1
.end method
