.class public final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Recyclable;
.implements Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$Companion;


# instance fields
.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private f:I

.field private final g:Landroid/support/v7/app/AppCompatActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "miniPlayer"

    const-string v4, "getMiniPlayer()Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;

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

    const-class v2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "miniRootView"

    const-string v4, "getMiniRootView()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/app/AppCompatActivity;Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerFactory;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "miniPlayerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->g:Landroid/support/v7/app/AppCompatActivity;

    .line 31
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$miniPlayer$2;

    invoke-direct {v0, p2}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$miniPlayer$2;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerFactory;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->c:Lkotlin/Lazy;

    .line 37
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$container$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$container$2;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->d:Lkotlin/Lazy;

    .line 41
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$miniRootView$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$miniRootView$2;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->e:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;)Landroid/support/v7/app/AppCompatActivity;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;)Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->f()Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    move-result-object p0

    return-object p0
.end method

.method private final b(I)V
    .locals 1

    .line 120
    iget v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->f:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->f:I

    return-void
.end method

.method private final c(I)Z
    .locals 1

    .line 124
    iget v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->f:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final f()Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    return-object v0
.end method

.method private final g()Landroid/view/ViewGroup;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private final h()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->a:[Lkotlin/reflect/KProperty;

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

    .line 48
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->h()Landroid/view/View;

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

.method public a(I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$Companion;

    .line 169
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-MiniPlayerViScene"

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - onSceneStateChanged : "

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

    .line 108
    sget-object p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$Companion;

    .line 214
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "SMUSIC-MiniPlayerViScene"

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - detachScene()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->g()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;)V
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$Companion;

    .line 184
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "SMUSIC-MiniPlayerViScene"

    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " - attachScene()"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->a()Landroid/view/View;

    move-result-object p1

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->g()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->g()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->f()Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    move-result-object p2

    const v0, 0x7f1000b6

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a(I)V

    const/4 p2, 0x2

    .line 81
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->f()Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->c()V

    goto :goto_1

    .line 84
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->f()Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a(Landroid/view/View;)V

    .line 87
    :goto_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->b(I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;)V
    .locals 4

    .line 92
    sget-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$Companion;

    .line 199
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-MiniPlayerViScene"

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - commitAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->a()Landroid/view/View;

    move-result-object v0

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->f()Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    move-result-object v1

    const v2, 0x7f1000b9

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a(I)V

    const/4 v1, 0x4

    .line 97
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->c(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->f()Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object v3, p1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;->a:Landroid/os/Bundle;

    :cond_1
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b(Landroid/os/Bundle;)V

    goto :goto_1

    .line 100
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->f()Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    move-result-object v2

    if-eqz p1, :cond_3

    iget-object v3, p1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;->a:Landroid/os/Bundle;

    :cond_3
    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 103
    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->b(I)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->f()Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->b()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 3

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->a()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f130259

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/widget/MusicImageSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "transition_name_player0"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 3

    .line 114
    sget-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$Companion;

    .line 229
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-MiniPlayerViScene"

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - commitDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->g()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 128
    sget-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$Companion;

    .line 244
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-MiniPlayerViScene"

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - recycle()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->f()Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->d()V

    return-void
.end method

.method public release()V
    .locals 3

    .line 133
    sget-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->b:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene$Companion;

    .line 259
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-MiniPlayerViScene"

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - release()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerViScene;->f()Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->release()V

    return-void
.end method
