.class public Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:[I

.field private f:[I

.field private g:[I

.field private h:Z

.field private i:Landroid/graphics/Paint;

.field private j:Ljava/util/Random;

.field private k:Landroid/os/HandlerThread;

.field private l:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    .line 40
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    .line 42
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->f:[I

    .line 44
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->g:[I

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    .line 40
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    .line 42
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->f:[I

    .line 44
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->g:[I

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x3

    .line 40
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    .line 42
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->f:[I

    .line 44
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->g:[I

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->d()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->f()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->g()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_item_equalizer_animation_point_base_cx:I

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->a:I

    .line 76
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_item_equalizer_animation_point_base_cy:I

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->b:I

    .line 78
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_item_equalizer_animation_point_radius:I

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->c:I

    .line 80
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_item_equalizer_animation_point_gap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->d:I

    .line 82
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->i:Landroid/graphics/Paint;

    .line 83
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->i:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->i:Landroid/graphics/Paint;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$color;->mu_primary:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->j:Ljava/util/Random;

    return-void
.end method

.method private e()V
    .locals 6

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    aget v0, v0, v3

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    aget v0, v0, v2

    if-lez v0, :cond_1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    aput v1, v5, v2

    aput v1, v4, v3

    aput v1, v0, v1

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->invalidate()V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 2

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->h()V

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->postInvalidate()V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->l:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->a(I)V

    return-void
.end method

.method private g()V
    .locals 2

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->h()V

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->postInvalidate()V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    if-lez v0, :cond_1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->l:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->b(I)V

    :cond_1
    return-void
.end method

.method private h()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    .line 143
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->h:Z

    if-eqz v1, :cond_2

    .line 144
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->f:[I

    aget v2, v2, v0

    if-ge v1, v2, :cond_0

    .line 145
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    goto :goto_1

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->f:[I

    aget v2, v2, v0

    if-le v1, v2, :cond_1

    .line 147
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    goto :goto_1

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->f:[I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->j:Ljava/util/Random;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aput v2, v1, v0

    .line 150
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->g:[I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->f:[I

    aget v3, v3, v0

    sub-int/2addr v2, v3

    aput v2, v1, v0

    goto :goto_1

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->g:[I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->f:[I

    aget v3, v3, v0

    sub-int/2addr v2, v3

    aput v2, v1, v0

    .line 154
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    aget v1, v1, v0

    if-lez v1, :cond_3

    .line 155
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->k:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EqualizerAnimation"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->k:Landroid/os/HandlerThread;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 96
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->l:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;

    .line 98
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->h:Z

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->l:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->a()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->h:Z

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->l:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->h:Z

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->k:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->l:Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->c()V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->k:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 177
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    aget v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    const/4 v3, 0x2

    aget v0, v0, v3

    if-nez v0, :cond_0

    .line 180
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_3

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v5, 0xff

    .line 186
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e:[I

    aget v6, v6, v0

    if-ge v4, v6, :cond_2

    .line 187
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->g:[I

    aget v6, v6, v0

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->f:[I

    aget v6, v6, v0

    sub-int/2addr v6, v2

    if-lt v4, v6, :cond_1

    mul-int/lit8 v5, v4, 0x3c

    rsub-int v5, v5, 0xff

    .line 190
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->i:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 191
    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->a:I

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->d:I

    mul-int v7, v7, v0

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->b:I

    iget v8, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->d:I

    mul-int v8, v8, v4

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->c:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 163
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_1

    .line 165
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->h:Z

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->a()V

    goto :goto_0

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->e()V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->c()V

    :goto_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
