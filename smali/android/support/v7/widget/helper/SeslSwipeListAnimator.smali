.class public Landroid/support/v7/widget/helper/SeslSwipeListAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeslSwipeListAnimator"


# instance fields
.field private final DEFAULT_DRAWABLE_PADDING:I

.field private final DEFAULT_LEFT_COLOR:I

.field private final DEFAULT_RIGHT_COLOR:I

.field private final DEFAULT_TEXT_COLOR:I

.field private final DEFAULT_TEXT_SIZE:I

.field private final DIRECTION_LTR:I

.field private final DIRECTION_RTL:I

.field private mAnimationCleared:Z

.field private mBgLeftToRight:Landroid/graphics/Paint;

.field private mBgRightToLeft:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mDrawSwipeBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSeslRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

.field private mSwipeBitmap:Landroid/graphics/Bitmap;

.field private mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

.field private mSwipeRect:Landroid/graphics/Rect;

.field private mTempRoundedCorner:I

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#6ebd52"

    .line 26
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->DEFAULT_LEFT_COLOR:I

    const-string v0, "#56c0e5"

    .line 27
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->DEFAULT_RIGHT_COLOR:I

    const-string v0, "#ffffff"

    .line 28
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->DEFAULT_TEXT_COLOR:I

    const/16 v0, 0xf

    .line 29
    iput v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->DEFAULT_TEXT_SIZE:I

    const/16 v0, 0xa

    .line 30
    iput v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->DEFAULT_DRAWABLE_PADDING:I

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mBgLeftToRight:Landroid/graphics/Paint;

    .line 33
    iput-object v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mBgRightToLeft:Landroid/graphics/Paint;

    .line 34
    iput-object v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mTextPaint:Landroid/graphics/Paint;

    .line 35
    iput-object v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeRect:Landroid/graphics/Rect;

    .line 36
    iput-object v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeBitmap:Landroid/graphics/Bitmap;

    .line 37
    iput-object v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mDrawSwipeBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->DIRECTION_LTR:I

    const/4 v1, 0x1

    .line 42
    iput v1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->DIRECTION_RTL:I

    .line 44
    iput v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mTempRoundedCorner:I

    .line 46
    iput-boolean v1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mAnimationCleared:Z

    .line 49
    iput-object p2, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mContext:Landroid/content/Context;

    .line 50
    iput-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 51
    new-instance p1, Landroid/support/v7/util/SeslRoundedCorner;

    invoke-direct {p1, p2}, Landroid/support/v7/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSeslRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    return-void
.end method

