.class public Landroid/support/v7/util/SeslRoundedCorner;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ROUNDED_CORNER_ALL:I = 0xf

.field public static final ROUNDED_CORNER_BOTTOM_LEFT:I = 0x4

.field public static final ROUNDED_CORNER_BOTTOM_RIGHT:I = 0x8

.field public static final ROUNDED_CORNER_NONE:I = 0x0

.field public static final ROUNDED_CORNER_TOP_LEFT:I = 0x1

.field public static final ROUNDED_CORNER_TOP_RIGHT:I = 0x2

.field static final TAG:Ljava/lang/String; = "SeslRoundedCorner"


# instance fields
.field mBottomLeftRound:Landroid/graphics/drawable/Drawable;

.field mBottomLeftRoundColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field mBottomRightRound:Landroid/graphics/drawable/Drawable;

.field mBottomRightRoundColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mIsMutate:Z

.field mIsStrokeRoundedCorner:Z

.field mRes:Landroid/content/res/Resources;

.field mRoundRadius:I

.field mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

.field mRoundStrokeHeight:I

.field mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

.field mRoundedCornerBounds:Landroid/graphics/Rect;

.field mRoundedCornerMode:I

.field mTopLeftRound:Landroid/graphics/drawable/Drawable;

.field mTopLeftRoundColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field mTopRightRound:Landroid/graphics/drawable/Drawable;

.field mTopRightRoundColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field mX:I

.field mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 76
    invoke-direct {p0, p1, v0}, Landroid/support/v7/util/SeslRoundedCorner;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsMutate:Z

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    .line 80
    iput-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    .line 82
    iput-boolean p2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    .line 83
    invoke-direct {p0}, Landroid/support/v7/util/SeslRoundedCorner;->initRoundedCorner()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsMutate:Z

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    .line 99
    iput-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    .line 101
    iput-boolean p2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    .line 102
    iput-boolean p3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsMutate:Z

    .line 103
    invoke-direct {p0}, Landroid/support/v7/util/SeslRoundedCorner;->initRoundedCorner()V

    return-void
.end method

.method private initRoundedCorner()V
    .locals 4

    const/16 v0, 0x1a

    int-to-float v0, v0

    .line 243
    iget-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    .line 244
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    .line 243
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    .line 246
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 247
    iget-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v3, Landroid/support/v7/appcompat/R$attr;->isLightTheme:I

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 248
    iget v0, v0, Landroid/util/TypedValue;->data:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 250
    iput-boolean v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    :cond_1
    const-string v0, "SeslRoundedCorner"

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initRoundedCorner, rounded corner with stroke = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", dark theme = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mutate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsMutate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-boolean v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$color;->sesl_round_and_bgcolor_light:I

    .line 258
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRoundColor:I

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRoundColor:I

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRoundColor:I

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRoundColor:I

    .line 260
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_top_left_round_stroke:I

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    .line 261
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 260
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    .line 262
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_top_right_round_stroke:I

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    .line 263
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 262
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    .line 264
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_bottom_left_round_stroke:I

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    .line 265
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 264
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    .line 266
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_bottom_right_round_stroke:I

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    .line 267
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 266
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 268
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsMutate:Z

    if-eqz v0, :cond_3

    .line 269
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$color;->sesl_round_and_bgcolor_dark:I

    .line 270
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRoundColor:I

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRoundColor:I

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRoundColor:I

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRoundColor:I

    .line 272
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_top_left_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    .line 274
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_top_right_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    .line 276
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_bottom_left_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    .line 278
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_bottom_right_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 281
    :cond_3
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$color;->sesl_round_and_bgcolor_dark:I

    .line 282
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRoundColor:I

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRoundColor:I

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRoundColor:I

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRoundColor:I

    .line 284
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_top_left_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    .line 286
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_top_right_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    .line 288
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_bottom_left_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    .line 290
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_bottom_right_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    .line 293
    :goto_1
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_round_stroke:I

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

    .line 294
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRes:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$dimen;->sesl_round_stroke_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeHeight:I

    return-void
