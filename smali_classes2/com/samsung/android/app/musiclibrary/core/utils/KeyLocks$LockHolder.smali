.class Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockHolder"
.end annotation


# instance fields
.field volatile expireTime:J

.field final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mRequestDuration:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 147
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->mRequestDuration:J

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->update()V

    return-void
.end method

.method private update()V
    .locals 4

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->mRequestDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->expireTime:J

    return-void
.end method


# virtual methods
.method expired(J)Z
    .locals 2

    .line 155
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->expireTime:J

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getRequestDuration()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/KeyLocks$LockHolder;->mRequestDuration:J

    return-wide v0
.end method
