.class final Lcom/google/android/gms/internal/zzhh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private final c:Ljava/lang/Object;

.field private d:Z

.field private e:Z

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzhj;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzhw;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Runnable;

.field private i:Z

.field private j:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhh;->c:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhh;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhh;->e:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhh;->f:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhh;->g:Ljava/util/List;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhh;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzhh;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzhh;->c:Ljava/lang/Object;

    return-object p0
.end method

.method private final a(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhh;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhh;->a:Landroid/app/Activity;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzhh;Z)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzhh;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/zzhh;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzhh;->d:Z

    return p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/zzhh;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzhh;->e:Z

    return p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/zzhh;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzhh;->f:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhh;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public final a(Landroid/app/Application;Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhh;->i:Z

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/app/Activity;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzhh;->a(Landroid/app/Activity;)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzhh;->b:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/internal/zznh;->av:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzhh;->j:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzhh;->i:Z

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/zzhj;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhh;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhh;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhh;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhh;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhh;->a:Landroid/app/Activity;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhh;->a:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhh;->a:Landroid/app/Activity;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhh;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzhw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/zzhw;->a(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v3

    const-string v4, "AppActivityTracker.ActivityListener.onActivityDestroyed"

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/zzaft;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v3, "onActivityStateChangedListener threw exception."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhh;->a(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzhh;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhh;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzhh;->e:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzhh;->h:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhh;->h:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzhi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzhi;-><init>(Lcom/google/android/gms/internal/zzhh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhh;->h:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzhh;->j:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhh;->a(Landroid/app/Activity;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzhh;->e:Z

    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzhh;->d:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhh;->d:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhh;->h:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhh;->h:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhh;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzhh;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzhh;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzhj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/zzhj;->d(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "OnForegroundStateChangedListener threw exception."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    const-string p1, "App is still foreground."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhh;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
