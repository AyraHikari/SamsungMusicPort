.class public abstract Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:I


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:I

.field private c:Landroid/os/IBinder;

.field private e:Landroid/content/ServiceConnection;

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->d:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->b:I

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->c:Landroid/os/IBinder;

    .line 166
    new-instance v0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;-><init>(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->e:Landroid/content/ServiceConnection;

    .line 210
    new-instance v0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;-><init>(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->f:Landroid/os/Handler;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->b:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->c:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->g()V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->b:I

    return p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)Landroid/content/ServiceConnection;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->e:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)I
    .locals 2

    .line 30
    iget v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->b:I

    return v0
.end method

.method private g()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 122
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a(Landroid/content/ServiceConnection;ZZ)Z

    return-void
.end method


# virtual methods
.method protected abstract a()Landroid/content/Context;
.end method

.method protected abstract a(Landroid/os/IBinder;)V
.end method

.method protected a(Landroid/content/ServiceConnection;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a(Landroid/content/ServiceConnection;ZZ)Z

    move-result p1

    return p1
.end method

.method protected a(Landroid/content/ServiceConnection;ZZ)Z
    .locals 4

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->n()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService(). "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 72
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 75
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/util/ServiceContextCompat;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->n()Ljava/lang/String;

    move-result-object p1

    const-string p2, "bindService. start service failure."

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 83
    :cond_2
    monitor-enter p0

    .line 84
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->n()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindService() connections - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", binder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->c:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", counting - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", force - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    .line 91
    iget p2, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->b:I

    if-gtz p2, :cond_3

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->n()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindService() count under zero("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "). so try to binding"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iput v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->b:I

    const/4 p2, 0x1

    goto :goto_3

    .line 97
    :cond_3
    iget p2, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->b:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->b:I

    :cond_4
    const/4 p2, 0x0

    :goto_3
    if-eqz p3, :cond_5

    .line 102
    iget-object p3, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->c:Landroid/os/IBinder;

    if-nez p3, :cond_5

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->n()Ljava/lang/String;

    move-result-object p2

    const-string p3, "bindService() binder is null. so force binding"

    invoke-static {p2, p3}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 108
    :cond_5
    iget p3, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->b:I

    if-lez p3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->d()Z

    move-result p3

    if-eqz p3, :cond_6

    if-eqz p1, :cond_6

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->e()Landroid/content/ComponentName;

    move-result-object p3

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->c:Landroid/os/IBinder;

    invoke-interface {p1, p3, v2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :cond_6
    if-eqz p2, :cond_7

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object p3, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->e:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 117
    :cond_7
    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method protected abstract b(Landroid/content/Context;)Landroid/content/Intent;
.end method

.method protected abstract b()V
.end method

.method protected b(Landroid/content/ServiceConnection;)V
    .locals 5

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->n()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindService() connections - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    .line 144
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz p1, :cond_0

    .line 146
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->n()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbindService() listener - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", condition - "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 149
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 152
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->f:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    .line 149
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 141
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method protected abstract c()V
.end method

.method public abstract d()Z
.end method

.method protected abstract e()Landroid/content/ComponentName;
.end method

.method protected f()V
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 161
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->n()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release() state listener cnt - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 163
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected n()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
