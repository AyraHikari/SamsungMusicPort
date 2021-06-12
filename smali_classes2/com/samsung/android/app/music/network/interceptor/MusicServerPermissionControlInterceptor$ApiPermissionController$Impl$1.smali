.class Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1;->a:Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 73
    iget-object p2, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1;->a:Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;->c(Landroid/content/Context;)Z

    move-result p1

    const-string p2, "ApiPermissionControllerImpl"

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive. granted ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", publish - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1;->a:Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;

    .line 76
    invoke-static {v1}, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;->a(Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1;->a:Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;->a(Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;)Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    invoke-static {}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Scheduler;->b()Lio/reactivex/Scheduler$Worker;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1$1;-><init>(Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Scheduler$Worker;->a(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method
