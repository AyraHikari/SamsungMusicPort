.class public Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;


# static fields
.field private static final a:Ljava/lang/String; = "FractionTransitionAdapter"

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Landroid/transition/Transition;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/transition/Transition;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->e:Landroid/os/Handler;

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->c:Landroid/transition/Transition;

    return-void
.end method

.method private a(Landroid/transition/Transition;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            ")",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 209
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->b(Landroid/transition/Transition;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p1}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 211
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 212
    invoke-virtual {p1}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->d:Ljava/util/List;

    return-object p0
.end method

.method private a(Ljava/util/Set;Landroid/transition/Transition;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/transition/Transition;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 70
    instance-of v0, p2, Landroid/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 71
    check-cast p2, Landroid/transition/TransitionSet;

    const/4 v0, 0x0

    .line 72
    :goto_0
    invoke-virtual {p2}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 73
    invoke-virtual {p2, v0}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->a(Ljava/util/Set;Landroid/transition/Transition;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p2}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 77
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 78
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object p1
.end method

.method private a(Landroid/animation/Animator;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-virtual {p1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 252
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 253
    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    goto :goto_0

    .line 256
    :cond_1
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 257
    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 258
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->a(Landroid/animation/Animator;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;Landroid/animation/Animator;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->a(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;Landroid/transition/Transition;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->c(Landroid/transition/Transition;)V

    return-void
.end method

.method private a(Ljava/util/List;F)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;F)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 361
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 362
    instance-of v1, v0, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    .line 363
    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->a(Ljava/util/List;F)V

    goto :goto_0

    .line 364
    :cond_1
    instance-of v1, v0, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    .line 365
    invoke-virtual {v0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float v1, v1, p2

    float-to-long v1, v1

    .line 366
    move-object v3, v0

    check-cast v3, Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 367
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animate() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", interpolator : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v0}, Landroid/animation/Animator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", fraction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", interpolated fraction : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v0}, Landroid/animation/Animator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v3

    if-nez v3, :cond_2

    move v0, p2

    goto :goto_1

    .line 371
    :cond_2
    invoke-virtual {v0}, Landroid/animation/Animator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 373
    :cond_3
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->b:Ljava/lang/String;

    const-string v1, "Error animating"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;)Landroid/transition/Transition;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->c:Landroid/transition/Transition;

    return-object p0
.end method

.method private b(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 134
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 136
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->c:Landroid/transition/Transition;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    .line 138
    :try_start_1
    const-class v0, Landroid/transition/Transition;

    const-string v5, "sRunningAnimators"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 141
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 142
    instance-of v5, v0, Ljava/lang/ThreadLocal;

    if-eqz v5, :cond_1

    .line 143
    check-cast v0, Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    .line 144
    instance-of v5, v0, Landroid/util/ArrayMap;

    if-eqz v5, :cond_0

    .line 145
    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 146
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->a:Ljava/lang/String;

    const-string v5, "sRunningAnimators clear success!"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_0
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sRunningAnimators : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    :cond_1
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sRunningAnimators : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 155
    :try_start_2
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->a:Ljava/lang/String;

    const-string v6, "sRunningAnimators getting failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    :goto_0
    const-class v0, Landroid/transition/Transition;

    const-string v5, "mStartValuesList"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 159
    const-class v5, Landroid/transition/Transition;

    const-string v6, "mEndValuesList"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 161
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 162
    iget-object v6, v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->c:Landroid/transition/Transition;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 165
    iget-object v6, v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->c:Landroid/transition/Transition;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    const-class v6, Landroid/transition/Transition;

    const-string v7, "mStartValues"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 168
    const-class v7, Landroid/transition/Transition;

    const-string v8, "mEndValues"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 169
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 170
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 172
    iget-object v8, v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->c:Landroid/transition/Transition;

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 173
    iget-object v8, v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->c:Landroid/transition/Transition;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 176
    const-class v8, Landroid/transition/Transition;

    const-string v9, "matchStartAndEnd"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Class;

    .line 177
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 178
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v11, v4

    .line 177
    invoke-virtual {v8, v9, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 179
    invoke-virtual {v8, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 180
    iget-object v9, v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->c:Landroid/transition/Transition;

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v6, v11, v13

    aput-object v7, v11, v4

    invoke-virtual {v8, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v8, v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->c:Landroid/transition/Transition;

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 183
    iget-object v8, v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->c:Landroid/transition/Transition;

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 185
    const-class v8, Landroid/transition/Transition;

    const-string v9, "createAnimators"

    const/4 v11, 0x5

    new-array v12, v11, [Ljava/lang/Class;

    const-class v14, Landroid/view/ViewGroup;

    aput-object v14, v12, v13

    .line 187
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v12, v4

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v12, v10

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const/4 v15, 0x3

    aput-object v14, v12, v15

    .line 188
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const/16 v16, 0x4

    aput-object v14, v12, v16

    .line 186
    invoke-virtual {v8, v9, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 189
    invoke-virtual {v8, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 190
    iget-object v9, v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->c:Landroid/transition/Transition;

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v2, v11, v13

    aput-object v6, v11, v4

    aput-object v7, v11, v10

    aput-object v0, v11, v15

    aput-object v5, v11, v16

    .line 191
    invoke-virtual {v8, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->c:Landroid/transition/Transition;

    instance-of v0, v0, Landroid/transition/TransitionSet;

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->c:Landroid/transition/Transition;

    check-cast v0, Landroid/transition/TransitionSet;

    .line 195
    :goto_1
    invoke-virtual {v0}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v4

    if-ge v13, v4, :cond_3

    .line 196
    invoke-virtual {v0, v13}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->a(Landroid/transition/Transition;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 199
    :cond_2
    iget-object v0, v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->c:Landroid/transition/Transition;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->a(Landroid/transition/Transition;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 203
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reflectionPrepareTransition sceneRoot : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-object v3
.end method

.method private b(Landroid/transition/Transition;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            ")",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 222
    :try_start_0
    const-class v0, Landroid/transition/Transition;

    const-string v1, "mAnimators"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 226
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->b:Ljava/lang/String;

    const-string v1, "getAnimators()"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method private b(Ljava/util/Set;Landroid/transition/Transition;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/transition/Transition;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 92
    instance-of v0, p2, Landroid/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 93
    check-cast p2, Landroid/transition/TransitionSet;

    const/4 v0, 0x0

    .line 94
    :goto_0
    invoke-virtual {p2}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 95
    invoke-virtual {p2, v0}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->b(Ljava/util/Set;Landroid/transition/Transition;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p2}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 99
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 100
    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object p1
.end method

.method private b(Landroid/animation/Animator;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 304
    :cond_0
    invoke-virtual {p1}, Landroid/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 307
    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 310
    :cond_1
    instance-of v0, p1, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 311
    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 312
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->b(Landroid/animation/Animator;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;Landroid/animation/Animator;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->b(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;Landroid/transition/Transition;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->e(Landroid/transition/Transition;)V

    return-void
.end method

.method private c(Landroid/transition/Transition;)V
    .locals 2

    .line 265
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->d(Landroid/transition/Transition;)V

    .line 266
    instance-of v0, p1, Landroid/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 267
    check-cast p1, Landroid/transition/TransitionSet;

    const/4 v0, 0x0

    .line 268
    :goto_0
    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 269
    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->c(Landroid/transition/Transition;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(Landroid/transition/Transition;)V
    .locals 4

    .line 276
    :try_start_0
    const-class v0, Landroid/transition/Transition;

    const-string v1, "start"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 278
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start() instance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->g(Landroid/transition/Transition;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 281
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->b:Ljava/lang/String;

    const-string v1, "start() failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private e(Landroid/transition/Transition;)V
    .locals 2

    .line 319
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->f(Landroid/transition/Transition;)V

    .line 320
    instance-of v0, p1, Landroid/transition/TransitionSet;

    if-eqz v0, :cond_0

    .line 321
    check-cast p1, Landroid/transition/TransitionSet;

    const/4 v0, 0x0

    .line 322
    :goto_0
    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 323
    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->e(Landroid/transition/Transition;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f(Landroid/transition/Transition;)V
    .locals 4

    .line 330
    :try_start_0
    const-class v0, Landroid/transition/Transition;

    const-string v1, "end"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 332
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end() instance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->g(Landroid/transition/Transition;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 335
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->b:Ljava/lang/String;

    const-string v1, "end() failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private g(Landroid/transition/Transition;)Ljava/lang/Integer;
    .locals 2

    .line 342
    :try_start_0
    const-class v0, Landroid/transition/Transition;

    const-string v1, "mNumInstances"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 344
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 346
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->a:Ljava/lang/String;

    const-string v1, "getNumInstance failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->c:Landroid/transition/Transition;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->a(Ljava/util/Set;Landroid/transition/Transition;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public a(F)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->d:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->a(Ljava/util/List;F)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 2

    .line 125
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->b(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->d:Ljava/util/List;

    .line 126
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created animator size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Z)V
    .locals 7

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->c:Landroid/transition/Transition;

    if-eqz v0, :cond_0

    .line 112
    const-class v0, Landroid/transition/Transition;

    const-string v1, "captureValues"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 113
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 115
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->c:Landroid/transition/Transition;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 118
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureValues sceneRoot : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", start : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->c:Landroid/transition/Transition;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->b(Ljava/util/Set;Landroid/transition/Transition;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public c()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->e:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;->e:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/transition/FractionTransitionAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
