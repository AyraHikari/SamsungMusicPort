.class public Lcom/samsung/android/app/music/service/milk/MilkService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;
.implements Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler$OnStopServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/Object;


# instance fields
.field private a:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

.field private g:Lcom/samsung/android/app/music/service/milk/SyncManager;

.field private h:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

.field private i:Lcom/samsung/android/app/music/network/init/StartClientProvider;

.field private j:[Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;

.field private k:Z

.field private final l:Landroid/content/BroadcastReceiver;

.field private final m:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private final n:Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/MilkService;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->a:Landroid/os/RemoteCallbackList;

    .line 67
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler$OnStopServiceListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->c:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    const/4 v0, 0x0

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->d:Ljava/lang/Integer;

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->e:Ljava/lang/Integer;

    .line 83
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->k:Z

    .line 146
    new-instance v0, Lcom/samsung/android/app/music/service/milk/MilkService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkService$1;-><init>(Lcom/samsung/android/app/music/service/milk/MilkService;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->l:Landroid/content/BroadcastReceiver;

    .line 278
    new-instance v0, Lcom/samsung/android/app/music/service/milk/MilkService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkService$2;-><init>(Lcom/samsung/android/app/music/service/milk/MilkService;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->m:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 289
    new-instance v0, Lcom/samsung/android/app/music/service/milk/MilkService$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkService$3;-><init>(Lcom/samsung/android/app/music/service/milk/MilkService;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->n:Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/MilkService;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->a:Landroid/os/RemoteCallbackList;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/MilkService;)Lcom/samsung/android/app/music/service/milk/login/LoginManager;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->f:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    return-object p0
.end method

.method private a(I)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->c:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->requestStopService(I)V

    return-void
.end method

.method private varargs a(Ljava/io/PrintWriter;[Lcom/samsung/android/app/musiclibrary/core/service/IDump;)V
    .locals 5

    .line 506
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 507
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ------------------- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -------------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/IDump;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/milk/MilkService;)Lcom/samsung/android/app/music/service/milk/SyncManager;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->g:Lcom/samsung/android/app/music/service/milk/SyncManager;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .line 57
    sget-object v0, Lcom/samsung/android/app/music/service/milk/MilkService;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/service/milk/MilkService;)I
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->d()I

    move-result p0

    return p0
.end method

.method private c()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->j:[Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 125
    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/service/milk/MilkService$TempForegroundHandler;-><init>(Landroid/app/Service;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->j:[Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;

    :cond_0
    return-void
.end method

.method private d()I
    .locals 4

    .line 131
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x3e8

    if-le v1, v3, :cond_0

    .line 133
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->d:Ljava/lang/Integer;

    .line 135
    :cond_0
    rem-int/lit16 v1, v0, 0x3e8

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/service/milk/MilkService;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->a:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/service/milk/MilkService;)Lcom/samsung/android/app/music/network/init/StartClientProvider;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->i:Lcom/samsung/android/app/music/network/init/StartClientProvider;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.app.music.core.state.EXIT_MUSIC"

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.radio.action.push_token_updated"

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic f(Lcom/samsung/android/app/music/service/milk/MilkService;)Lcom/samsung/android/app/music/list/sync/ListSyncManager;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->h:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    return-object p0
.end method

.method private f()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->c:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->requestStopService()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->e:Ljava/lang/Integer;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->e:Ljava/lang/Integer;

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->e:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 199
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized a(IIIILandroid/content/Intent;)V
    .locals 6

    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const-string v1, "MilkService"

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeBroadCast() invokeBroadCast : N = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", appId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    if-ltz p1, :cond_0

    .line 214
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "MilkService"

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invokeBroadcast. handle - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 217
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;

    .line 218
    invoke-interface {v2, p2, p3, p4, p5}, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;->onServiceResult(IIILandroid/content/Intent;)V

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;

    .line 223
    invoke-interface {v2, p2, p3, p4, p5}, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback;->onServiceResult(IIILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 227
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    :cond_2
    :try_start_3
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->a:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception p1

    .line 234
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 236
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 205
    monitor-exit p0

    throw p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const/4 p1, 0x1

    .line 498
    :try_start_0
    new-array p1, p1, [Lcom/samsung/android/app/musiclibrary/core/service/IDump;

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->f:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    aput-object v0, p1, p3

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/service/milk/MilkService;->a(Ljava/io/PrintWriter;[Lcom/samsung/android/app/musiclibrary/core/service/IDump;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 500
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 501
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There is an exception during dump : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "MilkService"

    const-string v0, "onBind"

    .line 240
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 241
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->k:Z

    .line 242
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->c:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->clearRequest()V

    .line 243
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->n:Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "MilkService"

    const-string v1, "onCreate()"

    .line 87
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 89
    sget-object v0, Lcom/samsung/android/app/music/service/milk/MilkService;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->a:Landroid/os/RemoteCallbackList;

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->f:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->f:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/SyncManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/SyncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->g:Lcom/samsung/android/app/music/service/milk/SyncManager;

    .line 97
    sget-object v0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;->a()Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->h:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->h:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a(Landroid/content/Context;)V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/network/init/StartClientProviderHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/init/StartClientProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->i:Lcom/samsung/android/app/music/network/init/StartClientProvider;

    .line 101
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->m:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 102
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->e()V

    .line 104
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/StethoUtils;->a(Landroid/app/Service;)V

    return-void

    :catchall_0
    move-exception v1

    .line 91
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onDelayedStopService(I)V
    .locals 2

    const-string p1, "MilkService"

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDelayedStopService. bound - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-boolean p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->k:Z

    if-eqz p1, :cond_0

    return-void

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->stopSelf()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "MilkService"

    const-string v1, "onDestroy() called"

    .line 164
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/milk/MilkService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->m:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->f:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->f:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a()V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->g:Lcom/samsung/android/app/music/service/milk/SyncManager;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->g:Lcom/samsung/android/app/music/service/milk/SyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/SyncManager;->b()V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->h:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->h:Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->b()V

    .line 178
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->a()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->g()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 1

    const-string p1, "MilkService"

    const-string v0, "onRebind"

    .line 248
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 249
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->k:Z

    .line 250
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->c:Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/StopServiceHandler;->clearRequest()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const-string p2, "MilkService"

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCommand intent :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    return p2

    :cond_0
    const-string v0, "com.samsung.android.app.music.action.EXTRA_NEXT_REQ_ID"

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->c()V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->j:[Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 116
    invoke-interface {v3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/OnServiceCommandReceiver;->onStartCommand(Landroid/content/Intent;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    :cond_1
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/service/milk/MilkService;->a(I)V

    return p2
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    const-string p1, "MilkService"

    const-string v0, "onTaskRemoved() called"

    .line 183
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const-string p1, "MilkService"

    const-string v0, "onUnbind"

    .line 255
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 256
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/milk/MilkService;->k:Z

    .line 257
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/MilkService;->f()V

    return p1
.end method
