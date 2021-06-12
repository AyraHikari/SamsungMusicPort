.class final Lcom/samsung/android/sdk/accessory/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/accessory/j$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/samsung/android/sdk/accessory/j$a;

.field private c:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/accessory/j;->a:Landroid/content/Context;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid context:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/samsung/android/sdk/accessory/j;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/accessory/j;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/sdk/accessory/j;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessory/j;->d:Z

    return v0
.end method


# virtual methods
.method final declared-synchronized a()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/j;->b:Lcom/samsung/android/sdk/accessory/j$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/j;->c:Ljava/util/concurrent/FutureTask;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/accessory/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/accessory/j$a;-><init>(Lcom/samsung/android/sdk/accessory/j;B)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/j;->b:Lcom/samsung/android/sdk/accessory/j$a;

    new-instance v0, Ljava/util/concurrent/FutureTask;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/j;->b:Lcom/samsung/android/sdk/accessory/j$a;

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/accessory/j;->c:Ljava/util/concurrent/FutureTask;

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/j;->c:Ljava/util/concurrent/FutureTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SARegistrationTask instance cannot be reused"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/j;->b:Lcom/samsung/android/sdk/accessory/j$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/accessory/j;->c:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/accessory/j;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/android/sdk/accessory/j;->c:Ljava/util/concurrent/FutureTask;

    const-string v2, "RegistreationThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/accessory/j;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "[SA_SDK]SARegistrationTask"

    const-string v1, "Registration task has already started"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Registration task is already running!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Prepare not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
