.class Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/som/HeadsetPlugReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SomExecutor"
.end annotation


# instance fields
.field private volatile a:Z

.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V
    .locals 2

    .line 45
    iget-boolean v0, p0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p3}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p3

    .line 49
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$1;-><init>(Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 60
    iget-object p1, p0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 61
    iget-object p1, p0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;->b:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$2;

    invoke-direct {p2, p0, v0, p3}, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$2;-><init>(Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;Ljava/util/concurrent/FutureTask;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;->a:Z

    return p1
.end method

.method private static b(Landroid/content/Context;)V
    .locals 4

    .line 86
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "ready_screen_off_music"

    const/4 v2, 0x0

    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "SOM"

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    invoke-static {}, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " startService() - readyScreenOffMusic : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/som/ScreenOffMusicService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method
