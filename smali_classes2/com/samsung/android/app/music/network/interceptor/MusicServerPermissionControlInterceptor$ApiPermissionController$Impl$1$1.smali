.class Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1$1;->a:Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1$1;->a:Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1;->a:Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;->a(Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1$1;->a:Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1;->a:Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;->a(Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1$1;->a:Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl$1;->a:Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;->a(Lcom/samsung/android/app/music/network/interceptor/MusicServerPermissionControlInterceptor$ApiPermissionController$Impl;)Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    :cond_0
    return-void
.end method
