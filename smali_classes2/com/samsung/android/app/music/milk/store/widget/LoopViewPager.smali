.class public Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

.field private b:Z

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;

.field private i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 123
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->b:Z

    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->c:Z

    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->g:Z

    .line 198
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 124
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 27
    iput-boolean p2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->b:Z

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->c:Z

    .line 32
    iput-boolean p2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->g:Z

    .line 198
    new-instance p2, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 129
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    return-object p0
.end method

.method private a(I)V
    .locals 1

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->getCurrentItem()I

    move-result v0

    add-int/2addr v0, p1

    .line 195
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 133
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->i:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const/4 p1, 0x0

    .line 138
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setEnableAutoScroll(Z)V

    .line 139
    new-instance p1, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;-><init>(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->h:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;)I
    .locals 0

    .line 18
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p0

    return p0
.end method

.method private c()V
    .locals 4

    .line 183
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->f:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->h:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;->removeMessages(I)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->h:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private getLogTag()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoopViewPager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setEnableAutoScroll(Z)V
    .locals 1

    .line 143
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->f:Z

    .line 144
    iget-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->f:Z

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 145
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->e:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x5

    .line 146
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->e:I

    goto :goto_0

    .line 149
    :cond_0
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->e:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a(Z)V

    return-void
.end method

.method a(Z)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->g:Z

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAutoScroll, bySelf - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", scroll - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->g:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->g:Z

    if-eqz p1, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->c()V

    :cond_1
    return-void
.end method

.method public addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->d:Ljava/util/List;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->g:Z

    .line 178
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->h:Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager$LoopViewPagerHandler;->removeMessages(I)V

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopAutoScroll. scroll - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearOnPageChangeListeners()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 275
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->b()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a()V

    .line 283
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->b()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    :goto_0
    return-object v0
.end method

.method public getCurrentItem()I
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 1

    .line 73
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;-><init>(Landroid/support/v4/view/PagerAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    .line 74
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->b:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a(Z)V

    .line 75
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->c:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->b(Z)V

    .line 76
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const/4 p1, 0x0

    .line 77
    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setAutoScrollDuration(I)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->e:I

    const/4 p1, 0x1

    .line 155
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setEnableAutoScroll(Z)V

    return-void
.end method

.method public setBoundaryCaching(Z)V
    .locals 1

    .line 59
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->b:Z

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->a(Z)V

    :cond_0
    return-void
.end method

.method public setBoundaryLooping(Z)V
    .locals 1

    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->c:Z

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->b(Z)V

    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->getCurrentItem()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->a:Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->b(I)I

    move-result p1

    .line 90
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method
