.class public Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;
.super Landroid/view/View;
.source "EqualizerAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:[I

.field public f:[I

.field public g:[I

.field public h:Z

.field public o:Landroid/graphics/Paint;

.field public p:Ljava/util/Random;

.field public q:Landroid/os/HandlerThread;

.field public r:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$a;

.field public s:Lcom/samsung/android/app/musiclibrary/ui/widget/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    new-array v0, p1, [I

    .line 2
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    new-array v0, p1, [I

    .line 3
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->f:[I

    new-array p1, p1, [I

    .line 4
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->g:[I

    .line 5
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/widget/c;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/c;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->s:Lcom/samsung/android/app/musiclibrary/ui/widget/c;

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->d()V

    .line 7
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->s:Lcom/samsung/android/app/musiclibrary/ui/widget/c;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/c;->w(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->j()V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->i()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    .line 1
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->h:Z

    if-eqz v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    aget v2, v1, v0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->f:[I

    aget v4, v3, v0

    if-ge v2, v4, :cond_0

    .line 3
    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    goto :goto_1

    .line 4
    :cond_0
    aget v2, v1, v0

    aget v4, v3, v0

    if-le v2, v4, :cond_1

    .line 5
    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    goto :goto_1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->p:Ljava/util/Random;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aput v1, v3, v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->g:[I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->f:[I

    aget v3, v3, v0

    sub-int/2addr v2, v3

    aput v2, v1, v0

    goto :goto_1

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->g:[I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    aget v3, v2, v0

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->f:[I

    aget v4, v4, v0

    sub-int/2addr v3, v4

    aput v3, v1, v0

    .line 9
    aget v1, v2, v0

    if-lez v1, :cond_3

    .line 10
    aget v1, v2, v0

    add-int/lit8 v1, v1, -0x1

    aput v1, v2, v0

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    sget v1, Lcom/samsung/android/app/musiclibrary/q;->j:I

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->a:I

    .line 4
    sget v1, Lcom/samsung/android/app/musiclibrary/q;->k:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->b:I

    .line 6
    sget v1, Lcom/samsung/android/app/musiclibrary/q;->m:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->c:I

    .line 8
    sget v1, Lcom/samsung/android/app/musiclibrary/q;->l:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->d:I

    .line 9
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->o:Landroid/graphics/Paint;

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->o:Landroid/graphics/Paint;

    sget v2, Lcom/samsung/android/app/musiclibrary/p;->l:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->p:Ljava/util/Random;

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->h:Z

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->r:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$a;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$a;->c()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-gtz v2, :cond_0

    aget v2, v0, v4

    if-gtz v2, :cond_0

    aget v2, v0, v3

    if-lez v2, :cond_1

    .line 2
    :cond_0
    aput v1, v0, v3

    aput v1, v0, v4

    aput v1, v0, v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->q:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EqualizerAnimation"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->q:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$a;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->q:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$a;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->r:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$a;

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->h:Z

    .line 7
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->r:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$a;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$a;->e()V

    :cond_1
    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->h:Z

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->q:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->r:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$a;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$a;->a()V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->q:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->q:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->c()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    aget v1, v0, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x2

    aget v0, v0, v1

    if-lez v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->r:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$a;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$a;->b(I)V

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->c()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->r:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$a;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$a;->d(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    aget v2, v0, v3

    if-nez v2, :cond_0

    const/4 v2, 0x2

    aget v0, v0, v2

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_3

    const/16 v2, 0xff

    move v4, v1

    move v5, v2

    .line 4
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    aget v6, v6, v0

    if-ge v4, v6, :cond_2

    .line 5
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->g:[I

    aget v6, v6, v0

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->f:[I

    aget v6, v6, v0

    sub-int/2addr v6, v3

    if-lt v4, v6, :cond_1

    mul-int/lit8 v5, v4, 0x3c

    rsub-int v5, v5, 0xff

    .line 6
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->o:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 7
    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->a:I

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->d:I

    mul-int v8, v7, v0

    add-int/2addr v6, v8

    int-to-float v6, v6

    iget v8, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->b:I

    mul-int/2addr v7, v4

    sub-int/2addr v8, v7

    int-to-float v7, v8

    iget v8, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->c:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->h:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->g()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->f()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->h()V

    :goto_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
