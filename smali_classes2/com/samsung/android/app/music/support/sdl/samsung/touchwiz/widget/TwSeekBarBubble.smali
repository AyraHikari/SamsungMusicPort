.class public Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BUBBLE_ALIGN_BOTTOM:I = 0x3

.field public static final BUBBLE_ALIGN_CENTER:I = 0x4

.field public static final BUBBLE_ALIGN_LEFT:I = 0x0

.field public static final BUBBLE_ALIGN_RIGHT:I = 0x1

.field public static final BUBBLE_ALIGN_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TwSeekbarBubble"

.field private static final mScafe:Ljava/lang/String;


# instance fields
.field private TWSEEKBARBUBBLE_DEFAULT_TEXT_SIZE:F

.field private final debug:Z

.field private mBubbleAlign:I

.field private mBubbleBackground:Landroid/graphics/drawable/Drawable;

.field private mBubbleDisplay:Z

.field private mBubbleDrawnRect:Landroid/graphics/Rect;

.field private mBubbleFontColor:I

.field private mBubbleFontSize:F

.field private mBubblePosLeft:I

.field private mBubblePosTop:I

.field private mBubbleText:Ljava/lang/CharSequence;

.field private mScale:F

.field private mTextPainter:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ro.build.scafe"

    .line 50
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mScafe:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 107
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->debug:Z

    const/4 v0, 0x4

    .line 83
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleAlign:I

    .line 85
    iput-boolean p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDisplay:Z

    const p1, 0x421551ec    # 37.33f

    .line 93
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_DEFAULT_TEXT_SIZE:F

    .line 97
    sget p1, Lcom/samsung/android/app/music/support/sdl/R$color;->tw_seekbar_bubble_text_color:I

    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleFontColor:I

    const/4 p1, 0x0

    .line 99
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mScale:F

    .line 108
    sget-object p1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mScafe:Ljava/lang/String;

    const-string v0, "americano"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "TwSeekBarBubble"

    const-string v0, "This API can be used in models based on L platform."

    .line 110
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->debug:Z

    const/4 p2, 0x4

    .line 83
    iput p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleAlign:I

    .line 85
    iput-boolean p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDisplay:Z

    const p1, 0x421551ec    # 37.33f

    .line 93
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_DEFAULT_TEXT_SIZE:F

    .line 97
    sget p1, Lcom/samsung/android/app/music/support/sdl/R$color;->tw_seekbar_bubble_text_color:I

    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleFontColor:I

    const/4 p1, 0x0

    .line 99
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mScale:F

    .line 124
    sget-object p1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mScafe:Ljava/lang/String;

    const-string p2, "americano"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "TwSeekBarBubble"

    const-string p2, "This API can be used in models based on L platform."

    .line 126
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->debug:Z

    const/4 p2, 0x4

    .line 83
    iput p2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleAlign:I

    .line 85
    iput-boolean p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDisplay:Z

    const p1, 0x421551ec    # 37.33f

    .line 93
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_DEFAULT_TEXT_SIZE:F

    .line 97
    sget p1, Lcom/samsung/android/app/music/support/sdl/R$color;->tw_seekbar_bubble_text_color:I

    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleFontColor:I

    const/4 p1, 0x0

    .line 99
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mScale:F

    .line 140
    sget-object p1, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mScafe:Ljava/lang/String;

    const-string p2, "americano"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "TwSeekBarBubble"

    const-string p2, "This API can be used in models based on L platform."

    .line 142
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->init()V

    return-void
.end method

