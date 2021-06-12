.class public Lcom/samsung/android/app/music/widget/transition/SlideGestureController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;,
        Lcom/samsung/android/app/music/widget/transition/SlideGestureController$PendingScroll;,
        Lcom/samsung/android/app/music/widget/transition/SlideGestureController$OnGestureSlideListener;,
        Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SlideGestureController"

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/music/widget/transition/SlideGestureController$OnGestureSlideListener;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;

.field private e:Landroid/view/MotionEvent;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

.field private k:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

.field private l:F

.field private m:F

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/widget/transition/SlideGestureController$PendingScroll;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->c:Ljava/util/Set;

    .line 49
    new-instance v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;-><init>(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->d:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;

    const/high16 v0, 0x44160000    # 600.0f

    .line 53
    iput v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->f:F

    .line 65
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->COLLAPSED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->j:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    .line 67
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->COLLAPSED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->k:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->r:Ljava/util/List;

    const-string v0, "constructor"

    .line 88
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;Z)V

    .line 92
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->j:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    return-void
.end method

.method private a(FFFJZ)V
    .locals 7

    .line 195
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    const-string p2, "Finishing sliding currently, ignore slideTo request!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->d:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->a(FFFJZ)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)V
    .locals 1

    const/4 v0, 0x1

    .line 208
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;Z)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)V
    .locals 2

    .line 241
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->n:Z

    if-nez v0, :cond_0

    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$OnGestureSlideListener;

    if-eqz v1, :cond_1

    .line 246
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$OnGestureSlideListener;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->e()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;F)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->d(F)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 518
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Prev slide state : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->j:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Curr slide state : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->k:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    .line 519
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 518
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->o:Z

    return p1
.end method

.method private b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)Ljava/lang/String;
    .locals 1

    .line 524
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$1;->a:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    const-string p1, "[COLLAPSED]"

    return-object p1

    :pswitch_1
    const-string p1, "[EXPANDED]"

    return-object p1

    :pswitch_2
    const-string p1, "[DRAGGING]"

    return-object p1

    :pswitch_3
    const-string p1, "[DRAGGING_PREPARED]"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;F)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->e(F)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->o:Z

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->q:Z

    return p1
.end method

.method private c(J)J
    .locals 3

    const-wide/16 v0, 0x15e

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    return-wide p1
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->p:Z

    return p1
.end method