.end method

.method private removeRoundedCorner(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 305
    iput-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 308
    iput-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 311
    iput-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    :cond_2
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_3

    .line 314
    iput-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    :cond_3
    return-void
.end method


# virtual methods
.method public drawRoundedCorner(Landroid/graphics/Canvas;)V
    .locals 7

    .line 323
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 325
    iget v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 326
    iget-boolean v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 328
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 330
    :cond_0
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 333
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 335
    :cond_1
    iget v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 339
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 341
    :cond_2
    iget v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 342
    iget-boolean v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz v0, :cond_3

    .line 343
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeHeight:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 344
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 346
    :cond_3
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 350
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 353
    :cond_4
    iget v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 354
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 357
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method

.method public drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 6

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mX:I

    .line 368
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mY:I

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mX:I

    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mY:I

    .line 373
    :goto_0
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mX:I

    iget v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mY:I

    iget v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mX:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mY:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 375
    iget p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 376
    iget-boolean p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz p1, :cond_1

    .line 377
    iget-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeHeight:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 378
    iget-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 380
    :cond_1
    iget-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 383
    iget-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 385
    :cond_2
    iget p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    .line 386
    iget-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 389
    iget-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 391
    :cond_3
    iget p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    .line 392
    iget-boolean p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz p1, :cond_4

    .line 393
    iget-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 394
    iget-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundStrokeBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 396
    :cond_4
    iget-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 400
    iget-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 402
    :cond_5
    iget p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerMode:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6

    .line 403
    iget-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 406
    iget-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    return-void
.end method

.method public getRoundedCornerColor(I)I
    .locals 2
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    if-eqz p1, :cond_5

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use multiple rounded corner as param on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 231
    iget p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRoundColor:I

    return p1

    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 233
    iget p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRoundColor:I

    return p1

    :cond_3
    and-int/2addr p1, v0

    if-eqz p1, :cond_4

    .line 235
    iget p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRoundColor:I

    return p1

    .line 237
    :cond_4
    iget p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRoundColor:I

    return p1

    .line 222
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There is no rounded corner on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRoundedCornerRadius()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 301
    iget v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundRadius:I

    return v0
.end method

.method public getRoundedCorners()I
    .locals 1

    .line 147
    iget v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerMode:I

    return v0
.end method

.method public setRoundedCornerColor(II)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 167
    iget-boolean v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mIsStrokeRoundedCorner:Z

    if-eqz v0, :cond_0

    const-string p1, "SeslRoundedCorner"

    const-string p2, "can not change round color on stroke rounded corners"

    .line 168
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_a

    and-int/lit8 v0, p1, -0x10

    if-nez v0, :cond_9

    .line 178
    iget v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRoundColor:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRoundColor:I

    if-eq p2, v0, :cond_2

    :cond_1
    const-string v0, "SeslRoundedCorner"

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", on ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", top color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRoundColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bottom color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRoundColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_2
    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 182
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/util/SeslRoundedCorner;->initRoundedCorner()V

    .line 185
    :cond_4
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_5

    .line 189
    iput p2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRoundColor:I

    .line 190
    iget-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_5
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_6

    .line 193
    iput p2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRoundColor:I

    .line 194
    iget-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_6
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_7

    .line 197
    iput p2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRoundColor:I

    .line 198
    iget-object v1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_7
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_8

    .line 201
    iput p2, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRoundColor:I

    .line 202
    iget-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_8
    return-void

    .line 175
    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use wrong rounded corners to the param, corners = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 172
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "There is no rounded corner on = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRoundedCorners(I)V
    .locals 3

    and-int/lit8 v0, p1, -0x10

    if-nez v0, :cond_2

    .line 126
    iput p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mRoundedCornerMode:I

    .line 128
    iget-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopLeftRound:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mTopRightRound:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomLeftRound:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/util/SeslRoundedCorner;->mBottomRightRound:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    .line 129
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/util/SeslRoundedCorner;->initRoundedCorner()V

    :cond_1
    return-void

    .line 123
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use wrong rounded corners to the param, corners = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
