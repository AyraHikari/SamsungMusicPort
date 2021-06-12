.class final Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;
.super Landroid/arch/lifecycle/Lifecycle;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;
.implements Landroid/arch/lifecycle/LifecycleOwner;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LifecycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter$TestLifeCycleObserver;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/arch/lifecycle/LifecycleObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lkotlin/Lazy;

.field private final d:Landroid/arch/lifecycle/Lifecycle;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "lifecycleRegistry"

    const-string v4, "getLifecycleRegistry()Landroid/arch/lifecycle/LifecycleRegistry;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/arch/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 1

    const-string v0, "activityLifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Landroid/arch/lifecycle/Lifecycle;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->d:Landroid/arch/lifecycle/Lifecycle;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->e:Ljava/lang/String;

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->b:Ljava/util/List;

    .line 106
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter$lifecycleRegistry$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter$lifecycleRegistry$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->c:Lkotlin/Lazy;

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 2

    .line 197
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    .line 410
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-LifeCyclePublisher"

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " current State : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->d()Landroid/arch/lifecycle/LifecycleRegistry;

    move-result-object p1

    invoke-virtual {p1}, Landroid/arch/lifecycle/LifecycleRegistry;->a()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " activity state : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->d:Landroid/arch/lifecycle/Lifecycle;

    invoke-virtual {p1}, Landroid/arch/lifecycle/Lifecycle;->a()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private final d()Landroid/arch/lifecycle/LifecycleRegistry;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/LifecycleRegistry;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/arch/lifecycle/Lifecycle$State;
    .locals 2

    .line 157
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->d()Landroid/arch/lifecycle/LifecycleRegistry;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/LifecycleRegistry;->a()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    const-string v1, "lifecycleRegistry.currentState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Landroid/arch/lifecycle/LifecycleObserver;)V
    .locals 2

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    .line 380
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-LifeCyclePublisher"

    .line 141
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

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->d()Landroid/arch/lifecycle/LifecycleRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->a(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->d()Landroid/arch/lifecycle/LifecycleRegistry;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public b(Landroid/arch/lifecycle/LifecycleObserver;)V
    .locals 3

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    .line 395
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-LifeCyclePublisher"

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->d()Landroid/arch/lifecycle/LifecycleRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->b(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 2

    .line 132
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->d()Landroid/arch/lifecycle/LifecycleRegistry;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public getLifecycle()Landroid/arch/lifecycle/Lifecycle;
    .locals 1

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->d()Landroid/arch/lifecycle/LifecycleRegistry;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/Lifecycle;

    return-object v0
.end method

.method public final onCreate()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "onCreate called"

    .line 162
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->a(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->d()Landroid/arch/lifecycle/LifecycleRegistry;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "onDestroy called"

    .line 192
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->a(Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->d()Landroid/arch/lifecycle/LifecycleRegistry;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final onPause()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "onPause called"

    .line 180
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->a(Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->d()Landroid/arch/lifecycle/LifecycleRegistry;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final onResume()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "onResume called"

    .line 174
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->a(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->d()Landroid/arch/lifecycle/LifecycleRegistry;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final onStart()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "onStart called"

    .line 168
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->a(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->d()Landroid/arch/lifecycle/LifecycleRegistry;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public final onStop()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "onStop called"

    .line 186
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->a(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->d()Landroid/arch/lifecycle/LifecycleRegistry;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public release()V
    .locals 3

    .line 119
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    .line 363
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-LifeCyclePublisher"

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LifecycleAdapter release() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->d()Landroid/arch/lifecycle/LifecycleRegistry;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 377
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/LifecycleObserver;

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->d()Landroid/arch/lifecycle/LifecycleRegistry;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->b(Landroid/arch/lifecycle/LifecycleObserver;)V

    goto :goto_1

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
