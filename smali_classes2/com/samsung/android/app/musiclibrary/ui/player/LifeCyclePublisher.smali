.class public final Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;,
        Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;,
        Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;

.field private final e:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->e:Landroid/support/v4/app/FragmentActivity;

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->b:Ljava/util/List;

    .line 20
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    const-string v1, "activity.lifecycle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;-><init>(Landroid/arch/lifecycle/Lifecycle;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->c:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;

    .line 22
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->c:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;

    invoke-direct {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->d:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;

    .line 26
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->c:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;

    check-cast p2, Landroid/arch/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/Lifecycle;->a(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 27
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->c:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->d:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;

    check-cast p2, Landroid/arch/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->a(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private final a(Landroid/arch/lifecycle/LifecycleObserver;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->c:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->a(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private final a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    .line 363
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-LifeCyclePublisher"

    .line 72
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

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final a(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->d:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    return-void
.end method

.method private final b(Landroid/arch/lifecycle/LifecycleObserver;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->c:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->b(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private final b(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private final b(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->d:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$SimpleLifeCycleCallbackAdapter;->b(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->c:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;

    check-cast v1, Landroid/arch/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/Lifecycle;->a(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->c:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->b()V

    return-void
.end method

.method public final a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    if-eqz v0, :cond_0

    .line 32
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 34
    :cond_0
    instance-of v0, p1, Landroid/arch/lifecycle/LifecycleObserver;

    if-eqz v0, :cond_1

    .line 35
    move-object v0, p1

    check-cast v0, Landroid/arch/lifecycle/LifecycleObserver;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 37
    :cond_1
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;

    if-eqz v0, :cond_2

    .line 38
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;)V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->c:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->c()V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->c:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;

    check-cast v1, Landroid/arch/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/Lifecycle;->b(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public final b(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    if-eqz v0, :cond_0

    .line 44
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->b(Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;)V

    .line 46
    :cond_0
    instance-of v0, p1, Landroid/arch/lifecycle/LifecycleObserver;

    if-eqz v0, :cond_1

    .line 47
    move-object v0, p1

    check-cast v0, Landroid/arch/lifecycle/LifecycleObserver;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->b(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 49
    :cond_1
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;

    if-eqz v0, :cond_2

    .line 50
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->b(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;)V

    :cond_2
    return-void
.end method

.method public release()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->e:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->c:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;

    check-cast v1, Landroid/arch/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/Lifecycle;->b(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->c:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$LifecycleAdapter;->release()V

    .line 95
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->a:Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->b:Ljava/util/List;

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

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;

    .line 96
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;->release()V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/LifeCyclePublisher;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
