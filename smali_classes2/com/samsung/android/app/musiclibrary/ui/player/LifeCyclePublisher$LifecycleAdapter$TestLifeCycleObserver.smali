.class final Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter$TestLifeCycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TestLifeCycleObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 203
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    .line 363
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-LifeCyclePublisher"

    const-string v1, "client onCreate called"

    .line 203
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 228
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    .line 438
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-LifeCyclePublisher"

    const-string v1, "client onDestroy called"

    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onPause()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 218
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    .line 408
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-LifeCyclePublisher"

    const-string v1, "client onPause called"

    .line 218
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 213
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    .line 393
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-LifeCyclePublisher"

    const-string v1, "client onResume called"

    .line 213
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 208
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    .line 378
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-LifeCyclePublisher"

    const-string v1, "client onStart called"

    .line 208
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onStop()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 223
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    .line 423
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-LifeCyclePublisher"

    const-string v1, "client onStop called"

    .line 223
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
