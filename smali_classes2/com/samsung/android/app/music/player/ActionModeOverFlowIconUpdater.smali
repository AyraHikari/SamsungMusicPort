.class public final Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$Companion;


# instance fields
.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private e:I

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Ljava/lang/Runnable;

.field private final i:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "actionModeIconColor"

    const-string v4, "getActionModeIconColor()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "restoreIconColor"

    const-string v4, "getRestoreIconColor()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "isLandscape"

    const-string v4, "isLandscape()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "isNightMode"

    const-string v4, "isNightMode()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->b:Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->i:Landroid/app/Activity;

    .line 25
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$actionModeIconColor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$actionModeIconColor$2;-><init>(Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->c:Lkotlin/Lazy;

    .line 28
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$restoreIconColor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$restoreIconColor$2;-><init>(Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->d:Lkotlin/Lazy;

    .line 32
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$isLandscape$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$isLandscape$2;-><init>(Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->f:Lkotlin/Lazy;

    .line 35
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$isNightMode$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$isNightMode$2;-><init>(Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->g:Lkotlin/Lazy;

    .line 38
    new-instance p1, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$iconUpdateRunnable$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater$iconUpdateRunnable$1;-><init>(Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;)V

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->h:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;)Landroid/app/Activity;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->i:Landroid/app/Activity;

    return-object p0
.end method

.method private final a()Landroid/support/v7/widget/ActionBarContextView;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->i:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->e(Landroid/app/Activity;)Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    return-object v0
.end method

.method private final a(IJ)V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->a()Landroid/support/v7/widget/ActionBarContextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iput p1, p0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->e:I

    .line 62
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 63
    iget-object p1, p0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/ActionBarContextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final a(Landroid/view/ViewGroup;I)V
    .locals 4

    if-eqz p1, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "getChildAt(i)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    instance-of v2, v1, Landroid/support/v7/widget/ActionMenuView;

    if-eqz v2, :cond_0

    .line 70
    check-cast v1, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 71
    invoke-static {v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 72
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 73
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;Landroid/view/ViewGroup;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->a(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method private final b()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;)Landroid/support/v7/widget/ActionBarContextView;
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->a()Landroid/support/v7/widget/ActionBarContextView;

    move-result-object p0

    return-object p0
.end method

.method private final c()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->e:I

    return p0
.end method

.method private final d()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->f:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final e()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->g:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final f()Z
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->f()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->c()I

    move-result p1

    const-wide/16 v0, 0x190

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->a(IJ)V

    return-void
.end method

.method public onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->f()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->b()I

    move-result p1

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/player/ActionModeOverFlowIconUpdater;->a(IJ)V

    return-void
.end method
