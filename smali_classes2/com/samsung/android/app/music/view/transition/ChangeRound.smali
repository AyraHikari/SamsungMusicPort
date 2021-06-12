.class public Lcom/samsung/android/app/music/view/transition/ChangeRound;
.super Landroid/transition/Transition;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "ChangeRound"

.field private static final b:[Ljava/lang/String;


# instance fields
.field private final c:I

.field private final d:I

.field private final e:I

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

.field private h:Landroid/graphics/ColorFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, " com.sec.android.app.music:changeRound:bound"

    const-string v1, "com.sec.android.app.music:changeRound:round"

    const-string v2, "com.sec.android.app.music:changeRound:imageSize"

    .line 41
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, -0x1

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/view/transition/ChangeRound;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 56
    iput p1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->c:I

    .line 57
    iput p2, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->d:I

    .line 58
    iput p3, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->e:I

    return-void
.end method

.method private a(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 12

    .line 175
    iget-object v0, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 178
    :cond_0
    iget-object v0, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 179
    iget-object v2, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->f:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    return-object v1

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->h:Landroid/graphics/ColorFilter;

    .line 184
    iget-object v1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->f:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->f:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    iput-object v1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->g:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    goto :goto_0

    .line 186
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->f:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v1, :cond_3

    .line 187
    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 188
    iget-object v2, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->f:Landroid/graphics/drawable/Drawable;

    const v3, 0x7f1000b6

    .line 190
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 189
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 188
    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->g:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    goto :goto_0

    .line 192
    :cond_3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 193
    iget-object v2, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->f:Landroid/graphics/drawable/Drawable;

    .line 194
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->g:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .line 196
    :goto_0
    iget v1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 197
    iget-object v1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->g:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    iget v2, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->e:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 200
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    .line 201
    iget-object v2, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    .line 203
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/view/transition/ChangeRound;->a(Landroid/transition/TransitionValues;)I

    move-result v3

    .line 204
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/view/transition/ChangeRound;->b(Landroid/transition/TransitionValues;)I

    move-result v4

    .line 206
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, " com.sec.android.app.music:changeRound:bound"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 207
    iget-object p2, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, " com.sec.android.app.music:changeRound:bound"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    .line 208
    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 209
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 210
    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    .line 211
    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    iget v9, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 213
    sget-object v9, Lcom/samsung/android/app/music/view/transition/ChangeRound;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Start round : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", End round : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", Start bound : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", End bound : "

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, v3

    .line 217
    invoke-static {v5, v6, v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->calibrateRound(FFFFF)F

    move-result p1

    int-to-float p2, v4

    .line 218
    invoke-static {v7, v8, v1, v2, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter;->calibrateRound(FFFFF)F

    move-result p2

    .line 220
    new-instance v1, Lcom/samsung/android/app/music/view/transition/ChangeRound$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/view/transition/ChangeRound$4;-><init>(Lcom/samsung/android/app/music/view/transition/ChangeRound;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 231
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, p1

    .line 220
    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 232
    new-instance v1, Lcom/samsung/android/app/music/view/transition/ChangeRound$5;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/view/transition/ChangeRound$5;-><init>(Lcom/samsung/android/app/music/view/transition/ChangeRound;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 247
    new-instance v1, Lcom/samsung/android/app/music/view/transition/ChangeRound$6;

    invoke-direct {v1, p0, p2, v0}, Lcom/samsung/android/app/music/view/transition/ChangeRound$6;-><init>(Lcom/samsung/android/app/music/view/transition/ChangeRound;FLandroid/widget/ImageView;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 259
    sget-object p2, Lcom/samsung/android/app/music/view/transition/ChangeRound;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createRoundedDrawableAnimator animator : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private a(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 6

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getClipToOutline()Z

    move-result v0

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v1

    .line 131
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;

    invoke-direct {v2, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;-><init>(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v2, 0x1

    .line 132
    invoke-virtual {p1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 134
    new-instance v3, Lcom/samsung/android/app/music/view/transition/ChangeRound$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/view/transition/ChangeRound$1;-><init>(Lcom/samsung/android/app/music/view/transition/ChangeRound;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 145
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v4, v2

    .line 134
    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 146
    new-instance p3, Lcom/samsung/android/app/music/view/transition/ChangeRound$2;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/app/music/view/transition/ChangeRound$2;-><init>(Lcom/samsung/android/app/music/view/transition/ChangeRound;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 156
    new-instance p3, Lcom/samsung/android/app/music/view/transition/ChangeRound$3;

    invoke-direct {p3, p0, p1, v0, v1}, Lcom/samsung/android/app/music/view/transition/ChangeRound$3;-><init>(Lcom/samsung/android/app/music/view/transition/ChangeRound;Landroid/view/View;ZLandroid/view/ViewOutlineProvider;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 163
    sget-object p1, Lcom/samsung/android/app/music/view/transition/ChangeRound;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createRoundedOutlineAnimator animator : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method static synthetic a(Lcom/samsung/android/app/music/view/transition/ChangeRound;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->f:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/view/transition/ChangeRound;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->g:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/view/transition/ChangeRound;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->f:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/view/transition/ChangeRound;)Landroid/graphics/ColorFilter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->h:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method private c(Landroid/transition/TransitionValues;)V
    .locals 6

    if-nez p1, :cond_0

    .line 94
    sget-object p1, Lcom/samsung/android/app/music/view/transition/ChangeRound;->a:Ljava/lang/String;

    const-string v0, "catureValues() transitionValues is null"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 97
    :cond_0
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 102
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 103
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, " com.sec.android.app.music:changeRound:bound"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 106
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 108
    instance-of v1, v0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 109
    move-object v1, v0

    check-cast v1, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->getCornerRadius()F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 111
    :goto_0
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "com.sec.android.app.music:changeRound:round"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 120
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 122
    :goto_1
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "com.sec.android.app.music:changeRound:imageSize"

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method


# virtual methods
.method a(Landroid/transition/TransitionValues;)I
    .locals 2

    .line 79
    iget v0, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 80
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "com.sec.android.app.music:changeRound:round"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 82
    :cond_0
    iget p1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->c:I

    return p1
.end method

.method b(Landroid/transition/TransitionValues;)I
    .locals 2

    .line 86
    iget v0, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 87
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "com.sec.android.app.music:changeRound:round"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 89
    :cond_0
    iget p1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->d:I

    return p1
.end method

.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 3

    .line 74
    sget-object v0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureEndValues : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/view/transition/ChangeRound;->c(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 3

    .line 68
    sget-object v0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureStartValues : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/view/transition/ChangeRound;->c(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3

    const/4 p1, 0x0

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    iget-object v0, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-nez v0, :cond_1

    return-object p1

    .line 275
    :cond_1
    iget-object p1, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->f:Landroid/graphics/drawable/Drawable;

    .line 277
    iget-object p1, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 278
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 279
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/view/transition/ChangeRound;->a(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p2

    .line 281
    iget p3, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->c:I

    int-to-float p3, p3

    iget v1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->d:I

    int-to-float v1, v1

    .line 282
    invoke-direct {p0, p1, p3, v1}, Lcom/samsung/android/app/music/view/transition/ChangeRound;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 284
    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 285
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2
    return-object v0

    .line 267
    :cond_3
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAnimator() startValues : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", endValues : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", @"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 267
    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Lcom/samsung/android/app/music/view/transition/ChangeRound;->b:[Ljava/lang/String;

    return-object v0
.end method
