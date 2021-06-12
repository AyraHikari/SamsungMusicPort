.class public Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final AUTO_REMOVE_COUNTER:I = 0x40

.field private static final DEBUG:Z = false

.field private static final FULL_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "KeyLocks"


# instance fields
.field private final locks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TKey;",
            "Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final locksLock:Ljava/lang/Object;

.field private volatile mNextAutoRemove:I

.field private final mRequestDuration:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->FULL_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->locks:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->locksLock:Ljava/lang/Object;

    const/16 v0, 0x40

    .line 36
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->mNextAutoRemove:I

    .line 39
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->mRequestDuration:J

    return-void
.end method


# virtual methods
.method public lock(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)V"
        }
    .end annotation

    .line 66
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->mRequestDuration:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->lock(Ljava/lang/Object;J)V

    return-void
.end method

.method public lock(Ljava/lang/Object;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;J)V"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->locksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->locks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;

    invoke-direct {v1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;-><init>(J)V

    .line 55
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->locks:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    iget-object p1, v1, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result p1

    .line 58
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->access$000(Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;)V

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 61
    iget-object p1, v1, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 59
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public tryLock(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)Z"
        }
    .end annotation

    .line 70
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->mRequestDuration:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->tryLock(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public tryLock(Ljava/lang/Object;J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;J)Z"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->locksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->locks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;

    invoke-direct {v1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;-><init>(J)V

    .line 82
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->locks:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    iget-object p1, v1, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result p1

    .line 85
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->access$000(Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;)V

    .line 86
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unlock(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)V"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->locksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->locks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;

    .line 104
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 105
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->access$000(Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;)V

    .line 106
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->mNextAutoRemove:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->mNextAutoRemove:I

    if-gtz p1, :cond_3

    .line 110
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->locks:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 112
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;

    .line 115
    invoke-virtual {v4, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->expired(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    iget-object v5, v4, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 117
    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->FULL_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Lock for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is still locked after: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->getRequestDuration()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", check lock / unlock balance or increase timeout"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1
    iget-object v3, v4, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    const/16 p1, 0x40

    .line 134
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;->mNextAutoRemove:I

    .line 136
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
