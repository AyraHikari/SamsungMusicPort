.class public Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;
.super Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;,
        Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior<",
        "Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;",
        ">;"
    }
.end annotation


# static fields
.field static final d:Landroid/view/animation/Interpolator;

.field private static final e:Ljava/lang/String; = "ParallaxHeaderScrollBehavior"


# instance fields
.field c:Landroid/support/v4/widget/ScrollerCompat;

.field private f:Z

.field private g:Landroid/view/View;

.field private h:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

.field private i:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

.field private j:Landroid/support/design/widget/CoordinatorLayout;

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 443
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->d:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->m:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->m:Z

    .line 54
    sget-object p1, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParallaxHeaderScrollBehavior. attrs - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;)Landroid/view/View;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->g:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->m:Z

    return p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->e:Ljava/lang/String;

    return-object v0
.end method

.method private d(Landroid/view/View;)Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;
    .locals 4

    .line 401
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    if-eqz v0, :cond_0

    .line 402
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    return-object p1

    .line 406
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    .line 411
    :cond_1
    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-nez v0, :cond_7

    if-eqz v0, :cond_2

    goto :goto_2

    .line 415
    :cond_2
    instance-of v0, p1, Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_3

    .line 416
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 417
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    .line 418
    instance-of v3, v2, Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;

    if-eqz v3, :cond_3

    .line 419
    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/milk/store/widget/ViewPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 420
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->d(Landroid/view/View;)Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    move-result-object p1

    return-object p1

    .line 424
    :cond_3
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 425
    check-cast p1, Landroid/view/ViewGroup;

    .line 426
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    .line 428
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 429
    instance-of v3, v3, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    if-eqz v3, :cond_4

    goto :goto_1

    .line 432
    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->d(Landroid/view/View;)Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    move-result-object v3

    if-eqz v3, :cond_5

    return-object v3

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-object v1

    :cond_7
    :goto_2
    return-object v1
.end method


# virtual methods
.method bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)V

    return-void
.end method

.method a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)V
    .locals 0

    .line 180
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    .line 181
    sget-object p1, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->e:Ljava/lang/String;

    const-string p2, "onFlingFinished."

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;F)V
    .locals 10

    .line 149
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->k:Ljava/lang/Runnable;

    if-eqz p3, :cond_0

    .line 150
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->k:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p3, 0x0

    .line 151
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->k:Ljava/lang/Runnable;

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    .line 155
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p4

    if-gez v0, :cond_1

    .line 156
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p4, p3

    .line 157
    sget-object p3, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchFling. new velocityY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->c:Landroid/support/v4/widget/ScrollerCompat;

    if-nez p3, :cond_2

    .line 161
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->d:Landroid/view/animation/Interpolator;

    invoke-static {p3, v0}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->c:Landroid/support/v4/widget/ScrollerCompat;

    .line 164
    :cond_2
    sget-object p3, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchFling. velocityY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->c:Landroid/support/v4/widget/ScrollerCompat;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 167
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    .line 166
    invoke-virtual/range {v1 .. v9}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 170
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {p3}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 171
    new-instance p3, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;

    invoke-direct {p3, p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;-><init>(Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)V

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->k:Ljava/lang/Runnable;

    .line 172
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->k:Ljava/lang/Runnable;

    invoke-static {p2, p1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 174
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;IIII)V
    .locals 6

    .line 217
    invoke-super/range {p0 .. p7}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    .line 219
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->g:Landroid/view/View;

    .line 221
    sget-object p3, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->e:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "onNestedScroll : dyConsumed - "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", dyUnconsumed - "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p7, :cond_0

    .line 226
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result p3

    neg-int v4, p3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    const/4 p1, 0x1

    .line 228
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->f:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 231
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->f:Z

    :goto_0
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;II[I)V
    .locals 6

    .line 246
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->g:Landroid/view/View;

    if-eqz p5, :cond_0

    .line 247
    iget-boolean p3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->f:Z

    if-nez p3, :cond_0

    const/4 p3, 0x1

    .line 248
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result p4

    neg-int v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    aput p1, p6, p3

    :cond_0
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 3

    .line 59
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNestedScrollAccepted. target - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", directTargetChild - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onNestedScrollAccepted(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;)V
    .locals 3

    .line 136
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchGoToTop. runnable - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->l:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->m:Z

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->l:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->l:Ljava/lang/Runnable;

    .line 142
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;-><init>(Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->l:Ljava/lang/Runnable;

    .line 144
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->l:Ljava/lang/Runnable;

    invoke-static {p2, p1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;I)Z
    .locals 5

    .line 267
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->j:Landroid/support/design/widget/CoordinatorLayout;

    .line 268
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p3

    .line 271
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getPendingAction()I

    move-result v0

    .line 272
    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLayoutChild. pendingAction - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->j:Landroid/support/design/widget/CoordinatorLayout;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->d(Landroid/view/View;)Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->h:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    sget-object v2, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLayoutChild. old - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->h:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", new - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->h:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    :cond_0
    if-eqz v0, :cond_1

    and-int/lit8 v1, v0, 0x4

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->h:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->h:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;)V

    .line 289
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->a()V

    return p3
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;IIII)Z
    .locals 6

    .line 102
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 103
    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 p5, 0x0

    .line 109
    invoke-static {p5, p5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    .line 108
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    const/4 p1, 0x1

    return p1

    .line 114
    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 65
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->e:Ljava/lang/String;

    const-string v1, "onRequestChildRectangleOnScreen"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onRequestChildRectangleOnScreen(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method protected a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->h:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->h:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 191
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;)Z
    .locals 3

    .line 71
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDependentViewChanged. dep - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;FF)Z
    .locals 3

    .line 129
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNestedPreFling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;F)V

    .line 131
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;FFZ)Z
    .locals 3

    .line 121
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNestedFling. velocityY - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", consumed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic a(Landroid/view/View;)Z
    .locals 0

    .line 24
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a(Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)Z

    move-result p1

    return p1
