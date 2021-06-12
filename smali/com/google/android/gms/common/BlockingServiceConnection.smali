.class public Lcom/google/android/gms/common/BlockingServiceConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private a:Z

.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->a:Z

    .line 3
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->b:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const-string v0, "BlockingServiceConnection.getServiceWithTimeout() called on main thread"

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->c(Ljava/lang/String;)V

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->a:Z

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    if-eqz p1, :cond_0

    return-object p1

    .line 13
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "Timed out waiting for the service connection"

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot call get on this connection more than once"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/BlockingServiceConnection;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