.method private d(F)V
    .locals 2

    .line 257
    iput p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->i:F

    .line 258
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->n:Z

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$OnGestureSlideListener;

    if-eqz v1, :cond_1

    .line 263
    invoke-interface {v1, p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$OnGestureSlideListener;->a(F)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private d()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->d:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->n:Z

    return p1
.end method

.method private e()V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private e(F)V
    .locals 1

    .line 269
    iget v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->g:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 272
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->COLLAPSED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    .line 274
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->EXPANDED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private f(F)F
    .locals 3

    .line 422
    iget v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 423
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->k:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    sget-object v2, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->COLLAPSED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->j:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    sget-object v2, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->COLLAPSED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->k:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    sget-object v2, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->EXPANDED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    neg-float p1, p1

    .line 427
    iget v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->f:F

    div-float/2addr p1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :goto_2
    move v1, p1

    goto :goto_3

    .line 429
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->f:F

    div-float/2addr p1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_2

    .line 433
    :cond_3
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slide range is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->f:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 438
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private f()V
    .locals 5

    .line 406
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->o:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 409
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 410
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$PendingScroll;

    .line 413
    sget-object v2, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Run "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget v1, v1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$PendingScroll;->b:F

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->f(F)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->d(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->o:Z

    .line 150
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    const-string v1, "Captured()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(F)V
    .locals 3

    .line 116
    iput p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->m:F

    .line 117
    iget v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->m:F

    iget v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->f:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 125
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVerticalMinLimitRange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "range can\'t be grater than mSlideRange : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", Limit : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->m:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(J)V
    .locals 10

    .line 156
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expand() from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->i:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isCaptured : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->o:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->c(J)J

    move-result-wide v7

    .line 161
    iput-boolean v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->n:Z

    .line 162
    iget v4, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->i:F

    iget p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->g:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float v5, p2, p1

    iget-boolean v9, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->o:Z

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(FFFJZ)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$OnGestureSlideListener;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;Z)V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->k:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    if-eq v0, p1, :cond_4

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->k:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    sget-object v1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->EXPANDED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->k:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    sget-object v1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->COLLAPSED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    if-ne v0, v1, :cond_1

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->k:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->j:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    .line 216
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->k:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    .line 217
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->COLLAPSED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 218
    iput v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->g:F

    .line 219
    iput v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->i:F

    goto :goto_0

    .line 220
    :cond_2
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->EXPANDED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    if-ne p1, v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 221
    iput v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->g:F

    .line 222
    iput v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->i:F

    .line 226
    :cond_3
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySlideStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->c:Ljava/util/Set;

    .line 227
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->j:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    .line 229
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", notify : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5

    .line 233
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->j:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    iget-object p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->k:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)V

    goto :goto_1

    .line 236
    :cond_4
    sget-object p2, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State is not changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method public b(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    .line 134
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlideRange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->f:F

    return-void
.end method

.method public b(J)V
    .locals 7

    .line 166
    iget v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->i:F

    .line 167
    iget v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->g:F

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->c(J)J

    move-result-wide v4

    .line 171
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "collapse() from : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", to : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", isCaptured : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->o:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 175
    iput-boolean p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->n:Z

    .line 176
    iget-boolean v6, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->o:Z

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(FFFJZ)V

    return-void
.end method

.method public b()Z
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->d:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->b()V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->k:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    sget-object v1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->DRAGGING_PREPARED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->k:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    sget-object v1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->DRAGGING:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    if-ne v0, v1, :cond_0

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

.method public c(F)Z
    .locals 11

    .line 442
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->n:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 443
    iput-boolean v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->o:Z

    .line 444
    iput-boolean v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->p:Z

    .line 445
    iput-boolean v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->q:Z

    .line 446
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->e()V

    .line 447
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    const-string v0, "finishSlide ignored(can\'t notify event!)"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 450
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->q:Z

    if-eqz v0, :cond_1

    .line 451
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    const-string v0, "finishSlide ignored(already flinged)"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 454
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    const-string v0, "finishSlide ignored(finishing sliding currently)"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 459
    :cond_2
    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finish sliding velocity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", sliding rate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->i:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", prev state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->j:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    .line 460
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 459
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v0, 0x459c4000    # 5000.0f

    cmpl-float v0, v7, v0

    if-ltz v0, :cond_6

    const/4 v0, 0x0

    cmpg-float v3, p1, v0

    if-gez v3, :cond_4

    :cond_3
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    cmpl-float p1, p1, v0

    :cond_5
    const/4 p1, 0x0

    goto :goto_1

    .line 477
    :cond_6
    iget p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->i:F

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->j:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    sget-object v3, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->COLLAPSED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    if-eq p1, v3, :cond_3

    :cond_7
    iget p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->i:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->j:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    sget-object v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->EXPANDED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    if-ne p1, v0, :cond_5

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_8

    .line 482
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a:Ljava/lang/String;

    const-string v0, "expand() requested"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget v5, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->i:F

    iget p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->g:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const-wide/16 v8, 0x15e

    iget-boolean v10, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->o:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(FFFJZ)V

    goto :goto_2

    .line 488
    :cond_8
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a:Ljava/lang/String;

    const-string v0, "collapse() requested"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget v5, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->i:F

    iget v6, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->g:F

    const-wide/16 v8, 0x15e

    iget-boolean v10, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->o:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(FFFJZ)V

    .line 492
    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->o:Z

    .line 493
    iput-boolean v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->p:Z

    .line 494
    iput-boolean v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->q:Z

    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->k:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    sget-object v1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->DRAGGING_PREPARED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->k:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    sget-object v1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->DRAGGING:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    if-eq v0, v1, :cond_1

    .line 283
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 289
    iput v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->h:F

    .line 290
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->e:Landroid/view/MotionEvent;

    .line 291
    iput-boolean v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->q:Z

    .line 292
    iput-boolean v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->p:Z

    .line 293
    iput-boolean v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->n:Z

    .line 294
    iput-boolean v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->o:Z

    .line 299
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDown()  Slide range : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 284
    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    const-string v0, "Finishing sliding currently, ignore onDown callback!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 510
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFling(), vx : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", vy : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {p0, p4}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->c(F)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 314
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    const-string v0, "onLongPress()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 343
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->d()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 344
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    const-string p2, "Finishing sliding currently, ignore onScroll callback!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    :cond_0
    if-nez p1, :cond_1

    .line 349
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->e:Landroid/view/MotionEvent;

    .line 351
    sget-object p3, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    const-string v0, "motion event 1 is null!"

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_7

    if-nez p2, :cond_2

    goto/16 :goto_1

    .line 360
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->e:Landroid/view/MotionEvent;

    .line 362
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p3, v0

    .line 363
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    .line 364
    iput p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->h:F

    .line 365
    iget p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->h:F

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->f(F)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->i:F

    .line 369
    iget p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->i:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->l:F

    const/4 v1, 0x1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    iget p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->h:F

    .line 370
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->m:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 371
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 372
    iget-boolean p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->n:Z

    if-nez p1, :cond_3

    .line 373
    iput-boolean v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->n:Z

    .line 374
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->DRAGGING_PREPARED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)V

    .line 378
    :cond_3
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onScroll slide range : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->f:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", slide offset : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->h:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", slide rate : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->i:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", pending scroll size : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->r:Ljava/util/List;

    .line 381
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", vertical threshold : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->l:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", can notify event : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->n:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", is captured : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->o:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", prev slide state : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->j:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    .line 384
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", current slide state : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->k:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    .line 385
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 378
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-boolean p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->o:Z

    if-eqz p1, :cond_5

    .line 389
    iget-boolean p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->p:Z

    if-nez p1, :cond_4

    .line 390
    iput-boolean v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->p:Z

    .line 391
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->DRAGGING:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)V

    .line 393
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->f()V

    .line 394
    iget p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->i:F

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->d(F)V

    goto :goto_0

    .line 396
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->r:Ljava/util/List;

    iget p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->h:F

    invoke-static {p2}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$PendingScroll;->a(F)Lcom/samsung/android/app/music/widget/transition/SlideGestureController$PendingScroll;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->n:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->p:Z

    if-eqz p1, :cond_6

    const/4 p4, 0x1

    :cond_6
    return p4

    .line 356
    :cond_7
    :goto_1
    sget-object p3, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScroll motion event 1 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", event 2 : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p4
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 307
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    const-string v0, "onShowPress()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 501
    sget-object p1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b:Ljava/lang/String;

    const-string v0, "onSingleTapUp()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 504
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->c(F)Z

    move-result p1

    return p1
.end method
