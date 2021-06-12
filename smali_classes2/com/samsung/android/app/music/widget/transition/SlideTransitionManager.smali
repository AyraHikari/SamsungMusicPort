.class public Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/widget/transition/SlideGestureController$OnGestureSlideListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$OnSceneStateChangedListener;,
        Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;,
        Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;,
        Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransitionFactory;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SlideTransitionManager"

.field private static final b:Ljava/lang/String;

.field private static final c:[[F

.field private static final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private B:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

.field private final C:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:Z

.field private final f:Landroid/os/Handler;

.field private final g:Landroid/view/ViewGroup;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$OnSceneStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;

.field private final l:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransitionFactory;

.field private o:Landroid/view/GestureDetector;

.field private p:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

.field private q:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

.field private r:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

.field private s:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;

.field private t:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

.field private u:I

.field private v:I

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    const/16 v0, 0x9

    .line 74
    filled-new-array {v0, v0}, [I

    move-result-object v0

    const-class v1, F

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->c:[[F

    .line 77
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->c:[[F

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 78
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->c:[[F

    aget-object v0, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x8

    aput v3, v0, v4

    .line 79
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->c:[[F

    aget-object v0, v0, v4

    aput v3, v0, v1

    .line 80
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->c:[[F

    aget-object v0, v0, v4

    aput v2, v0, v4

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->d:Landroid/util/SparseArray;

    .line 86
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->d:Landroid/util/SparseArray;

    const-string v2, "STATE_SOURCE_CAPTURING"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->d:Landroid/util/SparseArray;

    const-string v2, "STATE_TARGET_CAPTURING"

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->d:Landroid/util/SparseArray;

    const-string v2, "STATE_SOURCE_CAPTURED"

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->d:Landroid/util/SparseArray;

    const-string v2, "STATE_TARGET_CAPTURED"

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->d:Landroid/util/SparseArray;

    const-string v2, "STATE_SOURCE_ATTACHING"

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->d:Landroid/util/SparseArray;

    const-string v2, "STATE_TARGET_ATTACHING"

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->d:Landroid/util/SparseArray;

    const-string v2, "STATE_SOURCE_ATTACHED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->d:Landroid/util/SparseArray;

    const-string v1, "STATE_TARGET_ATTACHED"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/view/ViewGroup;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransitionFactory;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;I[Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$OnSceneStateChangedListener;)V
    .locals 4

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->f:Landroid/os/Handler;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->h:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->i:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->j:Ljava/util/Set;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->m:Ljava/util/List;

    const/4 v0, 0x0

    .line 342
    iput-boolean v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->z:Z

    .line 1097
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->C:Ljava/util/HashMap;

    .line 1099
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->D:Ljava/util/List;

    .line 296
    sget-object v1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SlideTransitionManager is created : @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 299
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->g:Landroid/view/ViewGroup;

    .line 301
    iput-object p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->k:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;

    .line 302
    iput-object p3, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->l:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;

    .line 303
    iput-object p4, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->n:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransitionFactory;

    .line 304
    iput-object p5, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->A:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;

    .line 306
    iput p6, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->u:I

    .line 307
    iput p6, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->v:I

    .line 308
    iput p6, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->w:I

    .line 309
    iget p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->v:I

    const/16 p2, 0x8

    const/4 p3, 0x4

    if-eq p1, p2, :cond_1

    iget p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->v:I

    if-ne p1, p3, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Initial state can be SOURCE_ATTACHED or TARGET_ATTACHED state only"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 314
    :cond_1
    :goto_0
    new-instance p1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    iget p4, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->v:I

    if-ne p4, p3, :cond_2

    sget-object p4, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->COLLAPSED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    goto :goto_1

    :cond_2
    sget-object p4, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->EXPANDED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    :goto_1
    invoke-direct {p1, p4}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;-><init>(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->p:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    .line 316
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->p:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$OnGestureSlideListener;)V

    .line 317
    new-instance p1, Landroid/view/GestureDetector;

    iget-object p4, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->p:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    invoke-direct {p1, v1, p4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->o:Landroid/view/GestureDetector;

    .line 318
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->o:Landroid/view/GestureDetector;

    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    if-eqz p7, :cond_4

    .line 321
    array-length p1, p7

    :goto_2
    if-ge v0, p1, :cond_4

    aget-object p4, p7, v0

    if-eqz p4, :cond_3

    .line 323
    invoke-virtual {p0, p4}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$OnSceneStateChangedListener;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 327
    :cond_4
    iget p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->v:I

    if-ne p1, p3, :cond_5

    .line 328
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->k:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;

    iget-object p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->q:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    const/4 p1, 0x3

    .line 329
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(I)V

    .line 330
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->q:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->c(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    .line 331
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->q:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->g(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    .line 332
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(I)V

    goto :goto_3

    .line 334
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->l:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;

    iget-object p3, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->r:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    const/4 p1, 0x7

    .line 335
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(I)V

    .line 336
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->r:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->c(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    .line 337
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->r:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->g(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    .line 338
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(I)V

    :goto_3
    return-void
.end method

.method private a(ILandroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 15

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 420
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v8

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSize()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v14

    move-wide v1, v3

    move/from16 v5, p1

    .line 422
    invoke-static/range {v1 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;
    .locals 2

    .line 1170
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1171
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 1172
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method private a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;
    .locals 5

    if-nez p1, :cond_0

    .line 661
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    const-string p2, "Scene factory is null !"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 667
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    if-eqz p2, :cond_1

    .line 672
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$OnSceneStateChangedListener;)V

    .line 674
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->g:Landroid/view/ViewGroup;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;->a(Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 676
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$OnSceneStateChangedListener;)V

    .line 679
    :cond_2
    sget-object p2, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createScene ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") takes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .line 105
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/content/res/Resources;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 1179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 1181
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1183
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p1, 0x5d

    .line 1187
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;Landroid/content/res/Resources;Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Landroid/content/res/Resources;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/view/ViewGroup;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 10

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1020
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start buildTransition source : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to target : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1025
    invoke-interface {p3}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;->a()Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v0, 0x4

    .line 1026
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1027
    invoke-virtual {v4}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1029
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->c(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    .line 1030
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 1032
    invoke-interface {p2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;->c()V

    .line 1033
    invoke-interface {p3}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;->c()V

    .line 1036
    invoke-interface {p2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;->a()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const p3, 0x1020002

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Landroid/view/ViewGroup;I)Landroid/view/ViewGroup;

    move-result-object v5

    .line 1038
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->i()Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->s:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;

    .line 1039
    iget-object p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->s:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;

    const/4 p3, 0x1

    invoke-interface {p2, v5, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;->a(Landroid/view/ViewGroup;Z)V

    .line 1041
    iget-object p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->f:Landroid/os/Handler;

    new-instance p3, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;

    move-object v2, p3

    move-object v3, p0

    move-object v6, p1

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;-><init>(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;JLjava/lang/Runnable;)V

    const-wide/16 p4, 0x0

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1015
    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "source scene("

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") or targetScene("

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") is null"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->q:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    instance-of v0, v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Recyclable;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 637
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->q:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 639
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "New scene is created although recyclable scene is in presence."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 644
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->q:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;F)V
    .locals 1

    .line 829
    instance-of v0, p1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene$Animator;

    if-eqz v0, :cond_0

    .line 830
    check-cast p1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene$Animator;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene$Animator;->a(F)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->g()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;Ljava/util/List;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private a(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1087
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1089
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1091
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionUtils;->a(Landroid/view/View;F)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/ViewGroup;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1122
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 1123
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    return-void

    .line 1128
    :cond_2
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_6

    .line 1130
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1131
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 1132
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/ViewGroup;)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_5

    .line 1134
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Ljava/util/List;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, p2, v2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(Ljava/util/List;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    if-eqz p3, :cond_5

    .line 1136
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private a(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/ValueAnimator;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 962
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 963
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    .line 965
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 967
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    if-eqz v3, :cond_1

    if-eqz p2, :cond_2

    .line 970
    invoke-interface {v3, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_1

    .line 972
    :cond_2
    invoke-interface {v3, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private a(Landroid/view/View;II)Z
    .locals 6

    .line 428
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    .line 430
    new-array v1, v1, [I

    .line 431
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    .line 432
    aget v3, v1, v2

    iput v3, v0, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    .line 433
    aget v1, v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 434
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 435
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 437
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 438
    iget v5, v4, Landroid/graphics/Rect;->top:I

    if-gt v5, p3, :cond_0

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    if-gt p3, v5, :cond_0

    iget v5, v4, Landroid/graphics/Rect;->left:I

    if-gt v5, p2, :cond_0

    iget v5, v4, Landroid/graphics/Rect;->right:I

    if-gt p2, v5, :cond_0

    .line 440
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " isInTouchViewArea exclude rect ! : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 447
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInTouchViewArea : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", x : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", y : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", attached : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 447
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget p1, v0, Landroid/graphics/Rect;->left:I

    if-gt p1, p2, :cond_2

    iget p1, v0, Landroid/graphics/Rect;->right:I

    if-lt p1, p2, :cond_2

    iget p1, v0, Landroid/graphics/Rect;->top:I

    if-gt p1, p3, :cond_2

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    if-lt p1, p3, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private a(Ljava/util/List;Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1147
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    .line 1148
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p2, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method private b(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;
    .locals 5

    if-nez p1, :cond_0

    .line 688
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    const-string p2, "Scene factory is null !"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 693
    :cond_0
    instance-of v0, p2, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Recyclable;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 696
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    move-result-object p2

    .line 701
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 705
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "obtainScene ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") takes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 705
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private b(I)V
    .locals 3

    .line 982
    iget v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->v:I

    const/4 v1, 0x4

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->v:I

    if-ne v0, v1, :cond_1

    .line 983
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->v:I

    iput v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->u:I

    :cond_1
    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_3

    .line 986
    :cond_2
    iput p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->w:I

    .line 989
    :cond_3
    iput p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->v:I

    .line 990
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->c(I)V

    return-void
.end method

.method private b(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->r:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    instance-of v0, v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Recyclable;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 649
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->r:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 651
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "New scene is created although recyclable scene is in presence."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 656
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->r:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->k()V

    return-void
.end method

.method private b(Ljava/util/List;Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1160
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object p2

    .line 1161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1162
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->h:Ljava/util/List;

    return-object p0
.end method

.method private c(I)V
    .locals 2

    .line 994
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$OnSceneStateChangedListener;

    if-eqz v1, :cond_0

    .line 996
    invoke-interface {v1, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$OnSceneStateChangedListener;->a(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private c(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 718
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 720
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->g:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->A:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;

    invoke-interface {p1, v2, v3}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;->a(Landroid/view/ViewGroup;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;)V

    .line 723
    sget-object v2, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachScene ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") takes "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 723
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;)Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->s:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;

    return-object p0
.end method

.method private d(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V
    .locals 6

    .line 732
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    if-eqz p1, :cond_0

    .line 735
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->g:Landroid/view/ViewGroup;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;->a(Landroid/view/ViewGroup;)V

    .line 736
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->e(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    .line 738
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->g:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroupOverlay;->clear()V

    .line 740
    sget-object v2, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detachScene ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") takes "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 740
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;)Lcom/samsung/android/app/music/widget/transition/SlideGestureController;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->p:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    return-object p0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    return-object v0
.end method

.method private e(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 748
    instance-of v0, p1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Recyclable;

    if-eqz v0, :cond_0

    .line 749
    check-cast p1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Recyclable;

    invoke-interface {p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Recyclable;->e()V

    goto :goto_0

    .line 751
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->f(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->D:Ljava/util/List;

    return-object p0
.end method

.method private f(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 760
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$OnSceneStateChangedListener;)V

    .line 761
    invoke-interface {p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;->release()V

    return-void
.end method

.method private g()V
    .locals 2

    .line 933
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->x:Z

    if-eqz v0, :cond_0

    return-void

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->s:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->s:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;->c()V

    .line 939
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->i:Ljava/util/List;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Ljava/util/List;Z)V

    .line 940
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->D:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Ljava/util/List;Z)V

    .line 941
    iput-boolean v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->x:Z

    .line 942
    iput-boolean v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->e:Z

    return-void
.end method

.method private g(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 771
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 774
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->A:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;->a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;)V

    const/4 v2, 0x0

    .line 775
    iput-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->A:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;

    .line 776
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->t:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    .line 779
    sget-object v2, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "commitAttach ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") takes "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 779
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private h()V
    .locals 2

    .line 946
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->x:Z

    if-nez v0, :cond_0

    return-void

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->s:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;

    if-eqz v0, :cond_1

    .line 950
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->s:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;->d()V

    .line 952
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Ljava/util/List;Z)V

    .line 953
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->D:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Ljava/util/List;Z)V

    .line 954
    iput-boolean v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->x:Z

    .line 955
    iput-boolean v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->e:Z

    return-void
.end method

.method private h(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 791
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 794
    invoke-interface {p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;->d()V

    .line 795
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->e(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    .line 798
    sget-object v2, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "commitDetach ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") takes "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 798
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private i()Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;
    .locals 2

    .line 1002
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->n:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransitionFactory;

    invoke-interface {v1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransitionFactory;->a()Landroid/transition/Transition;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;-><init>(Landroid/transition/Transition;)V

    return-object v0
.end method

.method private j()V
    .locals 3

    .line 1102
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->C:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1104
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    if-eqz v2, :cond_0

    .line 1106
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 1107
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private k()V
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1114
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->C:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .line 836
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->d(F)V

    return-void
.end method

.method public a(ILcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;)V
    .locals 3

    .line 488
    iget v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->v:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 492
    invoke-virtual {p2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    :goto_0
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 494
    iput-object p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->A:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;

    .line 495
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->p:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b(J)V

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    if-ne p1, v2, :cond_3

    .line 497
    iput-object p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->A:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;

    .line 498
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->p:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(J)V

    :goto_1
    return-void

    .line 500
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t move state for scene :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 3

    .line 600
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add exclude touch rect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 602
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)V
    .locals 6

    .line 843
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slide state changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iput-object p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->B:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    .line 845
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->EXPANDED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-ne p2, v0, :cond_1

    const/16 p2, 0x8

    .line 846
    iput p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->w:I

    .line 848
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->h()V

    .line 850
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->h:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Ljava/util/List;I)V

    const/4 v0, 0x7

    .line 851
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(I)V

    .line 853
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->EXPANDED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    if-ne p1, v0, :cond_0

    .line 855
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->q:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->d(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    .line 856
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(I)V

    .line 857
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->s:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;

    if-eqz p1, :cond_5

    .line 858
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->s:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;->a(F)V

    goto/16 :goto_0

    .line 862
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->r:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->g(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    .line 863
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->q:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->h(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    .line 864
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(I)V

    .line 865
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->q:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    if-eqz p1, :cond_5

    .line 866
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    goto/16 :goto_0

    .line 869
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->COLLAPSED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    if-ne p2, v0, :cond_3

    const/4 p2, 0x4

    .line 870
    iput p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->w:I

    .line 871
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->h()V

    .line 873
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->h:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Ljava/util/List;I)V

    const/4 v0, 0x3

    .line 874
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(I)V

    .line 876
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->COLLAPSED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    if-ne p1, v0, :cond_2

    .line 878
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->r:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->d(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    .line 879
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(I)V

    .line 880
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->s:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;

    if-eqz p1, :cond_5

    .line 881
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->s:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;->a(F)V

    goto :goto_0

    .line 885
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->q:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->g(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    .line 886
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->r:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->h(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    .line 888
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(I)V

    .line 889
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->r:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    if-eqz p1, :cond_5

    .line 890
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    goto :goto_0

    .line 893
    :cond_3
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->DRAGGING_PREPARED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    if-ne p2, v0, :cond_5

    .line 894
    sget-object p2, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->COLLAPSED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    if-ne p1, p2, :cond_4

    .line 895
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->l:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;

    iget-object p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->r:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    .line 896
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->j()V

    .line 898
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->g:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->q:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    iget-object v3, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->r:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    new-instance v4, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$1;-><init>(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;)V

    new-instance v5, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$2;-><init>(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Landroid/view/ViewGroup;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 911
    :cond_4
    sget-object p2, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->EXPANDED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    if-ne p1, p2, :cond_5

    .line 912
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->k:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;

    iget-object p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->q:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    .line 913
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->j()V

    .line 915
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->g:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->r:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    iget-object v3, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->q:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    new-instance v4, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$3;-><init>(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;)V

    new-instance v5, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$4;-><init>(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Landroid/view/ViewGroup;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$OnSceneStateChangedListener;)V
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransitionFactory;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 591
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->n:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransitionFactory;

    return-void

    .line 589
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transition factory can\'t be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Z
    .locals 1

    .line 290
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->e:Z

    return v0
.end method

.method public a(Landroid/app/Activity;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 345
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->z:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->t:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    if-nez v0, :cond_1

    .line 349
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    const-string p2, "handleTouchEvent attached scene is null!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->t:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-interface {v0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;->b()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 354
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleTouchEvent() scene("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->t:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") is not enabled!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-boolean p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->y:Z

    if-eqz p1, :cond_2

    .line 358
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->p:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->c(F)Z

    .line 359
    iput-boolean v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->y:Z

    :cond_2
    return v1

    .line 363
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->t:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-interface {v0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;->a()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    .line 365
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "View for scene("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->t:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") is null"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 369
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_5

    .line 371
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 372
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 374
    iget-boolean v6, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->y:Z

    .line 375
    invoke-direct {p0, v0, v4, v5}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Landroid/view/View;II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->y:Z

    if-eqz v6, :cond_5

    .line 376
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->y:Z

    if-nez v0, :cond_5

    .line 377
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    const-string v4, "Gesture Vi may be running!, Finish Vi"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->p:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->c(F)Z

    .line 381
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->y:Z

    if-nez v0, :cond_6

    .line 383
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    const-string p2, "No listen for this touch !"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-boolean p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->e:Z

    return p1

    .line 390
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->y:Z

    const/4 v2, 0x4

    const/4 v4, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    if-eq v3, v0, :cond_7

    const/4 v0, 0x6

    if-eq v3, v0, :cond_7

    if-ne v3, v2, :cond_8

    .line 393
    :cond_7
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    const-string p2, "Outside touch in VI"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 398
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->o:Landroid/view/GestureDetector;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->o:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    :goto_0
    if-ne v3, v4, :cond_d

    if-nez v0, :cond_b

    .line 401
    iget-object v3, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->p:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    if-eqz v3, :cond_a

    .line 402
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->p:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 404
    :cond_a
    iput-boolean v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->y:Z

    .line 406
    :cond_b
    iget-object v3, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->B:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    sget-object v5, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->DRAGGING_PREPARED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    if-eq v3, v5, :cond_c

    iget-object v3, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->B:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    sget-object v5, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->DRAGGING:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    if-ne v3, v5, :cond_d

    .line 407
    :cond_c
    iput-boolean v4, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->z:Z

    .line 408
    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(ILandroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 409
    invoke-direct {p0, v4, p2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(ILandroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 410
    iput-boolean v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->z:Z

    .line 413
    :cond_d
    iget-boolean p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->e:Z

    or-int/2addr p1, v0

    return p1
.end method

.method public b()V
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b(F)V
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->p:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b(F)V

    return-void
.end method

.method public b(ILcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;)V
    .locals 4

    .line 505
    iget v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->v:I

    if-ne v0, p1, :cond_0

    return-void

    .line 508
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->A:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;

    .line 509
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sceneTo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", args : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->p:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b()Z

    move-result p2

    .line 513
    iput p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->w:I

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    if-nez p2, :cond_1

    .line 517
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->k:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;

    iget-object v3, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->q:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    :cond_1
    const/4 v2, 0x3

    .line 520
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(I)V

    .line 521
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->q:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->c(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    .line 522
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->q:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->g(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    .line 523
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->r:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->h(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    .line 524
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->p:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    sget-object v3, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->COLLAPSED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;Z)V

    .line 526
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    if-ne p1, v1, :cond_5

    if-nez p2, :cond_3

    .line 530
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->l:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;

    iget-object v3, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->r:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    :cond_3
    const/4 v2, 0x7

    .line 533
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(I)V

    .line 534
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->r:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->c(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    .line 535
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->r:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->g(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    .line 536
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->q:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->h(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    .line 537
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->p:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    sget-object v3, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->EXPANDED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;Z)V

    .line 539
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(I)V

    :goto_0
    if-eqz p2, :cond_4

    .line 545
    sget-object p2, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->c:[[F

    iget v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->u:I

    aget-object p2, p2, v0

    aget p1, p2, p1

    .line 546
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->d(F)V

    .line 547
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->h()V

    .line 548
    sget-object p2, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sceneTo restore animation value to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    .line 541
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t move state for scene :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$OnSceneStateChangedListener;)V
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->q:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->f(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    .line 618
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->r:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->f(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;)V

    return-void
.end method

.method public c(F)V
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->p:Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(F)V

    return-void
.end method

.method public d()I
    .locals 1

    .line 805
    iget v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->w:I

    return v0
.end method

.method public d(F)V
    .locals 5

    .line 809
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->s:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->s:Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;->a(F)V

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 814
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v3

    long-to-float v3, v3

    mul-float v4, p1, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v3, v3, v2

    float-to-long v2, v3

    .line 813
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 817
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v3

    long-to-float v3, v3

    mul-float v3, v3, p1

    float-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_1

    .line 819
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->u:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 820
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->r:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;F)V

    .line 821
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->q:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    sub-float/2addr v2, p1

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;F)V

    goto :goto_2

    .line 823
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->r:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    sub-float/2addr v2, p1

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;F)V

    .line 824
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->q:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;F)V

    :goto_2
    return-void
.end method