.end method

.method protected a(Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)Z
    .locals 3

    .line 196
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->i:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .line 198
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->h:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->i:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .line 200
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a()I

    move-result v0

    add-int/2addr p1, v0

    .line 201
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canDragView. current - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->h:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->h:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    const/4 v1, -0x1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;->a(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method bridge synthetic b(Landroid/view/View;)I
    .locals 0

    .line 24
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->b(Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)I

    move-result p1

    return p1
.end method

.method b(Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)I
    .locals 0

    .line 211
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;)V
    .locals 0

    .line 238
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 239
    sget-object p1, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->e:Ljava/lang/String;

    const-string p2, "onStopNestedScroll. "

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 240
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->m:Z

    return-void
.end method

.method protected b(I)Z
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->h:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->i:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->h:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    .line 256
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->i:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .line 257
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a()I

    move-result v2

    add-int/2addr v1, v2

    .line 259
    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;->a(II)Z

    move-result p1

    return p1

    .line 261
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->b(I)Z

    move-result p1

    return p1
.end method

.method protected synthetic b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 24
    check-cast p2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    .line 78
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->i:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_2

    .line 80
    sget-object p1, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->e:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onStartNestedScroll : height - "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", range - "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " top - "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a()I

    move-result p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 80
    invoke-static {p1, p3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->m:Z

    .line 84
    instance-of p3, p4, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    if-eqz p3, :cond_0

    .line 85
    move-object p3, p4

    check-cast p3, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->h:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    .line 87
    sget-object p3, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->e:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStartNestedScroll. new scrollable - "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->h:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    instance-of p3, p4, Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    if-eqz p3, :cond_1

    .line 90
    check-cast p4, Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    invoke-interface {p4, p2}, Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;->a(Lcom/samsung/android/app/music/milk/store/widget/Expandable;)V

    :cond_1
    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected c(I)V
    .locals 2

    .line 296
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->c(I)V

    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->i:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->i:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->a(I)V

    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->g:Landroid/view/View;

    instance-of v0, v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->g:Landroid/view/View;

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->i:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;->b(II)V

    :cond_0
    return-void
.end method

.method public synthetic onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 24
    check-cast p2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 24
    check-cast p2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;I)Z

    move-result p1

    return p1
.end method

.method public synthetic onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 7

    .line 24
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public synthetic onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 7

    .line 24
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public synthetic onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 6

    .line 24
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public synthetic onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 7

    .line 24
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;II[I)V

    return-void
.end method

.method public synthetic onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 8

    .line 24
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;IIII)V

    return-void
.end method

.method public synthetic onNestedScrollAccepted(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 6

    .line 24
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public synthetic onRequestChildRectangleOnScreen(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    .line 24
    check-cast p2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public synthetic onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 6

    .line 24
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public synthetic onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;)V

    return-void
.end method
