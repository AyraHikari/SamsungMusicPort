.class public final Lcom/samsung/android/app/music/player/SlidePlayer;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$OnSceneStateChangedListener;
.implements Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/SlidePlayer$SlideToFullPlayerTransitionFactory;,
        Lcom/samsung/android/app/music/player/SlidePlayer$SlideToMiniPlayerTransitionFactory;,
        Lcom/samsung/android/app/music/player/SlidePlayer$SlideToQueueTransitionFactory;,
        Lcom/samsung/android/app/music/player/SlidePlayer$TransactionHelper;,
        Lcom/samsung/android/app/music/player/SlidePlayer$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/player/SlidePlayer$Companion;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Lcom/samsung/android/app/music/player/SlidePlayer$TransactionHelper;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private j:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

.field private k:Landroid/support/v7/view/ActionMode;

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private final p:Landroid/view/View$OnClickListener;

.field private final q:Landroid/view/View$OnClickListener;

.field private r:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

.field private final s:Lcom/samsung/android/app/music/player/SlidePlayer$fullPlayerFactory$1;

.field private t:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

.field private final u:Lcom/samsung/android/app/music/player/SlidePlayer$miniPlayerFactory$1;

.field private final v:Lkotlin/Lazy;

.field private w:Z

.field private x:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

.field private final y:Landroid/support/v7/app/AppCompatActivity;

