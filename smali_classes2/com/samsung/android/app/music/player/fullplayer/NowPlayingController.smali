.class public final Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/StatePublisher$StateObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private j:I

.field private k:Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;

.field private final l:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

.field private final m:Landroid/support/v4/app/FragmentManager;

.field private final n:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;

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

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;

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

    const-class v2, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;

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

    sput-object v0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->a:[Lkotlin/reflect/KProperty;

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

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->l:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->m:Landroid/support/v4/app/FragmentManager;

    iput-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->n:Landroid/view/View;

    .line 45
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->l:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->f:Z

    .line 60
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$container$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$container$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->g:Lkotlin/Lazy;

    .line 61
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$showAnimation$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$showAnimation$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->h:Lkotlin/Lazy;

    .line 65
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$hideAnimation$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$hideAnimation$2;-><init>(Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->i:Lkotlin/Lazy;

    const/4 p1, -0x1

    .line 68
    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->j:I

    return-void

    .line 45
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.core.service.mediacenter.MediaChangeObservable"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .line 198
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 202
    :cond_0
    sget-object p1, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->b:Lcom/samsung/android/app/music/list/local/SelectQueueFragment$Companion;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment$Companion;->a(I)Lcom/samsung/android/app/music/list/local/SelectQueueFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 204
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Z)Lcom/samsung/android/app/music/list/local/QueueFragment;

    move-result-object p1

    const-string v0, "QueueFragment.newInstance(true)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/support/v4/app/Fragment;

    :goto_0
    return-object p1
.end method

.method private final a()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->g:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->n:Landroid/view/View;

    return-object p0
.end method

.method private final a(Landroid/support/v4/app/FragmentManager;Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;)V
    .locals 6

    const-string v0, "FullQueue"

    .line 135
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 311
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "SMUSIC-FullQueue"

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findFragmentByTag it = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const v1, 0x7f13029f

    .line 137
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 324
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    if-eqz p2, :cond_1

    .line 140
    instance-of v4, v0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;

    if-eqz v4, :cond_1

    .line 141
    move-object v4, v0

    check-cast v4, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->a(I)V

    :cond_1
    const-string v4, "FullQueue"

    .line 144
    invoke-virtual {v3, v1, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 145
    invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 326
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    if-eqz v2, :cond_2

    goto :goto_1

    .line 330
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "FullQueue"

    .line 148
    invoke-virtual {v2, v1, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 149
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 332
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 335
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    .line 151
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->b(Landroid/support/v4/app/FragmentManager;Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_2
    return-void
.end method

.method private final b()Landroid/view/animation/Animation;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->h:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    return-object v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;)Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->l:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    return-object p0
.end method

.method private final b(Landroid/support/v4/app/FragmentManager;Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;)V
    .locals 3

    .line 157
    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->j:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 337
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "SMUSIC-FullQueue"

    const-string v2, "new add"

    .line 158
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p2, :cond_1

    .line 160
    instance-of v1, v0, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;

    if-eqz v1, :cond_1

    .line 161
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;->a()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/music/list/local/SelectQueueFragment;->a(I)V

    .line 350
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const p2, 0x7f13029f

    const-string v1, "FullQueue"

    .line 165
    invoke-virtual {p1, p2, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 352
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private final b(Z)V
    .locals 3

    const-string v0, "SMUSIC-FullQueue"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableQueue() animation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->d:Z

    if-eqz p1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->a()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->b()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->a()Landroid/view/View;

    move-result-object p1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->m:Landroid/support/v4/app/FragmentManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->k:Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->a(Landroid/support/v4/app/FragmentManager;Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;)V

    const/4 p1, 0x0

    .line 130
    check-cast p1, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->k:Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;

    return-void
.end method

.method private final c()Landroid/view/animation/Animation;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->i:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    return-object v0
.end method

.method private final c(Z)V
    .locals 4

    const-string v0, "SMUSIC-FullQueue"

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableQueue() animation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->d:Z

    const/4 v1, 0x0

    .line 174
    check-cast v1, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;

    iput-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->k:Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController$ChangeTo;

    .line 175
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->m:Landroid/support/v4/app/FragmentManager;

    .line 176
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->isStateSaved()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "SMUSIC-FullQueue"

    const-string v0, "disableQueue() but already stateSaved."

    .line 177
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v2, "FullQueue"

    .line 180
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_2

    .line 183
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->a()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->c()Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 185
    :cond_2
    invoke-virtual {v2, v0}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 186
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->a()Landroid/view/View;

    move-result-object p1

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 376
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 188
    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 381
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "SMUSIC-FullQueue"

    const-string v2, "disableQueue() remove end"

    .line 189
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 191
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->f:Z

    return-void
.end method

.method public getState()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->e:Z

    return v0
.end method

.method public final onDestroy()V
    .locals 3
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 271
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-FullQueue"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy() state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->getState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isStateSaved = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->m:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->isStateSaved()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->getState()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->c(Z)V

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

    .line 95
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->j:I

    .line 97
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->d:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->getState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->b(Z)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->c:Z

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->getState()Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->d:Z

    if-eq v0, v1, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->getState()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->b(Z)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->c(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onStop()V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->c:Z

    return-void
.end method

.method public setState(Z)V
    .locals 1

    .line 50
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->e:Z

    .line 51
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->c:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 53
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->f:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->b(Z)V

    goto :goto_0

    .line 55
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->f:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/NowPlayingController;->c(Z)V

    :cond_1
    :goto_0
    return-void
.end method
