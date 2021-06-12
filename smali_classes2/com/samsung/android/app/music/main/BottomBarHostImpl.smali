.class public final Lcom/samsung/android/app/music/main/BottomBarHostImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/BottomBarHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/main/BottomBarHostImpl$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/main/BottomBarHostImpl$Companion;

.field private static final i:Landroid/view/animation/Interpolator;


# instance fields
.field private final c:Lkotlin/Lazy;

.field private final d:Lcom/samsung/android/app/music/player/PlayerLaunchable;

.field private final e:Landroid/view/ViewGroup;

.field private final f:Landroid/support/constraint/ConstraintLayout;

.field private final g:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

.field private final h:Lcom/samsung/android/app/music/activity/BottomTabManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/main/BottomBarHostImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "isPort"

    const-string v4, "isPort()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/main/BottomBarHostImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/main/BottomBarHostImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->b:Lcom/samsung/android/app/music/main/BottomBarHostImpl$Companion;

    .line 102
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->i:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/music/main/BottomBarHostImpl;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;Lcom/samsung/android/app/music/activity/BottomTabManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;Lcom/samsung/android/app/music/activity/BottomTabManager;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->g:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->h:Lcom/samsung/android/app/music/activity/BottomTabManager;

    .line 24
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/main/BottomBarHostImpl$isPort$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/main/BottomBarHostImpl$isPort$2;-><init>(Lcom/samsung/android/app/music/main/BottomBarHostImpl;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->c:Lkotlin/Lazy;

    .line 29
    iget-object p1, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->g:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    check-cast p1, Lcom/samsung/android/app/music/player/PlayerLaunchable;

    iput-object p1, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->d:Lcom/samsung/android/app/music/player/PlayerLaunchable;

    .line 30
    iget-object p1, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->g:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    const p2, 0x7f13034b

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->e:Landroid/view/ViewGroup;

    .line 31
    iget-object p1, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->g:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    const p2, 0x7f130349

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    iput-object p1, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->f:Landroid/support/constraint/ConstraintLayout;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;Lcom/samsung/android/app/music/activity/BottomTabManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 21
    check-cast p2, Lcom/samsung/android/app/music/activity/BottomTabManager;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/main/BottomBarHostImpl;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;Lcom/samsung/android/app/music/activity/BottomTabManager;)V

    return-void
.end method

.method private final a(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 2

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xc8

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 84
    sget-object v0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->i:Landroid/view/animation/Interpolator;

    check-cast v0, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    const-string v0, "animate().apply {\n      \u2026ranslationY(0f)\n        }"

    .line 81
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/main/BottomBarHostImpl;Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->b(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/main/BottomBarHostImpl;)Lcom/samsung/android/app/music/activity/BaseServiceActivity;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->g:Lcom/samsung/android/app/music/activity/BaseServiceActivity;

    return-object p0
.end method

.method private final a(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "BottomTabHost"

    const-string v1, "showBottomBar()"

    .line 50
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->f:Landroid/support/constraint/ConstraintLayout;

    const-string v1, "constraintLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 105
    new-instance v1, Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/main/BottomBarHostImpl$showBottomBar$$inlined$doOnNextLayout$1;-><init>(Lcom/samsung/android/app/music/main/BottomBarHostImpl;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private final a()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/main/BottomBarHostImpl;)Landroid/view/ViewGroup;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->e:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private final b(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;
    .locals 3

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0xc8

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 93
    sget-object v1, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->i:Landroid/view/animation/Interpolator;

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    const-string p1, "animate().apply {\n      \u2026ight.toFloat())\n        }"

    .line 90
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final b(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "BottomTabHost"

    const-string v1, "hideBottomBar()"

    .line 67
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BottomTabHost"

    const-string v1, "mini player show animation start"

    .line 69
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->e:Landroid/view/ViewGroup;

    const-string v1, "miniPlayer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->a(Landroid/view/View;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/main/BottomBarHostImpl$hideBottomBar$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/main/BottomBarHostImpl$hideBottomBar$1;-><init>(Lcom/samsung/android/app/music/main/BottomBarHostImpl;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 75
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->h:Lcom/samsung/android/app/music/activity/BottomTabManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Z)V

    .line 77
    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final b()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/main/BottomBarHostImpl;)Lcom/samsung/android/app/music/activity/BottomTabManager;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->h:Lcom/samsung/android/app/music/activity/BottomTabManager;

    return-object p0
.end method


# virtual methods
.method public doOnPrepare(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BottomTabHost"

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOnPrepare() translationY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->e:Landroid/view/ViewGroup;

    const-string v3, "miniPlayer"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " isFullPlayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->d:Lcom/samsung/android/app/music/player/PlayerLaunchable;

    invoke-interface {v2}, Lcom/samsung/android/app/music/player/PlayerLaunchable;->isFullPlayerActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->d:Lcom/samsung/android/app/music/player/PlayerLaunchable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/PlayerLaunchable;->isFullPlayerActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 41
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->e:Landroid/view/ViewGroup;

    const-string v2, "miniPlayer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->h:Lcom/samsung/android/app/music/activity/BottomTabManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/activity/BottomTabManager;->a(Z)V

    .line 42
    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->e:Landroid/view/ViewGroup;

    const-string v2, "miniPlayer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->a(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->e:Landroid/view/ViewGroup;

    const-string v2, "miniPlayer"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/main/BottomBarHostImpl;->b(Lkotlin/jvm/functions/Function0;)V

    :cond_3
    :goto_0
    return-void
.end method
