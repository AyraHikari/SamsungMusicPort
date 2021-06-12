.class public final Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController$Companion;


# instance fields
.field private c:Z

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private g:I

.field private final h:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

.field private final i:Landroid/support/v4/app/FragmentManager;

.field private final j:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "container"

    const-string v4, "getContainer()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "showAnimation"

    const-string v4, "getShowAnimation()Landroid/view/animation/Animation;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "hideAnimation"

    const-string v4, "getHideAnimation()Landroid/view/animation/Animation;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->b:Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/support/v4/app/FragmentManager;Landroid/view/View;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->h:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->i:Landroid/support/v4/app/FragmentManager;

    iput-object p3, p0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->j:Landroid/view/View;

    .line 43
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController$container$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController$container$2;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->d:Lkotlin/Lazy;

    .line 44
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController$showAnimation$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController$showAnimation$2;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->e:Lkotlin/Lazy;

    .line 48
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController$hideAnimation$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController$hideAnimation$2;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->f:Lkotlin/Lazy;

    return-void
.end method

.method private final a(I)Landroid/support/v4/app/Fragment;
    .locals 0

    if-nez p1, :cond_0

    .line 98
    new-instance p1, Lcom/samsung/android/app/music/list/local/LockQueueFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final a()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->j:Landroid/view/View;

    return-object p0
.end method

.method private final a(Z)V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->i:Landroid/support/v4/app/FragmentManager;

    .line 67
    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->b:Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController$Companion;

    .line 158
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "SMUSIC-LockQueue"

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableQueue() animation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_1

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->a()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->b()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 71
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->a()Landroid/view/View;

    move-result-object p1

    const-string v1, "container"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->g:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 73
    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->b:Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController$Companion;

    .line 173
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "SMUSIC-LockQueue"

    const-string v2, "new add"

    .line 73
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f13029f

    const-string v2, "LockQueue"

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_3
    return-void
.end method

.method private final b()Landroid/view/animation/Animation;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    return-object v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;)Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->h:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    return-object p0
.end method

.method private final b(Z)V
    .locals 3

    .line 81
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->b:Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController$Companion;

    .line 188
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-LockQueue"

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableQueue() animation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->i:Landroid/support/v4/app/FragmentManager;

    const-string v1, "LockQueue"

    .line 83
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->a()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->c()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    const/4 p1, 0x0

    .line 88
    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->a()Landroid/view/View;

    move-result-object p1

    const-string v2, "container"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 90
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 91
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 92
    sget-object p1, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->b:Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController$Companion;

    .line 203
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "SMUSIC-LockQueue"

    const-string v0, "disableQueue() remove end"

    .line 92
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private final c()Landroid/view/animation/Animation;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->f:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public getState()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->c:Z

    return v0
.end method

.method public final onDestroy()V
    .locals 3
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 55
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->b:Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController$Companion;

    .line 143
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-LockQueue"

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy() state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->getState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isStateSaved = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->i:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->isStateSaved()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->getState()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->b(Z)V

    :cond_1
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 60
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->g:I

    :cond_0
    return-void
.end method

.method public setState(Z)V
    .locals 1

    .line 36
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->c:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 38
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->a(Z)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/lockplayer/LockNowPlayingController;->b(Z)V

    :goto_0
    return-void
.end method
