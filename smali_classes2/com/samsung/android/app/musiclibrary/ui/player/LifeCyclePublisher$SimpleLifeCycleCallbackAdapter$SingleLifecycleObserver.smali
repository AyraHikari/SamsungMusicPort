.class final Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter$SingleLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleLifecycleObserver"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter$SingleLifecycleObserver;->a:Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 3
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 313
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    .line 363
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-LifeCyclePublisher"

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "single-onCreate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter$SingleLifecycleObserver;->a:Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter$SingleLifecycleObserver;->a:Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onCreateCalled(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 3
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 343
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    .line 438
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-LifeCyclePublisher"

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "single-onDestroy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter$SingleLifecycleObserver;->a:Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter$SingleLifecycleObserver;->a:Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onDestroyCalled()V

    return-void
.end method

.method public final onPause()V
    .locals 3
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 331
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    .line 408
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-LifeCyclePublisher"

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "single-onPause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter$SingleLifecycleObserver;->a:Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter$SingleLifecycleObserver;->a:Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onPauseCalled()V

    return-void
.end method

.method public final onResume()V
    .locals 3
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 325
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    .line 393
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-LifeCyclePublisher"

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "single-onResume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter$SingleLifecycleObserver;->a:Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter$SingleLifecycleObserver;->a:Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onResumeCalled()V

    return-void
.end method

.method public final onStart()V
    .locals 3
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 319
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    .line 378
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-LifeCyclePublisher"

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "single-onStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter$SingleLifecycleObserver;->a:Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter$SingleLifecycleObserver;->a:Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onStartCalled()V

    return-void
.end method

.method public final onStop()V
    .locals 3
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 337
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    .line 423
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-LifeCyclePublisher"

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "single-onStop : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter$SingleLifecycleObserver;->a:Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter$SingleLifecycleObserver;->a:Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onStopCalled()V

    return-void
.end method