.method private calculateTopOfList(Landroid/view/View;)I
    .locals 2

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 133
    instance-of v1, p1, Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_0

    .line 134
    invoke-direct {p0, p1}, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->calculateTopOfList(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method private convertDipToPixels(Landroid/content/Context;I)I
    .locals 0

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    int-to-float p2, p2

    mul-float p1, p1, p2

    .line 94
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;ILjava/lang/String;FI)V
    .locals 6

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 226
    invoke-virtual {p5, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 227
    iget-object p8, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p8, p6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 229
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 230
    invoke-virtual {p1, p2, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-eqz p4, :cond_0

    .line 233
    invoke-virtual {p4, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 234
    invoke-virtual {p4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 237
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mTextPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p7

    move v4, p9

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->drawSwipeText(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;ILandroid/graphics/Rect;)V

    .line 239
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawRectToBitmapCanvas(Landroid/view/View;FF)Landroid/graphics/Canvas;
    .locals 20

    move-object/from16 v10, p0

    .line 141
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->calculateTopOfList(Landroid/view/View;)I

    move-result v1

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 147
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v1, v12

    invoke-direct {v3, v2, v1, v11, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeRect:Landroid/graphics/Rect;

    .line 149
    iget-object v1, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 150
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeBitmap:Landroid/graphics/Bitmap;

    .line 152
    :cond_0
    new-instance v13, Landroid/graphics/Canvas;

    iget-object v1, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v13, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 153
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 155
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v15, v2, v3

    const/4 v2, 0x0

    cmpl-float v3, p3, v2

    if-lez v3, :cond_2

    .line 160
    iget-object v0, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget-object v9, v0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->drawableLeftToRight:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1

    .line 163
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 165
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 167
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget v3, v3, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->drawablePadding:I

    iget-object v4, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget v4, v4, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->drawablePadding:I

    add-int/2addr v1, v4

    invoke-direct {v2, v3, v14, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int v0, v12, v0

    .line 169
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v14, v0}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v16, v2

    goto :goto_0

    .line 171
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v14, v14, v14, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v16, v0

    .line 174
    :goto_0
    new-instance v2, Landroid/graphics/Rect;

    move/from16 v0, p2

    float-to-int v8, v0

    invoke-direct {v2, v14, v14, v8, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 176
    iget-object v5, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mBgLeftToRight:Landroid/graphics/Paint;

    const/16 v6, 0xff

    iget-object v0, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget-object v7, v0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->textLeftToRight:Ljava/lang/String;

    iget-object v0, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget v0, v0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->textSize:I

    int-to-float v4, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v3, v16

    move/from16 v18, v4

    move-object v4, v9

    move v14, v8

    move/from16 v8, v18

    move-object/from16 v18, v9

    move/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;ILjava/lang/String;FI)V

    .line 181
    new-instance v2, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {v2, v14, v0, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 182
    iget-object v5, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mBgLeftToRight:Landroid/graphics/Paint;

    float-to-int v6, v15

    iget-object v0, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget-object v7, v0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->textLeftToRight:Ljava/lang/String;

    iget-object v0, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget v0, v0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->textSize:I

    int-to-float v8, v0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, v18

    invoke-direct/range {v0 .. v9}, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;ILjava/lang/String;FI)V

    goto/16 :goto_2

    :cond_2
    cmpg-float v0, p3, v2

    if-gez v0, :cond_4

    .line 188
    iget-object v0, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget-object v14, v0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->drawableRightToLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_3

    .line 191
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 193
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 194
    iget-object v3, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget v3, v3, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->drawablePadding:I

    sub-int v3, v11, v3

    .line 196
    new-instance v4, Landroid/graphics/Rect;

    sub-int v2, v3, v2

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int v0, v12, v0

    .line 197
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v16, v4

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    .line 199
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v11, v5, v11, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v16, v0

    .line 202
    :goto_1
    new-instance v2, Landroid/graphics/Rect;

    float-to-int v0, v1

    sub-int v9, v11, v0

    invoke-direct {v2, v9, v5, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 203
    iget-object v5, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mBgRightToLeft:Landroid/graphics/Paint;

    const/16 v6, 0xff

    iget-object v0, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget-object v7, v0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->textRightToLeft:Ljava/lang/String;

    iget-object v0, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget v0, v0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->textSize:I

    int-to-float v8, v0

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v3, v16

    move-object v4, v14

    move-object/from16 v19, v14

    move v14, v9

    move v9, v11

    invoke-direct/range {v0 .. v9}, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;ILjava/lang/String;FI)V

    .line 208
    new-instance v2, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {v2, v0, v0, v14, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 209
    iget-object v5, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mBgRightToLeft:Landroid/graphics/Paint;

    float-to-int v6, v15

    iget-object v0, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget-object v7, v0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->textRightToLeft:Ljava/lang/String;

    iget-object v0, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget v0, v0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->textSize:I

    int-to-float v8, v0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, v19

    invoke-direct/range {v0 .. v9}, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->drawRectInto(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;ILjava/lang/String;FI)V

    .line 214
    :cond_4
    :goto_2
    iget v0, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mTempRoundedCorner:I

    if-eqz v0, :cond_5

    .line 215
    iget-object v0, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSeslRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    iget v1, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mTempRoundedCorner:I

    invoke-virtual {v0, v1}, Landroid/support/v7/util/SeslRoundedCorner;->setRoundedCorners(I)V

    .line 216
    iget-object v0, v10, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSeslRoundedCorner:Landroid/support/v7/util/SeslRoundedCorner;

    invoke-virtual {v0, v13}, Landroid/support/v7/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;)V

    :cond_5
    return-object v13
.end method

.method private drawSwipeText(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;ILandroid/graphics/Rect;)V
    .locals 5

    .line 244
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 245
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 247
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 248
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 249
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, p3, v3, v2, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 251
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 252
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 256
    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v0, v2

    if-nez p4, :cond_0

    .line 259
    iget p4, p5, Landroid/graphics/Rect;->right:I

    iget-object p5, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget p5, p5, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->drawablePadding:I

    add-int/2addr p4, p5

    int-to-float p4, p4

    goto :goto_0

    .line 261
    :cond_0
    iget p4, p5, Landroid/graphics/Rect;->left:I

    iget-object p5, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget p5, p5, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->drawablePadding:I

    sub-int/2addr p4, p5

    iget p5, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, p5

    int-to-float p4, p4

    .line 264
    :goto_0
    invoke-virtual {p1, p3, p4, v0, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTextToCenter(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 5

    .line 282
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    .line 283
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 285
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 286
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 287
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p2, p3, v4, v3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 288
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v1, v4

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    int-to-float v0, v0

    div-float/2addr v0, v3

    .line 289
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v0, v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 290
    invoke-virtual {p1, p3, v1, v0, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getBitmapDrawableToSwipeBitmap()Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    .line 270
    iget-object v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 272
    iget-object v1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;
    .locals 1

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 87
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    .line 88
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-object v0
.end method


# virtual methods
.method public clearSwipeAnimation(Landroid/view/View;)V
    .locals 3

    const-string v0, "SeslSwipeListAnimator"

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearSwipeAnimation, view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 296
    iput-boolean v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mAnimationCleared:Z

    .line 297
    iget v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mTempRoundedCorner:I

    if-eqz v0, :cond_0

    .line 298
    iget v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mTempRoundedCorner:I

    invoke-static {p1, v0}, Landroid/support/v4/view/SeslViewReflector;->semSetRoundedCorners(Landroid/view/View;I)V

    .line 299
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    .line 300
    iput v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mTempRoundedCorner:I

    .line 303
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mDrawSwipeBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mDrawSwipeBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 305
    iput-object v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mDrawSwipeBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 306
    iput-object v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeBitmap:Landroid/graphics/Bitmap;

    :cond_1
    const/4 v0, 0x0

    .line 309
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 310
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public doMoveAction(Landroid/graphics/Canvas;Landroid/view/View;FZ)V
    .locals 5

    .line 99
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p3, v0

    .line 100
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 102
    invoke-static {p2}, Landroid/support/v4/view/SeslViewReflector;->semGetRoundedCorners(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    cmpl-float v2, p3, v4

    if-eqz v2, :cond_0

    .line 103
    invoke-static {p2}, Landroid/support/v4/view/SeslViewReflector;->semGetRoundedCorners(Landroid/view/View;)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mTempRoundedCorner:I

    .line 104
    invoke-static {p2, v3}, Landroid/support/v4/view/SeslViewReflector;->semSetRoundedCorners(Landroid/view/View;I)V

    .line 105
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_0
    cmpl-float v2, p3, v4

    if-nez v2, :cond_1

    if-eqz p4, :cond_2

    .line 108
    :cond_1
    invoke-direct {p0, p2, p3, v0}, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->drawRectToBitmapCanvas(Landroid/view/View;FF)Landroid/graphics/Canvas;

    .line 109
    iget-boolean p4, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mAnimationCleared:Z

    if-eqz p4, :cond_2

    .line 110
    iput-boolean v3, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mAnimationCleared:Z

    const-string p4, "SeslSwipeListAnimator"

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwipeAnimation is drawing for View = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 117
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr v1, p4

    sub-float/2addr p3, v1

    .line 118
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 122
    invoke-direct {p0}, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->getBitmapDrawableToSwipeBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mDrawSwipeBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 124
    iget-object p2, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mDrawSwipeBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_3

    .line 125
    iget-object p2, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mDrawSwipeBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->invalidate(Landroid/graphics/Rect;)V

    .line 126
    iget-object p2, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mDrawSwipeBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method public onSwiped(Landroid/view/View;)V
    .locals 0

    .line 314
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->clearSwipeAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setSwipeConfiguration(Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;)V
    .locals 2

    .line 55
    iput-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    .line 57
    iget-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget-object p1, p1, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->textLeftToRight:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 58
    iget-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    const-string v0, " "

    iput-object v0, p1, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->textLeftToRight:Ljava/lang/String;

    .line 60
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget-object p1, p1, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->textRightToLeft:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 61
    iget-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    const-string v0, " "

    iput-object v0, p1, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->textRightToLeft:Ljava/lang/String;

    .line 63
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget p1, p1, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->colorLeftToRight:I

    iget-object v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget v0, v0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->UNSET_VALUE:I

    if-ne p1, v0, :cond_2

    .line 64
    iget-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->DEFAULT_LEFT_COLOR:I

    iput v0, p1, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->colorLeftToRight:I

    .line 66
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget p1, p1, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->colorRightToLeft:I

    iget-object v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget v0, v0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->UNSET_VALUE:I

    if-ne p1, v0, :cond_3

    .line 67
    iget-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->DEFAULT_RIGHT_COLOR:I

    iput v0, p1, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->colorRightToLeft:I

    .line 69
    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget p1, p1, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->textColor:I

    iget-object v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget v0, v0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->UNSET_VALUE:I

    if-ne p1, v0, :cond_4

    .line 70
    iget-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->DEFAULT_TEXT_COLOR:I

    iput v0, p1, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->textColor:I

    .line 72
    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget p1, p1, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->textSize:I

    iget-object v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget v0, v0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->UNSET_VALUE:I

    if-ne p1, v0, :cond_5

    .line 73
    iget-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    const/16 v0, 0xf

    iput v0, p1, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->textSize:I

    .line 75
    :cond_5
    iget-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget p1, p1, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->drawablePadding:I

    iget-object v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget v0, v0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->UNSET_VALUE:I

    if-ne p1, v0, :cond_6

    .line 76
    iget-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    const/16 v0, 0xa

    iput v0, p1, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->drawablePadding:I

    .line 79
    :cond_6
    iget-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget p1, p1, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->colorLeftToRight:I

    invoke-direct {p0, p1}, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mBgLeftToRight:Landroid/graphics/Paint;

    .line 80
    iget-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget p1, p1, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->colorRightToLeft:I

    invoke-direct {p0, p1}, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mBgRightToLeft:Landroid/graphics/Paint;

    .line 81
    iget-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget p1, p1, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->textColor:I

    invoke-direct {p0, p1}, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->initPaintWithAlphaAntiAliasing(I)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mTextPaint:Landroid/graphics/Paint;

    .line 82
    iget-object p1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->mSwipeConfiguration:Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;

    iget v1, v1, Landroid/support/v7/widget/helper/SeslSwipeListAnimator$SwipeConfiguration;->textSize:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/helper/SeslSwipeListAnimator;->convertDipToPixels(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method