.method private calculateBubblePosition(Landroid/graphics/Point;)V
    .locals 8

    .line 468
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    .line 469
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 471
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 472
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 474
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 475
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 477
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 479
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mTextPainter:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 484
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 485
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 487
    :cond_0
    iget v1, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v1, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    .line 489
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleAlign:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 507
    :pswitch_0
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosLeft:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 508
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosTop:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 503
    :pswitch_1
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosLeft:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 504
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosTop:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 499
    :pswitch_2
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosLeft:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 500
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosTop:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 495
    :pswitch_3
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosLeft:I

    sub-int/2addr v1, v3

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 496
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosTop:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 491
    :pswitch_4
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosLeft:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 492
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosTop:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->y:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init()V
    .locals 2

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mScale:F

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->setClickable(Z)V

    .line 154
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->setFocusable(Z)V

    const-string v1, " "

    .line 156
    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleText:Ljava/lang/CharSequence;

    .line 160
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosLeft:I

    .line 161
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosTop:I

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    .line 165
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mTextPainter:Landroid/graphics/Paint;

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mTextPainter:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_DEFAULT_TEXT_SIZE:F

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mScale:F

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleFontSize:F

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 307
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 309
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDisplay:Z

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    .line 312
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 313
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 318
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 319
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 321
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 322
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 324
    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    sub-int/2addr v4, v6

    .line 326
    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    sub-int v6, v5, v6

    .line 329
    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mTextPainter:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleFontColor:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 330
    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mTextPainter:Landroid/graphics/Paint;

    iget v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleFontSize:F

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 331
    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mTextPainter:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleText:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 333
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 334
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 337
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 338
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 341
    :cond_1
    iget v7, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v4

    iget v8, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    .line 346
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 347
    invoke-direct {p0, v8}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->calculateBubblePosition(Landroid/graphics/Point;)V

    .line 349
    iget v9, v8, Landroid/graphics/Point;->x:I

    iget v10, v8, Landroid/graphics/Point;->y:I

    iget v11, v8, Landroid/graphics/Point;->x:I

    add-int/2addr v11, v7

    iget v12, v8, Landroid/graphics/Point;->y:I

    add-int/2addr v12, v5

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 352
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 353
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 355
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 356
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v7

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 357
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 358
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v1, v8, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v5

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 362
    iget v0, v8, Landroid/graphics/Point;->x:I

    iget v1, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    .line 363
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget v1, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 364
    iget v1, v8, Landroid/graphics/Point;->y:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    .line 365
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v6, v3

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v1, v6

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 368
    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v1, v1

    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mTextPainter:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 369
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :cond_2
    return-void
.end method

.method public getBubbleFontSize()F
    .locals 1

    .line 295
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleFontSize:F

    return v0
.end method

.method public getBubbleHeight()I
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getBubbleWidth()I
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public hideBubble()V
    .locals 1

    const/4 v0, 0x0

    .line 263
    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDisplay:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 382
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 388
    iget-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->PRESSED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 390
    iget-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->invalidate(IIII)V

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 407
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 409
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 437
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->EMPTY_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 439
    iget-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->invalidate(IIII)V

    goto :goto_0

    .line 411
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 415
    iget-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->PRESSED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 417
    iget-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->invalidate(IIII)V

    goto :goto_0

    .line 444
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->EMPTY_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 446
    iget-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDrawnRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->invalidate(IIII)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBubbleAlign(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleAlign:I

    return-void
.end method

.method public setBubbleBackgroundDrawable(I)V
    .locals 1

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->setBubbleBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBubbleBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 181
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setBubbleFontColor(I)V
    .locals 0

    .line 302
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleFontColor:I

    return-void
.end method

.method public setBubbleFontSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 285
    iget p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->TWSEEKBARBUBBLE_DEFAULT_TEXT_SIZE:F

    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mScale:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleFontSize:F

    goto :goto_0

    .line 287
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleFontSize:F

    :goto_0
    return-void
.end method

.method public setBubblePosition(Landroid/view/View;II)V
    .locals 1

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 229
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 230
    iget p1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosLeft:I

    .line 231
    iget p1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubblePosTop:I

    return-void
.end method

.method public setBubbleText(I)V
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setBubbleText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleText:Ljava/lang/CharSequence;

    return-void
.end method

.method public showBubble()V
    .locals 1

    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwSeekBarBubble;->mBubbleDisplay:Z

    return-void
.end method
