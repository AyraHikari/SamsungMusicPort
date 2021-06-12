.class public Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation


# instance fields
.field private a:Z

.field private b:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;->a:Z

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;->c:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1;-><init>(Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;->c:Landroid/content/BroadcastReceiver;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;->c:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.android.app.musiclibrary.action.api_permission_changed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p1, "ApiPermissionControllerImpl"

    const-string v0, "register receiver"

    .line 93
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;->b:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 99
    const-class p1, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;

    monitor-enter p1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;->b:Lio/reactivex/subjects/PublishSubject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;->b:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;->b:Lio/reactivex/subjects/PublishSubject;

    .line 103
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;->b:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/PublishSubject;->c()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ApiPermissionControllerImpl"

    const-string v1, "awaitPermissionGranted"

    .line 107
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    throw p1

    :catchall_0
    move-exception v0

    .line 103
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 4

    .line 117
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;->c(Landroid/content/Context;)Z

    move-result v0

    .line 118
    iget-boolean v1, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;->a:Z

    if-eq v1, v0, :cond_0

    .line 119
    iput-boolean v0, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;->a:Z

    const-string v1, "ApiPermissionControllerImpl"

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldWaitPermissionGranted. permission changed. - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;->d(Landroid/content/Context;)V

    :cond_0
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

.method c(Landroid/content/Context;)Z
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 131
    invoke-static {p1}, Lcom/samsung/android/app/music/network/init/StartClientPermissions;->a(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method d(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Scheduler;->b()Lio/reactivex/Scheduler$Worker;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$2;-><init>(Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler$Worker;->a(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 143
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
