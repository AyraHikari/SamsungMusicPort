.class public final Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Recyclable;
.implements Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;
.implements Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene$Animator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene$Companion;


# instance fields
.field private final c:Lkotlin/Lazy;

.field private final d:Lcom/samsung/android/app/music/player/PlayerGestureViCache;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private g:I

.field private final h:Landroid/support/v7/app/AppCompatActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "fullPlayer"

    const-string v4, "getFullPlayer()Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "container"

    const-string v4, "getContainer()Landroid/view/ViewGroup;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playerRootView"

    const-string v4, "getPlayerRootView()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/app/AppCompatActivity;Lcom/samsung/android/app/music/player/fullplayer/FullPlayerFactory;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullPlayerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->h:Landroid/support/v7/app/AppCompatActivity;

    .line 26
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene$fullPlayer$2;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene$fullPlayer$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayerFactory;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->c:Lkotlin/Lazy;

    .line 31
    new-instance p1, Lcom/samsung/android/app/music/player/PlayerGestureViCache;

    invoke-direct {p1}, Lcom/samsung/android/app/music/player/PlayerGestureViCache;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->d:Lcom/samsung/android/app/music/player/PlayerGestureViCache;

    .line 33
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene$container$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene$container$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->e:Lkotlin/Lazy;

    .line 37
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene$playerRootView$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene$playerRootView$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->f:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;)Landroid/support/v7/app/AppCompatActivity;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->h:Landroid/support/v7/app/AppCompatActivity;

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;)Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->f()Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    move-result-object p0

    return-object p0
.end method

.method private final b(I)V
    .locals 1

    .line 109
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->g:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->g:I

    return-void
.end method

.method private final c(I)Z
    .locals 1

    .line 113
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->g:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final f()Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    return-object v0
.end method

.method private final g()Landroid/view/ViewGroup;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private final h()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->f:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()Landroid/view/View;
    .locals 1

    monitor-enter p0

    .line 44
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->h()Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(F)V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->f()Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(F)V

    return-void
.end method

.method public a(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene$Companion;

    .line 164
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-FullPlayerViScene"

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - onSceneStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object p1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene$Companion;

    .line 224
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "SMUSIC-FullPlayerViScene"

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - detachScene()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->g()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;)V
    .locals 5

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object p1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene$Companion;

    .line 194
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "SMUSIC-FullPlayerViScene"

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - attachScene() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    iget-object v2, p2, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;->a:Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->a()Landroid/view/View;

    move-result-object p1

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->g()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->g()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v1, 0x2

    .line 70
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->c(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->f()Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    move-result-object p1

    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;->a:Landroid/os/Bundle;

    :cond_2
    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Landroid/os/Bundle;Z)V

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->f()Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->c()V

    goto :goto_2

    .line 74
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->d:Lcom/samsung/android/app/music/player/PlayerGestureViCache;

    const-string v4, "VI"

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->a(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->f()Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->d:Lcom/samsung/android/app/music/player/PlayerGestureViCache;

    invoke-virtual {v2, p1, v4}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Landroid/view/View;Lcom/samsung/android/app/music/player/PlayerGestureViCache;)V

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->f()Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    move-result-object p1

    if-eqz p2, :cond_4

    iget-object v0, p2, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;->a:Landroid/os/Bundle;

    :cond_4
    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Landroid/os/Bundle;Z)V

    .line 78
    :goto_2
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->b(I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;)V
    .locals 5

    .line 82
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene$Companion;

    .line 209
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-FullPlayerViScene"

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - commitAttach() transaction args : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->a()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    .line 86
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->c(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->d:Lcom/samsung/android/app/music/player/PlayerGestureViCache;

    const-string v2, "NVI"

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->b(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->f()Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object v3, p1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;->a:Landroid/os/Bundle;

    :cond_1
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b(Landroid/os/Bundle;)V

    goto :goto_1

    .line 90
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->d:Lcom/samsung/android/app/music/player/PlayerGestureViCache;

    const-string v4, "NVI"

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->a(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->f()Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    move-result-object v2

    if-eqz p1, :cond_3

    iget-object v3, p1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;->a:Landroid/os/Bundle;

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->d:Lcom/samsung/android/app/music/player/PlayerGestureViCache;

    invoke-virtual {v2, v0, v3, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Landroid/view/View;Landroid/os/Bundle;Lcom/samsung/android/app/music/player/PlayerGestureViCache;)V

    .line 93
    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->b(I)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->f()Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->b()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 3

    .line 58
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene$Companion;

    .line 179
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-FullPlayerViScene"

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - prepareScene()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public d()V
    .locals 3

    .line 103
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene$Companion;

    .line 239
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-FullPlayerViScene"

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - commitDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->g()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 117
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene$Companion;

    .line 254
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-FullPlayerViScene"

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - recycle()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->f()Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->d()V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->d:Lcom/samsung/android/app/music/player/PlayerGestureViCache;

    const-string v1, "NVI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->c(Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 3

    .line 123
    sget-object v0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->b:Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene$Companion;

    .line 269
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-FullPlayerViScene"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - release()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->d:Lcom/samsung/android/app/music/player/PlayerGestureViCache;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/PlayerGestureViCache;->a()V

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;->f()Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->release()V

    return-void
.end method
