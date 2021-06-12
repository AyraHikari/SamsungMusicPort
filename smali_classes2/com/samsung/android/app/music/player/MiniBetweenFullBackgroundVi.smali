.class public final Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$Companion;

.field private static final x:Landroid/view/animation/LinearInterpolator;

.field private static final y:Landroid/view/animation/Interpolator;

.field private static final z:Landroid/view/animation/Interpolator;


# instance fields
.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:F

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private final k:Lkotlin/Lazy;

.field private final l:Lkotlin/Lazy;

.field private final m:Lkotlin/Lazy;

.field private final n:Lkotlin/Lazy;

.field private o:Z

.field private p:Z

.field private final q:Landroid/view/ViewGroup;

.field private final r:Landroid/view/ViewGroup;

.field private final s:Landroid/view/ViewGroup;

.field private final t:Landroid/view/View;

.field private final u:Landroid/view/ViewGroup;

.field private final v:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

.field private final w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xb

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "resources"

    const-string v4, "getResources()Landroid/content/res/Resources;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "sourceRound"

    const-string v4, "getSourceRound()F"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "outlineProvider"

    const-string v4, "getOutlineProvider()Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "sourceViView"

    const-string v4, "getSourceViView()Landroid/view/View;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "targetViView"

    const-string v4, "getTargetViView()Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "albumViView"

    const-string v4, "getAlbumViView()Landroid/widget/ImageView;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "sourceBounds"

    const-string v4, "getSourceBounds()Landroid/graphics/Rect;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "targetBounds"

    const-string v4, "getTargetBounds()Landroid/graphics/Rect;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "resultBounds"

    const-string v4, "getResultBounds()Landroid/graphics/Rect;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "sceneOverlayViews"

    const-string v4, "getSceneOverlayViews()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "alphaViews"

    const-string v4, "getAlphaViews()Ljava/util/Map;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->b:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$Companion;

    .line 343
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->x:Landroid/view/animation/LinearInterpolator;

    .line 344
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->y:Landroid/view/animation/Interpolator;

    .line 345
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->z:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;Z)V
    .locals 1

    const-string v0, "sceneRoot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceSceneRoot"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceBackgroundView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetSceneRoot"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetBackgroundView"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->q:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->r:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->s:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->t:Landroid/view/View;

    iput-object p5, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->u:Landroid/view/ViewGroup;

    iput-object p6, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->v:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    iput-boolean p7, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->w:Z

    .line 30
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$resources$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$resources$2;-><init>(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->c:Lkotlin/Lazy;

    .line 34
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$sourceRound$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$sourceRound$2;-><init>(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->d:Lkotlin/Lazy;

    .line 38
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$outlineProvider$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$outlineProvider$2;-><init>(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->f:Lkotlin/Lazy;

    .line 43
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$sourceViView$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$sourceViView$2;-><init>(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->g:Lkotlin/Lazy;

    .line 55
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$targetViView$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$targetViView$2;-><init>(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->h:Lkotlin/Lazy;

    .line 68
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$albumViView$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$albumViView$2;-><init>(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->i:Lkotlin/Lazy;

    .line 72
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object p2, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$sourceBounds$2;->INSTANCE:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$sourceBounds$2;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->j:Lkotlin/Lazy;

    .line 73
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object p2, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$targetBounds$2;->INSTANCE:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$targetBounds$2;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->k:Lkotlin/Lazy;

    .line 74
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object p2, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$resultBounds$2;->INSTANCE:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$resultBounds$2;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->l:Lkotlin/Lazy;

    .line 76
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object p2, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$sceneOverlayViews$2;->INSTANCE:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$sceneOverlayViews$2;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->m:Lkotlin/Lazy;

    .line 77
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object p2, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$alphaViews$2;->INSTANCE:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$alphaViews$2;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->n:Lkotlin/Lazy;

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->o:Z

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->e()Landroid/view/View;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->f()Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->setBackgroundColor(I)V

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->r:Landroid/view/ViewGroup;

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->e()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->f()Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final a(IIF)I
    .locals 1

    int-to-float v0, p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float p1, p1, p3

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method private final a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    .line 290
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 291
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 292
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 293
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-object p1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)Landroid/view/ViewGroup;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->q:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private final a(Landroid/view/View;F)V
    .locals 3

    if-eqz p1, :cond_1

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->l()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 216
    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->a(Landroid/view/View;F)V

    :cond_1
    return-void
.end method

.method private final a(Landroid/view/View;IIII)V
    .locals 0

    .line 310
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private final a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 299
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ne v0, v1, :cond_0

    .line 300
    iget v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 302
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v1, :cond_1

    .line 303
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

.method private final varargs a(Landroid/view/ViewGroup;F[Landroid/view/View;)V
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 370
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 371
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "getChildAt(index)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-static {p3, v2}, Lkotlin/collections/ArraysKt;->b([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 282
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a(Landroid/view/View;F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final varargs a([Landroid/view/View;)V
    .locals 4

    .line 354
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 93
    iget-object v3, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->q:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->k()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final b()Landroid/content/res/Resources;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    return-object v0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)Landroid/content/res/Resources;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->b()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method private final b(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .line 308
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method private final c()F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)F
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->c()F

    move-result p0

    return p0
.end method

.method private final c(F)V
    .locals 3

    const v0, 0x3f4ccccd    # 0.8f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->d()Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->c()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;->setRound(F)V

    return-void

    :cond_0
    sub-float/2addr p1, v0

    const v0, 0x3e4ccccc    # 0.19999999f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 167
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 168
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->c()F

    move-result v1

    sub-float v2, v0, p1

    mul-float v1, v1, v2

    iget v2, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->e:F

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    .line 169
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->d()Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;

    move-result-object p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;->setRound(F)V

    return-void
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)Landroid/graphics/Rect;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->j()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private final d()Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->f:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;

    return-object v0
.end method

.method private final d(F)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->e(F)V

    .line 174
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->f(F)V

    .line 175
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->g(F)V

    return-void
.end method

.method private final e()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->g:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)Landroid/view/View;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->t:Landroid/view/View;

    return-object p0
.end method

.method private final e(F)V
    .locals 1

    .line 179
    sget-object v0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->y:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->f()Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a(Landroid/view/View;F)V

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->e()Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a(Landroid/view/View;F)V

    return-void
.end method

.method private final f()Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->h:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    return-object v0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->v:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    return-object p0
.end method

.method private final f(F)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const v4, 0x3f19999a    # 0.6f

    cmpg-float v5, p1, v4

    if-gez v5, :cond_0

    .line 186
    iget-object p1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->u:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    new-array v3, v3, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->r:Landroid/view/ViewGroup;

    check-cast v5, Landroid/view/View;

    aput-object v5, v3, v2

    .line 187
    iget-object v2, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->v:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    check-cast v2, Landroid/view/View;

    aput-object v2, v3, v1

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->g()Landroid/widget/ImageView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    aput-object v1, v3, v0

    .line 186
    invoke-direct {p0, p1, v4, v3}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a(Landroid/view/ViewGroup;F[Landroid/view/View;)V

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v4

    const v4, 0x3ecccccc    # 0.39999998f

    div-float/2addr p1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    .line 189
    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 190
    iget-object v4, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->u:Landroid/view/ViewGroup;

    new-array v3, v3, [Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->r:Landroid/view/ViewGroup;

    check-cast v5, Landroid/view/View;

    aput-object v5, v3, v2

    .line 191
    iget-object v2, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->v:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    check-cast v2, Landroid/view/View;

    aput-object v2, v3, v1

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->g()Landroid/widget/ImageView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    aput-object v1, v3, v0

    .line 190
    invoke-direct {p0, v4, p1, v3}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a(Landroid/view/ViewGroup;F[Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private final g()Landroid/widget/ImageView;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->i:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->d()Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;

    move-result-object p0

    return-object p0
.end method

.method private final g(F)V
    .locals 2

    const/4 v0, 0x1

    int-to-float v0, v0

    .line 196
    sget-object v1, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->z:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    sub-float/2addr v0, p1

    .line 197
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->k()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 198
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a(Landroid/view/View;F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final h()Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->j:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public static final synthetic h(Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)Landroid/view/ViewGroup;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->u:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private final h(F)V
    .locals 3

    .line 270
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->j()Landroid/graphics/Rect;

    move-result-object v0

    .line 271
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->h()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->i()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a(IIF)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 272
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->h()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->i()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a(IIF)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 273
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->h()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->i()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a(IIF)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 274
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->h()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->i()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a(IIF)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private final i()Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->k:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method private final j()Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->l:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method private final k()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->m:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final l()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->n:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private final m()V
    .locals 6

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->q:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroupOverlay;->clear()V

    .line 100
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->k()Ljava/util/List;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->s:Landroid/view/ViewGroup;

    .line 102
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    .line 103
    instance-of v3, v1, Landroid/support/constraint/ConstraintLayout;

    .line 104
    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    .line 356
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 106
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 108
    :cond_0
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private final n()V
    .locals 6

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->s:Landroid/view/ViewGroup;

    .line 118
    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->w:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 119
    new-array v1, v3, [Landroid/view/View;

    const v4, 0x7f130259

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "findViewById(R.id.album_view)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v1, v2

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a([Landroid/view/View;)V

    .line 121
    :cond_0
    new-array v1, v3, [Landroid/view/View;

    const v4, 0x7f130413

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "findViewById(R.id.mini_player_control)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v1, v2

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a([Landroid/view/View;)V

    .line 122
    new-array v1, v3, [Landroid/view/View;

    const v4, 0x7f130070

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "findViewById(R.id.title)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v1, v2

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a([Landroid/view/View;)V

    .line 123
    new-array v1, v3, [Landroid/view/View;

    const v3, 0x7f13019a

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "findViewById(R.id.artist)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a([Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SMUSIC-MiniBetweenFullBackgroundVi"

    const-string v2, "Failed to add view"

    .line 127
    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private final o()V
    .locals 3

    .line 148
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->p:Z

    if-eqz v0, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->e()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->t:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->f()Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->v:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getCurrentImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->setCurrentImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->f()Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->v:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->e()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->f()Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getCurrentImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->p:Z

    const-string v0, "SMUSIC-MiniBetweenFullBackgroundVi"

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Assigning background is success!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "source vi view : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "target vi view : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->f()Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getCurrentImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private final p()V
    .locals 4

    .line 221
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->l()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v3, 0x0

    .line 222
    invoke-virtual {v2, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->l()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private final q()V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->q:Landroid/view/ViewGroup;

    .line 260
    iget-object v1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->t:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->h()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 261
    iget-object v1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->v:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    check-cast v1, Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->i()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 264
    iget-object v1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->r:Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->h()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 265
    iget-object v1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->r:Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->i()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->v:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 317
    iget-object v2, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->t:Landroid/view/View;

    const/4 v3, 0x0

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 318
    iget-object v2, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->v:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 319
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->e()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 320
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->f()Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 321
    iget-object v2, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->t:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->v:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 324
    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->r:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->e()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->r:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->f()Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 328
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->f(F)V

    const/4 v0, 0x0

    .line 329
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->g(F)V

    .line 331
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->p()V

    .line 332
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->m()V

    return-void
.end method

.method public final a(F)V
    .locals 1

    .line 133
    sget-object v0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->b:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi$Companion;

    .line 134
    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->o:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->n()V

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->o:Z

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 139
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->o()V

    .line 141
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->d(F)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->b(F)V

    .line 143
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->c(F)V

    return-void
.end method

.method public final b(F)V
    .locals 3

    .line 230
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->h()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 231
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->i()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 233
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->q()V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->t:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->h()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->v:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    check-cast v0, Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->i()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->u:Landroid/view/ViewGroup;

    const v1, 0x7f130073

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->i()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 243
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->x:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/LinearInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->h(F)V

    .line 244
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->j()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->j()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-eq p1, v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->j()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->j()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->e()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->j()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 248
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->f()Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->j()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "SMUSIC-MiniBetweenFullBackgroundVi"

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result bounds are "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->j()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    return-void
.end method
