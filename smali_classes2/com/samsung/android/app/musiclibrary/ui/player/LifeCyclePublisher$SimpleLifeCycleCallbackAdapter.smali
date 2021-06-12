.class final Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleLifeCycleCallbackAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter$SingleLifecycleObserver;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;Ljava/lang/String;)V
    .locals 1

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;->b:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;->c:Ljava/lang/String;

    .line 237
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;->a:Ljava/util/List;

    return-void
.end method

.method private final c(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V
    .locals 1

    .line 299
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter$SingleLifecycleObserver;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter$SingleLifecycleObserver;-><init>(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 302
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;->b:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;

    check-cast v0, Landroid/arch/lifecycle/LifecycleObserver;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->a(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 305
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;->b:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->b(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V
    .locals 2

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    .line 363
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-LifeCyclePublisher"

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already registered"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;->b:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->a()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->STARTED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/Lifecycle$State;->isAtLeast(Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;->c(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    :cond_2
    return-void
.end method

.method public final b(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onCreate()V
    .locals 3
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 256
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 414
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    const/4 v2, 0x0

    .line 257
    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onCreateCalled(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 291
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 619
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .line 292
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onDestroyCalled()V

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final onPause()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 277
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 537
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .line 278
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onPauseCalled()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 270
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 496
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .line 271
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onResumeCalled()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 263
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 455
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .line 264
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onStartCalled()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 284
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 578
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    .line 285
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;->onStopCalled()V

    goto :goto_0

    :cond_0
    return-void
.end method