.field private final z:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "multiWindowManager"

    const-string v4, "getMultiWindowManager()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "sceneRoot"

    const-string v4, "getSceneRoot()Landroid/view/ViewGroup;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "backPressObservable"

    const-string v4, "getBackPressObservable()Lcom/samsung/android/app/musiclibrary/BackPressedObservable;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "limitSlideRange"

    const-string v4, "getLimitSlideRange()F"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playerSceneStateListeners"

    const-string v4, "getPlayerSceneStateListeners()Ljava/util/concurrent/CopyOnWriteArrayList;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/SlidePlayer;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/player/SlidePlayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/SlidePlayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/SlidePlayer;->b:Lcom/samsung/android/app/music/player/SlidePlayer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/app/AppCompatActivity;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaChangeObservable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->y:Landroid/support/v7/app/AppCompatActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->z:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 108
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->y:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "activity.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->c:Landroid/content/Context;

    .line 109
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->y:Landroid/support/v7/app/AppCompatActivity;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;

    .line 110
    move-object p2, p0

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 109
    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->d:Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;

    .line 113
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/SlidePlayer$multiWindowManager$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/SlidePlayer$multiWindowManager$2;-><init>(Lcom/samsung/android/app/music/player/SlidePlayer;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->e:Lkotlin/Lazy;

    .line 116
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/SlidePlayer$sceneRoot$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/SlidePlayer$sceneRoot$2;-><init>(Lcom/samsung/android/app/music/player/SlidePlayer;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->f:Lkotlin/Lazy;

    .line 119
    new-instance p1, Lcom/samsung/android/app/music/player/SlidePlayer$TransactionHelper;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/SlidePlayer$TransactionHelper;-><init>(Lcom/samsung/android/app/music/player/SlidePlayer;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->g:Lcom/samsung/android/app/music/player/SlidePlayer$TransactionHelper;

    .line 121
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/SlidePlayer$backPressObservable$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/SlidePlayer$backPressObservable$2;-><init>(Lcom/samsung/android/app/music/player/SlidePlayer;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->h:Lkotlin/Lazy;

    .line 128
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/SlidePlayer$limitSlideRange$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/SlidePlayer$limitSlideRange$2;-><init>(Lcom/samsung/android/app/music/player/SlidePlayer;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->i:Lkotlin/Lazy;

    const/4 p1, 0x4

    .line 135
    iput p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->l:I

    .line 137
    iget p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->l:I

    iput p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->m:I

    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->n:Z

    .line 140
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->o:Z

    .line 142
    new-instance p1, Lcom/samsung/android/app/music/player/SlidePlayer$miniAlbumClickListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/SlidePlayer$miniAlbumClickListener$1;-><init>(Lcom/samsung/android/app/music/player/SlidePlayer;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->p:Landroid/view/View$OnClickListener;

    .line 149
    new-instance p1, Lcom/samsung/android/app/music/player/SlidePlayer$miniQueueClickListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/SlidePlayer$miniQueueClickListener$1;-><init>(Lcom/samsung/android/app/music/player/SlidePlayer;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->q:Landroid/view/View$OnClickListener;

    .line 155
    new-instance p1, Lcom/samsung/android/app/music/player/SlidePlayer$fullPlayerFactory$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/SlidePlayer$fullPlayerFactory$1;-><init>(Lcom/samsung/android/app/music/player/SlidePlayer;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->s:Lcom/samsung/android/app/music/player/SlidePlayer$fullPlayerFactory$1;

    .line 170
    new-instance p1, Lcom/samsung/android/app/music/player/SlidePlayer$miniPlayerFactory$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/SlidePlayer$miniPlayerFactory$1;-><init>(Lcom/samsung/android/app/music/player/SlidePlayer;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->u:Lcom/samsung/android/app/music/player/SlidePlayer$miniPlayerFactory$1;

    .line 189
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object p2, Lcom/samsung/android/app/music/player/SlidePlayer$playerSceneStateListeners$2;->INSTANCE:Lcom/samsung/android/app/music/player/SlidePlayer$playerSceneStateListeners$2;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->v:Lkotlin/Lazy;

    return-void

    .line 109
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.ActivityLifeCycleObservable"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(F)Landroid/animation/ValueAnimator;
    .locals 10

    .line 321
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->t:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->r:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    const v0, 0x7f130144

    .line 323
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f130143

    .line 324
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/view/ViewGroup;

    .line 326
    iget-object v1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->x:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a()V

    .line 327
    :cond_2
    new-instance v9, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    .line 328
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SlidePlayer;->f()Landroid/view/ViewGroup;

    move-result-object v2

    const-string v1, "backgroundContainer"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f130417

    .line 329
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v1, "sourceRoot.findViewById(R.id.mini_player_main)"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 330
    move-object v7, v0

    check-cast v7, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    .line 331
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SlidePlayer;->e()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;->isMultiWindowMode()Z

    move-result v1

    move v8, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_0
    move-object v1, v9

    .line 327
    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;Z)V

    .line 333
    invoke-virtual {v9, p1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->b(F)V

    .line 335
    iput-object v9, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->x:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    .line 337
    sget-object p1, Lcom/samsung/android/app/music/player/SlidePlayer;->b:Lcom/samsung/android/app/music/player/SlidePlayer$Companion;

    new-instance v1, Lcom/samsung/android/app/music/player/SlidePlayer$createBackgroundVi$1;

    invoke-direct {v1, p0, v0, v9}, Lcom/samsung/android/app/music/player/SlidePlayer$createBackgroundVi$1;-><init>(Lcom/samsung/android/app/music/player/SlidePlayer;Landroid/view/View;Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)V

    check-cast v1, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/player/SlidePlayer$Companion;->a(Lcom/samsung/android/app/music/player/SlidePlayer$Companion;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 347
    new-instance v1, Lcom/samsung/android/app/music/player/SlidePlayer$createBackgroundVi$$inlined$apply$lambda$1;

    invoke-direct {v1, v0, v9}, Lcom/samsung/android/app/music/player/SlidePlayer$createBackgroundVi$$inlined$apply$lambda$1;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1

    .line 330
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.widget.TransitionView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 322
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 321
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(Landroid/support/v7/app/AppCompatActivity;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;
    .locals 1

    .line 392
    new-instance v0, Lcom/samsung/android/app/music/player/SlidePlayer$createMiniPlayerSceneFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/player/SlidePlayer$createMiniPlayerSceneFactory$1;-><init>(Lcom/samsung/android/app/music/player/SlidePlayer;Landroid/support/v7/app/AppCompatActivity;)V

    check-cast v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;

    return-object v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/SlidePlayer;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SlidePlayer;->i()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method private final a(IZLcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;)V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->j:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    if-nez v0, :cond_0

    const-string p1, "SMUSIC-SlidePlayer"

    const-string p2, "Slide transition is not prepared"

    .line 536
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 540
    iget-object p2, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->j:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(ILcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;)V

    goto :goto_0

    .line 542
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->j:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    if-nez p2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(ILcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/SlidePlayer;IZLcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 533
    check-cast p3, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(IZLcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/SlidePlayer;Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->r:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/SlidePlayer;Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->t:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/player/SlidePlayer;ZIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 508
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(ZI)V

    return-void
.end method

.method private final a(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 195
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->w:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 198
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/player/SlidePlayer;->b:Lcom/samsung/android/app/music/player/SlidePlayer$Companion;

    const-string v0, "SMUSIC-SlidePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity is not resumed. Postpone block() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->d:Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;

    .line 200
    new-instance v1, Lcom/samsung/android/app/music/player/SlidePlayer$doOnResume$$inlined$with$lambda$1;

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/app/music/player/SlidePlayer$doOnResume$$inlined$with$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleObservable;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    :goto_0
    return-void
.end method

.method private final b(Landroid/support/v7/app/AppCompatActivity;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;
    .locals 1

    .line 398
    new-instance v0, Lcom/samsung/android/app/music/player/SlidePlayer$createFullPlayerSceneFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/player/SlidePlayer$createFullPlayerSceneFactory$1;-><init>(Lcom/samsung/android/app/music/player/SlidePlayer;Landroid/support/v7/app/AppCompatActivity;)V

    check-cast v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;

    return-object v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/SlidePlayer;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->j:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    return-object p0
.end method

.method private final b(I)V
    .locals 1

    .line 232
    new-instance v0, Lcom/samsung/android/app/music/player/SlidePlayer$notifyPlayerSceneStateChanged$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/player/SlidePlayer$notifyPlayerSceneStateChanged$1;-><init>(Lcom/samsung/android/app/music/player/SlidePlayer;I)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final c(I)I
    .locals 1

    const/4 v0, 0x4

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p1, 0x8

    return p1

    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/SlidePlayer;)Lcom/samsung/android/app/music/player/SlidePlayer$miniPlayerFactory$1;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->u:Lcom/samsung/android/app/music/player/SlidePlayer$miniPlayerFactory$1;

    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/player/SlidePlayer;)Lcom/samsung/android/app/music/player/SlidePlayer$fullPlayerFactory$1;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->s:Lcom/samsung/android/app/music/player/SlidePlayer$fullPlayerFactory$1;

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/player/SlidePlayer;)Landroid/support/v7/app/AppCompatActivity;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->y:Landroid/support/v7/app/AppCompatActivity;

    return-object p0
.end method

.method private final e()Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->e:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/SlidePlayer;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    return-object v0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/player/SlidePlayer;)Landroid/content/Context;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->c:Landroid/content/Context;

    return-object p0
.end method

.method private final f()Landroid/view/ViewGroup;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->f:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/SlidePlayer;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private final g()Lcom/samsung/android/app/musiclibrary/BackPressedObservable;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->h:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/SlidePlayer;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    return-object v0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/player/SlidePlayer;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->n:Z

    return p0
.end method

.method private final h()F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->i:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/SlidePlayer;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public static final synthetic h(Lcom/samsung/android/app/music/player/SlidePlayer;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->z:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object p0
.end method

.method public static final synthetic i(Lcom/samsung/android/app/music/player/SlidePlayer;)Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->r:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    return-object p0
.end method

.method private final i()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/app/music/player/PlayerSceneStateListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->v:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/SlidePlayer;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public static final synthetic j(Lcom/samsung/android/app/music/player/SlidePlayer;)Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->t:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    return-object p0
.end method

.method private final j()V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->j:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    if-eqz v0, :cond_0

    .line 300
    new-instance v1, Lcom/samsung/android/app/music/player/SlidePlayer$SlideToMiniPlayerTransitionFactory;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->y:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/player/SlidePlayer$SlideToMiniPlayerTransitionFactory;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    check-cast v1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransitionFactory;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransitionFactory;)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->k:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    :cond_1
    return-void
.end method

.method public static final synthetic k(Lcom/samsung/android/app/music/player/SlidePlayer;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->p:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private final k()V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->j:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    if-eqz v0, :cond_0

    .line 307
    new-instance v1, Lcom/samsung/android/app/music/player/SlidePlayer$SlideToFullPlayerTransitionFactory;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->y:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/player/SlidePlayer$SlideToFullPlayerTransitionFactory;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    check-cast v1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransitionFactory;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransitionFactory;)V

    :cond_0
    return-void
.end method

.method public static final synthetic l(Lcom/samsung/android/app/music/player/SlidePlayer;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->q:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private final l()V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->j:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SlidePlayer;->p()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(F)V

    return-void
.end method

.method private final m()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->j:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SlidePlayer;->p()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(F)V

    return-void
.end method

.method public static final synthetic m(Lcom/samsung/android/app/music/player/SlidePlayer;)Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->o:Z

    return p0
.end method

.method private final n()Landroid/animation/ValueAnimator;
    .locals 1

    const/4 v0, 0x0

    .line 358
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method private final o()Landroid/animation/ValueAnimator;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 362
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method private final p()F
    .locals 3

    .line 369
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 370
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SlidePlayer;->f()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->t:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 372
    iget-object v1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->y:Landroid/support/v7/app/AppCompatActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/app/music/util/UiUtils;->f(Landroid/app/Activity;)I

    move-result v1

    .line 373
    iget-object v2, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->y:Landroid/support/v7/app/AppCompatActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/samsung/android/app/music/util/UiUtils;->b(Landroid/app/Activity;)I

    move-result v2

    .line 374
    iget v0, v0, Landroid/graphics/Rect;->top:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    int-to-float v0, v0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private final q()Z
    .locals 2

    .line 561
    iget v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->m:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 562
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->n:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a()Lcom/samsung/android/app/music/player/SlidePlayer$TransactionHelper;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->g:Lcom/samsung/android/app/music/player/SlidePlayer$TransactionHelper;

    return-object v0
.end method

.method public final a(Landroid/graphics/Rect;)Lkotlin/Unit;
    .locals 1

    const-string v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->j:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Landroid/graphics/Rect;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public a(I)V
    .locals 1

    .line 268
    iput p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->l:I

    .line 271
    iget p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->l:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/SlidePlayer;->c(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->m:I

    .line 273
    iget p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->l:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 290
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SlidePlayer;->j()V

    goto :goto_0

    .line 291
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SlidePlayer;->m()V

    goto :goto_0

    .line 283
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->j:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 284
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b()V

    .line 285
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SlidePlayer;->n()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Landroid/animation/ValueAnimator;)V

    goto :goto_0

    .line 288
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SlidePlayer;->k()V

    goto :goto_0

    .line 289
    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SlidePlayer;->l()V

    goto :goto_0

    .line 276
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->j:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 277
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b()V

    .line 278
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SlidePlayer;->o()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Landroid/animation/ValueAnimator;)V

    .line 295
    :goto_0
    iget p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->l:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/SlidePlayer;->b(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->r:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    .line 383
    sget-object v0, Lcom/samsung/android/app/music/player/SlidePlayer;->b:Lcom/samsung/android/app/music/player/SlidePlayer$Companion;

    .line 700
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-SlidePlayer"

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_2

    const-string v0, "sp_scene_state"

    .line 385
    iget v1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->m:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 386
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->t:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a(Landroid/os/Bundle;)V

    .line 387
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->r:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/samsung/android/app/music/player/PlayerSceneStateListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->l:I

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/player/PlayerSceneStateListener;->a(I)V

    .line 219
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SlidePlayer;->i()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/music/player/PlayerSceneStateListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listeners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/PlayerSceneStateListener;

    .line 212
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(Lcom/samsung/android/app/music/player/PlayerSceneStateListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 10

    .line 501
    sget-object v0, Lcom/samsung/android/app/music/player/SlidePlayer;->b:Lcom/samsung/android/app/music/player/SlidePlayer$Companion;

    .line 730
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-SlidePlayer"

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toMiniPlayer withTransition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->r:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    if-eqz v0, :cond_2

    .line 503
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->r:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;IZILjava/lang/Object;)V

    :cond_2
    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, p0

    move v6, p1

    .line 505
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(Lcom/samsung/android/app/music/player/SlidePlayer;IZLcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;ILjava/lang/Object;)V

    return-void
.end method

.method public final a(ZI)V
    .locals 3

    .line 509
    sget-object v0, Lcom/samsung/android/app/music/player/SlidePlayer;->b:Lcom/samsung/android/app/music/player/SlidePlayer$Companion;

    .line 745
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-SlidePlayer"

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toFullPlayer scene state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", viewType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", withTransition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->n:Z

    if-nez v0, :cond_2

    .line 511
    sget-object p1, Lcom/samsung/android/app/music/player/SlidePlayer;->b:Lcom/samsung/android/app/music/player/SlidePlayer$Companion;

    .line 760
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "SMUSIC-SlidePlayer"

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toFullPlayer isFullPlayerEnterEnabled : false, viewType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    .line 514
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->l:I

    const/4 v1, 0x2

    const/16 v2, 0x8

    if-ne v0, v2, :cond_4

    .line 515
    iget-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->r:Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->a(Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;IZILjava/lang/Object;)V

    goto :goto_3

    .line 517
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->j:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    if-nez v0, :cond_6

    .line 518
    sget-object p1, Lcom/samsung/android/app/music/player/SlidePlayer;->b:Lcom/samsung/android/app/music/player/SlidePlayer$Companion;

    .line 775
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const-string p1, "SMUSIC-SlidePlayer"

    const-string p2, "Slide transition is not prepared"

    .line 518
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_6
    if-eqz p1, :cond_8

    if-ne p2, v1, :cond_8

    .line 522
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->j:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    new-instance v1, Lcom/samsung/android/app/music/player/SlidePlayer$SlideToQueueTransitionFactory;

    invoke-direct {v1}, Lcom/samsung/android/app/music/player/SlidePlayer$SlideToQueueTransitionFactory;-><init>()V

    check-cast v1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransitionFactory;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransitionFactory;)V

    .line 526
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->g:Lcom/samsung/android/app/music/player/SlidePlayer$TransactionHelper;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/app/music/player/SlidePlayer$TransactionHelper;->a(Landroid/os/Bundle;I)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;

    move-result-object p2

    .line 524
    invoke-direct {p0, v2, p1, p2}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(IZLcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;)V

    :goto_3
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SlidePlayer;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->j:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    if-eqz v0, :cond_0

    .line 557
    iget-object v2, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->y:Landroid/support/v7/app/AppCompatActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final b()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->l:I

    return v0
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 11

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->g:Lcom/samsung/android/app/music/player/SlidePlayer$TransactionHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/player/SlidePlayer$TransactionHelper;->a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;

    move-result-object v1

    const-string v2, "sp_scene_state"

    .line 463
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->l:I

    .line 464
    iget v2, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->l:I

    iput v2, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->m:I

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 468
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->y:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(Landroid/support/v7/app/AppCompatActivity;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;

    move-result-object v4

    .line 469
    iget-object v1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->y:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/SlidePlayer;->b(Landroid/support/v7/app/AppCompatActivity;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;

    move-result-object v5

    .line 471
    iget v1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->m:I

    if-ne v1, v0, :cond_1

    .line 472
    new-instance v0, Lcom/samsung/android/app/music/player/SlidePlayer$SlideToFullPlayerTransitionFactory;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->y:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/SlidePlayer$SlideToFullPlayerTransitionFactory;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    check-cast v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransitionFactory;

    :goto_2
    move-object v6, v0

    goto :goto_3

    .line 474
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/player/SlidePlayer$SlideToMiniPlayerTransitionFactory;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->y:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/SlidePlayer$SlideToMiniPlayerTransitionFactory;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    check-cast v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransitionFactory;

    goto :goto_2

    .line 476
    :goto_3
    new-instance v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    .line 477
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SlidePlayer;->f()Landroid/view/ViewGroup;

    move-result-object v3

    .line 478
    iget v8, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->m:I

    const/4 v1, 0x1

    new-array v9, v1, [Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$OnSceneStateChangedListener;

    .line 479
    move-object v2, p0

    check-cast v2, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$OnSceneStateChangedListener;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    move-object v2, v0

    .line 476
    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;-><init>(Landroid/view/ViewGroup;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransitionFactory;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;I[Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$OnSceneStateChangedListener;)V

    .line 481
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SlidePlayer;->h()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->c(F)V

    .line 480
    iput-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->j:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    .line 486
    new-instance v0, Landroid/graphics/Rect;

    .line 487
    iget-object v2, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->y:Landroid/support/v7/app/AppCompatActivity;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/samsung/android/app/music/util/UiUtils;->e(Landroid/app/Activity;)I

    move-result v2

    .line 488
    iget-object v3, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->y:Landroid/support/v7/app/AppCompatActivity;

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/samsung/android/app/music/util/UiUtils;->f(Landroid/app/Activity;)I

    move-result v3

    .line 486
    invoke-direct {v0, v10, v10, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 485
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(Landroid/graphics/Rect;)Lkotlin/Unit;

    .line 492
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SlidePlayer;->g()Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    move-result-object v0

    move-object v2, p0

    check-cast v2, Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;->addOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;I)V

    .line 493
    sget-object v0, Lcom/samsung/android/app/music/player/SlidePlayer;->b:Lcom/samsung/android/app/music/player/SlidePlayer$Companion;

    .line 715
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    const-string v0, "SMUSIC-SlidePlayer"

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPlayer saved state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method public final b(Lcom/samsung/android/app/music/player/PlayerSceneStateListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SlidePlayer;->i()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 547
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->o:Z

    .line 548
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->t:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayer;->a(Z)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SlidePlayer;->i()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 552
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->n:Z

    return-void
.end method

.method public final d()V
    .locals 8

    .line 570
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v0, v2

    .line 572
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    const-string v1, "MotionEvent.obtain(time,\u2026ent.ACTION_UP, 0f, 0f, 0)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onActivityPaused(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 258
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->w:Z

    return-void
.end method

.method public onActivityResumed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 262
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->w:Z

    return-void
.end method

.method public onBackPressed()Z
    .locals 9

    .line 581
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->j:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "SMUSIC-SlidePlayer"

    const-string v1, "onBackPressed() currently transition is in progress, ignore back button request!"

    .line 582
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 588
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->l:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    const-string v0, "SMUSIC-SlidePlayer"

    const-string v1, "onBackPressed() To Source Scene"

    .line 589
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    .line 590
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/music/player/SlidePlayer;->a(Lcom/samsung/android/app/music/player/SlidePlayer;IZLcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;ILjava/lang/Object;)V

    return v2

    :cond_2
    return v1
.end method

.method public onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 601
    check-cast p1, Landroid/support/v7/view/ActionMode;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->k:Landroid/support/v7/view/ActionMode;

    return-void
.end method

.method public onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->k:Landroid/support/v7/view/ActionMode;

    return-void
.end method

.method public release()V
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/SlidePlayer;->c()V

    .line 606
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer;->j:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->c()V

    :cond_0
    return-void
.end method
