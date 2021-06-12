.class public Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$IMilkUIWorkerActivity;
    }
.end annotation


# static fields
.field private static f:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$IMilkUIWorkerActivity;

.field private e:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->a:Ljava/lang/ref/WeakReference;

    .line 41
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->b:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;
    .locals 4

    const-class v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->f:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    if-nez v1, :cond_1

    .line 46
    const-class v1, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    sget-object v2, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->f:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    if-nez v2, :cond_0

    const-string v2, "RadioUIWorker"

    const-string v3, "getInstance : New Instance"

    .line 48
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v2, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->f:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    goto :goto_0

    :cond_0
    const-string v2, "RadioUIWorker"

    const-string v3, "getInstance : Get Initialized instance"

    .line 51
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :goto_0
    sget-object v2, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->f:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->b(Landroid/content/Context;)V

    .line 54
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 56
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->f:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->b(Landroid/content/Context;)V

    .line 59
    :goto_1
    sget-object p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->f:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    .line 44
    monitor-exit v0

    throw p0
.end method

.method private a(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "RadioUIWorker"

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]sendErrorResByNullContext : Context is empty"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "LocationTag"

    const-string v1, "RadioUIWorker"

    .line 255
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ResType"

    const-string v1, "NOT_DEFINE"

    .line 256
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ResCode"

    const-string v1, "Parameter Error"

    .line 258
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 259
    invoke-interface {p2, v0, p1}, Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;->a(ZLandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const-string p2, "RadioUIWorker"

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]sendErrorResByNullContext : response is empty"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->a:Ljava/lang/ref/WeakReference;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->b:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->b:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    :cond_1
    return-void
.end method

.method private c()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private d()Landroid/content/Context;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(II)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->e:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->e:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/TabControllable;->selectTab(II)V

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 221
    new-instance v0, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/samsung/android/app/music/milk/uiworker/runableworker/MilkWorkerPlayAlbum;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/uiworker/IMilkRunnable;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Ljava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->b:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string p1, "RadioUIWorker"

    const-string p2, "playAlbum : Service is not active .. excute after connecting service"

    .line 226
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->b:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v1, v0, p2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->a(ZZLjava/lang/Runnable;Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler$IUIWorkerHandler;)V

    goto :goto_0

    :cond_1
    const-string p2, "playAlbum"

    .line 231
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->a(Ljava/lang/String;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/TabControllable;)V
    .locals 2

    const-string v0, "RadioUIWorker"

    const-string v1, "initialize : Initialize worker"

    .line 75
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->e:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    return-void
.end method

.method public b()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->b:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->b:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 82
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->b:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorkerHandler;

    .line 85
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->a:Ljava/lang/ref/WeakReference;

    .line 86
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->d:Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker$IMilkUIWorkerActivity;

    .line 87
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->e:Lcom/samsung/android/app/musiclibrary/ui/TabControllable;

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_1
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
