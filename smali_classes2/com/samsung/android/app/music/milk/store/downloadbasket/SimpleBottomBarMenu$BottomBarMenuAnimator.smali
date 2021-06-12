.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BottomBarMenuAnimator"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->a:Ljava/util/List;

    .line 188
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->b:Ljava/util/Set;

    .line 190
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->c:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;)Ljava/util/Set;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->b:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;)Ljava/util/Set;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->c:Ljava/util/Set;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 315
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->b()V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 204
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 207
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v4, 0x12c

    .line 208
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v4, 0x85

    .line 209
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 210
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 211
    new-instance v4, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 220
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 223
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 224
    invoke-virtual {v4, v3}, Landroid/view/View;->setAlpha(F)V

    .line 225
    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleX(F)V

    .line 226
    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    .line 228
    :cond_1
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    .line 229
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v4, 0xa6

    .line 230
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 231
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 232
    new-instance v4, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 241
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-array v0, v0, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 244
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v1, 0x29a

    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 246
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->h:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 247
    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator$3;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 257
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 260
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 4

    .line 265
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->b()V

    const/4 v0, 0x2

    .line 267
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x85

    .line 268
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 269
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 270
    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator$4;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 284
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 287
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 288
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 289
    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator$5;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 306
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 309
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
