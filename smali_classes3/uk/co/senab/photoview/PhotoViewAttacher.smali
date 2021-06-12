.class public Luk/co/senab/photoview/PhotoViewAttacher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Luk/co/senab/photoview/IPhotoView;
.implements Luk/co/senab/photoview/gestures/OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;,
        Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;,
        Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;,
        Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;,
        Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;,
        Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;
    }
.end annotation


# static fields
.field private static synthetic D:[I

.field static final a:Landroid/view/animation/Interpolator;

.field private static final c:Z


# instance fields
.field private A:I

.field private B:Z

.field private C:Landroid/widget/ImageView$ScaleType;

.field b:I

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/view/GestureDetector;

.field private k:Luk/co/senab/photoview/gestures/GestureDetector;

.field private final l:Landroid/graphics/Matrix;

.field private final m:Landroid/graphics/Matrix;

.field private final n:Landroid/graphics/Matrix;

.field private final o:Landroid/graphics/RectF;

.field private final p:[F

.field private q:Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

.field private r:Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

.field private s:Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

.field private t:Landroid/view/View$OnLongClickListener;

.field private u:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "PhotoViewAttacher"

    const/4 v1, 0x3

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Luk/co/senab/photoview/PhotoViewAttacher;->c:Z

    .line 58
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Luk/co/senab/photoview/PhotoViewAttacher;->a:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x1

    .line 152
    invoke-direct {p0, p1, v0}, Luk/co/senab/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .locals 2

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 59
    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->d:F

    const/high16 v0, 0x3fe00000    # 1.75f

    .line 67
    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->e:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 68
    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->f:F

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->g:Z

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->h:Z

    .line 131
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->l:Landroid/graphics/Matrix;

    .line 132
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->m:Landroid/graphics/Matrix;

    .line 133
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->n:Landroid/graphics/Matrix;

    .line 134
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->o:Landroid/graphics/RectF;

    const/16 v1, 0x9

    .line 135
    new-array v1, v1, [F

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->p:[F

    const/4 v1, 0x2

    .line 146
    iput v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->A:I

    .line 149
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->C:Landroid/widget/ImageView$ScaleType;

    .line 156
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->i:Ljava/lang/ref/WeakReference;

    .line 158
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 159
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 161
    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 166
    :cond_0
    invoke-static {p1}, Luk/co/senab/photoview/PhotoViewAttacher;->b(Landroid/widget/ImageView;)V

    .line 168
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 173
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 172
    invoke-static {v0, p0}, Luk/co/senab/photoview/gestures/VersionedGestureDetector;->a(Landroid/content/Context;Luk/co/senab/photoview/gestures/OnGestureListener;)Luk/co/senab/photoview/gestures/GestureDetector;

    move-result-object v0

    iput-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->k:Luk/co/senab/photoview/gestures/GestureDetector;

    .line 175
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 176
    new-instance v1, Luk/co/senab/photoview/PhotoViewAttacher$1;

    invoke-direct {v1, p0}, Luk/co/senab/photoview/PhotoViewAttacher$1;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 175
    iput-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->j:Landroid/view/GestureDetector;

    .line 187
    iget-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->j:Landroid/view/GestureDetector;

    new-instance v0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;

    invoke-direct {v0, p0}, Luk/co/senab/photoview/DefaultOnDoubleTapListener;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;)V

    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 190
    invoke-virtual {p0, p2}, Luk/co/senab/photoview/PhotoViewAttacher;->b(Z)V

    return-void
.end method

.method private a(Landroid/graphics/Matrix;I)F
    .locals 1

    .line 831
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->p:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 832
    iget-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->p:[F

    aget p1, p1, p2

    return p1
.end method

.method static synthetic a(Luk/co/senab/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .locals 0

    .line 133
    iget-object p0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->n:Landroid/graphics/Matrix;

    return-object p0
.end method

.method private a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .line 792
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 797
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->o:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 798
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    .line 797
    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 799
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->o:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 800
    iget-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->o:Landroid/graphics/RectF;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    .line 867
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 872
    :cond_0
    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->c(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    .line 873
    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->d(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    .line 874
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 875
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 877
    iget-object v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->l:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, v2

    div-float v3, v1, v2

    int-to-float p1, p1

    div-float v4, v0, p1

    .line 882
    iget-object v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->C:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1

    .line 883
    iget-object v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->l:Landroid/graphics/Matrix;

    sub-float/2addr v1, v2

    div-float/2addr v1, v7

    sub-float/2addr v0, p1

    div-float/2addr v0, v7

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 886
    :cond_1
    iget-object v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->C:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_2

    .line 887
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 888
    iget-object v4, p0, Luk/co/senab/photoview/PhotoViewAttacher;->l:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 889
    iget-object v4, p0, Luk/co/senab/photoview/PhotoViewAttacher;->l:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v7

    mul-float p1, p1, v3

    sub-float/2addr v0, p1

    div-float/2addr v0, v7

    invoke-virtual {v4, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 892
    :cond_2
    iget-object v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->C:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    .line 893
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 894
    iget-object v4, p0, Luk/co/senab/photoview/PhotoViewAttacher;->l:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 895
    iget-object v4, p0, Luk/co/senab/photoview/PhotoViewAttacher;->l:Landroid/graphics/Matrix;

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v7

    mul-float p1, p1, v3

    sub-float/2addr v0, p1

    div-float/2addr v0, v7

    invoke-virtual {v4, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 899
    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 900
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1, v4, v4, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 902
    invoke-static {}, Luk/co/senab/photoview/PhotoViewAttacher;->o()[I

    move-result-object v0

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->C:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 917
    :pswitch_0
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->l:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 909
    :pswitch_1
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->l:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 913
    :pswitch_2
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->l:Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 904
    :pswitch_3
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->l:Landroid/graphics/Matrix;

    .line 905
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v3, p1, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 925
    :goto_0
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->t()V

    return-void

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)V
    .locals 0

    .line 844
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->b(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private static a(Landroid/widget/ImageView;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Luk/co/senab/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 141
    iget-object p0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->t:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method private static b(FFF)V
    .locals 0

    cmpl-float p0, p0, p1

    if-gez p0, :cond_1

    cmpl-float p0, p1, p2

    if-gez p0, :cond_0

    return-void

    .line 79
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MidZoom has to be less than MaxZoom"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MinZoom has to be less than MidZoom"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b(Landroid/graphics/Matrix;)V
    .locals 1

    .line 845
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 848
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->r()V

    .line 849
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 852
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->q:Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    if-eqz v0, :cond_0

    .line 853
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 855
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->q:Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    invoke-interface {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;->a(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method private static b(Landroid/widget/ImageView;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 117
    instance-of v0, p0, Luk/co/senab/photoview/IPhotoView;

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method private c(Landroid/widget/ImageView;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 931
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private d(Landroid/widget/ImageView;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 937
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method static synthetic n()Z
    .locals 1

    .line 56
    sget-boolean v0, Luk/co/senab/photoview/PhotoViewAttacher;->c:Z

    return v0
.end method

.method static synthetic o()[I
    .locals 3

    .line 48
    sget-object v0, Luk/co/senab/photoview/PhotoViewAttacher;->D:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    sput-object v0, Luk/co/senab/photoview/PhotoViewAttacher;->D:[I

    return-object v0
.end method

.method private p()V
    .locals 1

    .line 693
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->z:Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->z:Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;->a()V

    const/4 v0, 0x0

    .line 695
    iput-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->z:Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

    :cond_0
    return-void
.end method

.method private q()V
    .locals 1

    .line 703
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->l()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->b(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 2

    .line 709
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 715
    instance-of v1, v0, Luk/co/senab/photoview/IPhotoView;

    if-nez v1, :cond_1

    .line 716
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 717
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ImageView\'s ScaleType has been changed since attaching a PhotoViewAttacher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private s()Z
    .locals 10

    .line 724
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->c()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 729
    :cond_0
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->l()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-direct {p0, v2}, Luk/co/senab/photoview/PhotoViewAttacher;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 734
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 737
    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->d(Landroid/widget/ImageView;)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    cmpg-float v8, v3, v5

    if-gtz v8, :cond_2

    .line 739
    invoke-static {}, Luk/co/senab/photoview/PhotoViewAttacher;->o()[I

    move-result-object v8

    iget-object v9, p0, Luk/co/senab/photoview/PhotoViewAttacher;->C:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    sub-float/2addr v5, v3

    div-float/2addr v5, v6

    .line 747
    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float v3, v5, v3

    goto :goto_0

    .line 741
    :pswitch_0
    iget v3, v2, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    goto :goto_0

    :pswitch_1
    sub-float/2addr v5, v3

    .line 744
    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float v3, v5, v3

    goto :goto_0

    .line 750
    :cond_2
    iget v3, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_3

    .line 751
    iget v3, v2, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    goto :goto_0

    .line 752
    :cond_3
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_4

    .line 753
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v5, v3

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 756
    :goto_0
    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->c(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    const/4 v5, 0x1

    cmpg-float v8, v4, v0

    if-gtz v8, :cond_5

    .line 758
    invoke-static {}, Luk/co/senab/photoview/PhotoViewAttacher;->o()[I

    move-result-object v1

    iget-object v7, p0, Luk/co/senab/photoview/PhotoViewAttacher;->C:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v7

    aget v1, v1, v7

    packed-switch v1, :pswitch_data_1

    sub-float/2addr v0, v4

    div-float/2addr v0, v6

    .line 766
    iget v1, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    :goto_1
    move v7, v0

    goto :goto_2

    .line 760
    :pswitch_2
    iget v0, v2, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_1

    :pswitch_3
    sub-float/2addr v0, v4

    .line 763
    iget v1, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    goto :goto_1

    :goto_2
    const/4 v0, 0x2

    .line 769
    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->A:I

    goto :goto_3

    .line 770
    :cond_5
    iget v4, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_6

    .line 771
    iput v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->A:I

    .line 772
    iget v0, v2, Landroid/graphics/RectF;->left:F

    neg-float v7, v0

    goto :goto_3

    .line 773
    :cond_6
    iget v1, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_7

    .line 774
    iget v1, v2, Landroid/graphics/RectF;->right:F

    sub-float v7, v0, v1

    .line 775
    iput v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->A:I

    goto :goto_3

    :cond_7
    const/4 v0, -0x1

    .line 777
    iput v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->A:I

    .line 781
    :goto_3
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v7, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v5

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private t()V
    .locals 1

    .line 839
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 840
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->l()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->b(Landroid/graphics/Matrix;)V

    .line 841
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->s()Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 220
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->i:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 229
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 234
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 237
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->p()V

    .line 240
    :cond_2
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->j:Landroid/view/GestureDetector;

    if-eqz v0, :cond_3

    .line 241
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->j:Landroid/view/GestureDetector;

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 245
    :cond_3
    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->q:Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .line 246
    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->r:Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .line 247
    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->s:Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    .line 250
    iput-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->i:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(F)V
    .locals 2

    .line 540
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->e:F

    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->f:F

    invoke-static {p1, v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->b(FFF)V

    .line 541
    iput p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->d:F

    return-void
.end method

.method public a(FF)V
    .locals 8

    .line 361
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->k:Luk/co/senab/photoview/gestures/GestureDetector;

    invoke-interface {v0}, Luk/co/senab/photoview/gestures/GestureDetector;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 365
    :cond_0
    sget-boolean v0, Luk/co/senab/photoview/PhotoViewAttacher;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 366
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->a()Luk/co/senab/photoview/log/Logger;

    move-result-object v0

    const-string v4, "PhotoViewAttacher"

    const-string v5, "onDrag: dx: %.2f. dy: %.2f"

    .line 367
    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 366
    invoke-interface {v0, v4, v5}, Luk/co/senab/photoview/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_1
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 371
    iget-object v4, p0, Luk/co/senab/photoview/PhotoViewAttacher;->n:Landroid/graphics/Matrix;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 372
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->q()V

    .line 383
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 384
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->g:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->k:Luk/co/senab/photoview/gestures/GestureDetector;

    invoke-interface {v0}, Luk/co/senab/photoview/gestures/GestureDetector;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->h:Z

    if-nez v0, :cond_4

    .line 385
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->A:I

    if-eq v0, v2, :cond_3

    .line 386
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->A:I

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_3

    .line 387
    :cond_2
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->A:I

    if-ne v0, v3, :cond_5

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_5

    :cond_3
    if-eqz p2, :cond_5

    .line 389
    invoke-interface {p2, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 393
    invoke-interface {p2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public a(FFF)V
    .locals 6

    .line 451
    sget-boolean v0, Luk/co/senab/photoview/PhotoViewAttacher;->c:Z

    if-eqz v0, :cond_0

    .line 452
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->a()Luk/co/senab/photoview/log/Logger;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    const-string v2, "onScale: scale: %.2f. fX: %.2f. fY: %.2f"

    const/4 v3, 0x3

    .line 454
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 455
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    .line 454
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 452
    invoke-interface {v0, v1, v2}, Luk/co/senab/photoview/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_0
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->g()F

    move-result v0

    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->f:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    .line 459
    :cond_1
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->u:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->u:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

    invoke-interface {v0, p1, p2, p3}, Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;->a(FFF)V

    .line 462
    :cond_2
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 463
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->q()V

    :cond_3
    return-void
.end method

.method public a(FFFF)V
    .locals 4

    .line 401
    sget-boolean v0, Luk/co/senab/photoview/PhotoViewAttacher;->c:Z

    if-eqz v0, :cond_0

    .line 402
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->a()Luk/co/senab/photoview/log/Logger;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onFling. sX: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " sY: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " Vx: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " Vy: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 402
    invoke-interface {v0, v1, p1}, Luk/co/senab/photoview/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->c()Landroid/widget/ImageView;

    move-result-object p1

    .line 408
    new-instance p2, Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;Landroid/content/Context;)V

    iput-object p2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->z:Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

    .line 409
    iget-object p2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->z:Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->c(Landroid/widget/ImageView;)I

    move-result v0

    .line 410
    invoke-direct {p0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->d(Landroid/widget/ImageView;)I

    move-result v1

    float-to-int p3, p3

    float-to-int p4, p4

    .line 409
    invoke-virtual {p2, v0, v1, p3, p4}, Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;->a(IIII)V

    .line 411
    iget-object p2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->z:Luk/co/senab/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(FFFZ)V
    .locals 8

    .line 626
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 630
    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->d:F

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_2

    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->f:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 639
    new-instance p4, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->g()F

    move-result v4

    move-object v2, p4

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, p3

    .line 640
    invoke-direct/range {v2 .. v7}, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;FFFF)V

    .line 639
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 642
    :cond_1
    iget-object p4, p0, Luk/co/senab/photoview/PhotoViewAttacher;->n:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 643
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->q()V

    goto :goto_1

    .line 632
    :cond_2
    :goto_0
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->a()Luk/co/senab/photoview/log/Logger;

    move-result-object p1

    const-string p2, "PhotoViewAttacher"

    const-string p3, "Scale must be within the range of minScale and maxScale"

    .line 633
    invoke-interface {p1, p2, p3}, Luk/co/senab/photoview/log/Logger;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public a(FZ)V
    .locals 2

    .line 613
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 618
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 616
    invoke-virtual {p0, p1, v1, v0, p2}, Luk/co/senab/photoview/PhotoViewAttacher;->a(FFFZ)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    if-gez p1, :cond_0

    const/16 p1, 0xc8

    .line 815
    :cond_0
    iput p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->b:I

    return-void
.end method

.method public a(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 196
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->j:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->j:Landroid/view/GestureDetector;

    new-instance v0, Luk/co/senab/photoview/DefaultOnDoubleTapListener;

    invoke-direct {v0, p0}, Luk/co/senab/photoview/DefaultOnDoubleTapListener;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;)V

    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 578
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->t:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public a(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 0

    .line 583
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->q:Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    return-void
.end method

.method public a(Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 0

    .line 588
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->r:Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    return-void
.end method

.method public a(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;)V
    .locals 0

    .line 204
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->u:Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

    return-void
.end method

.method public a(Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 0

    .line 598
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->s:Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 529
    iput-boolean p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->g:Z

    return-void
.end method

.method public b()Landroid/graphics/RectF;
    .locals 1

    .line 255
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->s()Z

    .line 256
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->l()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->a(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public b(F)V
    .locals 2

    .line 552
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->d:F

    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->f:F

    invoke-static {v0, p1, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->b(FFF)V

    .line 553
    iput p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->e:F

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 660
    iput-boolean p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->B:Z

    .line 661
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->j()V

    return-void
.end method

.method public c()Landroid/widget/ImageView;
    .locals 4

    .line 302
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->i:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 308
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->a()V

    .line 309
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->a()Luk/co/senab/photoview/log/Logger;

    move-result-object v1

    const-string v2, "PhotoViewAttacher"

    const-string v3, "ImageView no longer exists. You should not use this PhotoViewAttacher any more."

    invoke-interface {v1, v2, v3}, Luk/co/senab/photoview/log/Logger;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public c(F)V
    .locals 2

    .line 564
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->d:F

    iget v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->e:F

    invoke-static {v0, v1, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->b(FFF)V

    .line 565
    iput p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->f:F

    return-void
.end method

.method public d()F
    .locals 1

    .line 324
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->d:F

    return v0
.end method

.method public d(F)V
    .locals 1

    const/4 v0, 0x0

    .line 608
    invoke-virtual {p0, p1, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->a(FZ)V

    return-void
.end method

.method public e()F
    .locals 1

    .line 335
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->e:F

    return v0
.end method

.method public f()F
    .locals 1

    .line 346
    iget v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->f:F

    return v0
.end method

.method public g()F
    .locals 6

    .line 351
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->n:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Luk/co/senab/photoview/PhotoViewAttacher;->a(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->n:Landroid/graphics/Matrix;

    const/4 v4, 0x3

    invoke-direct {p0, v1, v4}, Luk/co/senab/photoview/PhotoViewAttacher;->a(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public h()Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;
    .locals 1

    .line 593
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->r:Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    return-object v0
.end method

.method public i()Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;
    .locals 1

    .line 603
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->s:Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    return-object v0
.end method

.method public j()V
    .locals 2

    .line 665
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 668
    iget-boolean v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->B:Z

    if-eqz v1, :cond_0

    .line 670
    invoke-static {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->b(Landroid/widget/ImageView;)V

    .line 673
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 676
    :cond_0
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->t()V

    :cond_1
    :goto_0
    return-void
.end method

.method public k()Landroid/graphics/Matrix;
    .locals 2

    .line 683
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->l()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public l()Landroid/graphics/Matrix;
    .locals 2

    .line 687
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->m:Landroid/graphics/Matrix;

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->l:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 688
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->m:Landroid/graphics/Matrix;

    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->n:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 689
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->m:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public m()Landroid/graphics/Bitmap;
    .locals 1

    .line 807
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 808
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onGlobalLayout()V
    .locals 6

    .line 416
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 419
    iget-boolean v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->B:Z

    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    .line 421
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    .line 422
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v3

    .line 423
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v4

    .line 432
    iget v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->v:I

    if-ne v1, v5, :cond_0

    iget v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->x:I

    if-ne v3, v5, :cond_0

    iget v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->y:I

    if-ne v4, v5, :cond_0

    .line 433
    iget v5, p0, Luk/co/senab/photoview/PhotoViewAttacher;->w:I

    if-eq v2, v5, :cond_2

    .line 435
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->a(Landroid/graphics/drawable/Drawable;)V

    .line 438
    iput v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->v:I

    .line 439
    iput v2, p0, Luk/co/senab/photoview/PhotoViewAttacher;->w:I

    .line 440
    iput v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->x:I

    .line 441
    iput v4, p0, Luk/co/senab/photoview/PhotoViewAttacher;->y:I

    goto :goto_0

    .line 444
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/senab/photoview/PhotoViewAttacher;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 472
    iget-boolean v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->B:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->a(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 473
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 474
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz v0, :cond_0

    .line 479
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 481
    :cond_0
    invoke-static {}, Luk/co/senab/photoview/log/LogManager;->a()Luk/co/senab/photoview/log/Logger;

    move-result-object p1

    const-string v0, "PhotoViewAttacher"

    const-string v3, "onTouch getParent() returned null"

    invoke-interface {p1, v0, v3}, Luk/co/senab/photoview/log/Logger;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :goto_0
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->p()V

    goto :goto_1

    .line 493
    :cond_1
    :pswitch_1
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->g()F

    move-result v0

    iget v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->d:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    .line 494
    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->b()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 496
    new-instance v9, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Luk/co/senab/photoview/PhotoViewAttacher;->g()F

    move-result v5

    iget v6, p0, Luk/co/senab/photoview/PhotoViewAttacher;->d:F

    .line 497
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Luk/co/senab/photoview/PhotoViewAttacher;FFFF)V

    .line 496
    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 505
    :goto_2
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->k:Luk/co/senab/photoview/gestures/GestureDetector;

    if-eqz v0, :cond_6

    .line 506
    iget-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->k:Luk/co/senab/photoview/gestures/GestureDetector;

    invoke-interface {p1}, Luk/co/senab/photoview/gestures/GestureDetector;->a()Z

    move-result p1

    .line 507
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->k:Luk/co/senab/photoview/gestures/GestureDetector;

    invoke-interface {v0}, Luk/co/senab/photoview/gestures/GestureDetector;->b()Z

    move-result v0

    .line 509
    iget-object v3, p0, Luk/co/senab/photoview/PhotoViewAttacher;->k:Luk/co/senab/photoview/gestures/GestureDetector;

    invoke-interface {v3, p2}, Luk/co/senab/photoview/gestures/GestureDetector;->c(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez p1, :cond_3

    .line 511
    iget-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->k:Luk/co/senab/photoview/gestures/GestureDetector;

    invoke-interface {p1}, Luk/co/senab/photoview/gestures/GestureDetector;->a()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-nez v0, :cond_4

    .line 512
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher;->k:Luk/co/senab/photoview/gestures/GestureDetector;

    invoke-interface {v0}, Luk/co/senab/photoview/gestures/GestureDetector;->b()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    .line 514
    :cond_5
    iput-boolean v1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->h:Z

    move v1, v3

    goto :goto_5

    :cond_6
    move v1, p1

    .line 518
    :goto_5
    iget-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->j:Landroid/view/GestureDetector;

    if-eqz p1, :cond_7

    iget-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher;->j:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
