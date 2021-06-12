.class final Lcom/mz/common/utils/AdvertisingIdClient$AdvertisingConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mz/common/utils/AdvertisingIdClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdvertisingConnection"
.end annotation


# instance fields
.field a:Z

.field private final b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/mz/common/utils/AdvertisingIdClient$AdvertisingConnection;->a:Z

    .line 71
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/mz/common/utils/AdvertisingIdClient$AdvertisingConnection;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mz/common/utils/AdvertisingIdClient$AdvertisingConnection;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/mz/common/utils/AdvertisingIdClient$AdvertisingConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 84
    iget-boolean v0, p0, Lcom/mz/common/utils/AdvertisingIdClient$AdvertisingConnection;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/mz/common/utils/AdvertisingIdClient$AdvertisingConnection;->a:Z

    .line 86
    iget-object v0, p0, Lcom/mz/common/utils/AdvertisingIdClient$AdvertisingConnection;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 75
    :try_start_0
    iget-object p1, p0, Lcom/mz/common/utils/AdvertisingIdClient$AdvertisingConnection;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
