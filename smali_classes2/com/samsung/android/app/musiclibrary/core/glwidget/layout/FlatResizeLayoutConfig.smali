.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$LayoutConfiguration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$LayoutConfiguration<",
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final DIMENSION_UNSPECIFIED:I = -0x1


# instance fields
.field mAlbumContentDescription:Ljava/lang/String;

.field mAlbumOpacity:F

.field mAlbumSize:I

.field mAlbumSpacing:I

.field mAlbumSpacingAdditional:I

.field mAlbumVerticalDelta:I

.field mBackgroundColor:I

.field mBitmapDimension:I

.field mBitmapSize:I

.field public mRoundedRectRadius:I

.field mScrollingFriction:F

.field mSegmentCount:I

.field mSelectedAlbumSize:I

.field final mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

.field mShadowMeshRadius:I

.field mShape:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

.field mTextLayout:I

.field mTextSelectedOpacity:F

.field mTextUnselectedOpacity:F


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;Landroid/content/res/TypedArray;)V
    .locals 8

    .line 166
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$LayoutConfiguration;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;)V

    .line 74
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    .line 168
    :try_start_0
    sget p1, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_albumOpacity:I

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 169
    invoke-virtual {p2, p1, v1, v1, v0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumOpacity:F

    .line 170
    sget p1, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_albumSize:I

    const/16 v2, 0xb4

    .line 171
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    .line 172
    sget p1, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_albumVerticalDelta:I

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumVerticalDelta:I

    .line 174
    sget p1, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_albumSpacing:I

    const/16 v3, 0x1a

    .line 175
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacing:I

    .line 176
    sget p1, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_albumSpacingAdditional:I

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacing:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacingAdditional:I

    .line 178
    sget p1, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_backgroundColor:I

    const/high16 v3, -0x1000000

    .line 179
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mBackgroundColor:I

    .line 180
    sget p1, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_selectedAlbumSize:I

    const/4 v3, -0x1

    .line 181
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    .line 183
    sget p1, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_scrollingFriction:I

    .line 184
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v4

    .line 183
    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mScrollingFriction:F

    .line 186
    sget p1, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_roundedRectRadius:I

    .line 187
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mRoundedRectRadius:I

    .line 190
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->readShape(Landroid/content/res/TypedArray;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShape:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    .line 191
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mRoundedRectRadius:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShape:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->RoundRectangle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    if-ne p1, v4, :cond_0

    .line 192
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->Rectangle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShape:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    sget v4, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_shadowBottomRadius:I

    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    sget v5, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_shadowRightRadius:I

    .line 198
    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    sget v6, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_shadowTopRadius:I

    .line 200
    invoke-virtual {p2, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    sget v7, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_shadowLeftRadius:I

    .line 202
    invoke-virtual {p2, v7, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    .line 196
    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->setRadius(IIII)V

    .line 205
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    sget v4, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_shadowBottomCornerRadius:I

    invoke-virtual {p2, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    sget v5, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_shadowRightCornerRadius:I

    .line 207
    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    sget v6, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_shadowTopCornerRadius:I

    .line 209
    invoke-virtual {p2, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    sget v7, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_shadowLeftCornerRadius:I

    .line 211
    invoke-virtual {p2, v7, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    .line 205
    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->setCornerRadius(IIII)V

    .line 214
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    sget v4, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_shadowInnerColor:I

    const v5, -0x7f7f80

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    sget v5, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_shadowOuterColor:I

    .line 216
    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 214
    invoke-virtual {p1, v4, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->setColor(II)V

    .line 218
    sget p1, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_segmentCount:I

    const/4 v2, 0x3

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSegmentCount:I

    .line 220
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    int-to-float v2, v2

    div-float v2, v0, v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->setConversionK(F)V

    .line 221
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSegmentCount:I

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->setSegmentCount(I)V

    .line 222
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShape:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    invoke-virtual {p1, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->setShape(Landroid/content/res/Resources;Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;)V

    .line 223
    sget p1, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_circleShadowRadius:I

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMeshRadius:I

    .line 225
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMeshRadius:I

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->setRadius(I)V

    .line 227
    sget p1, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_bitmapSize:I

    const v2, 0x7fffffff

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mBitmapSize:I

    .line 230
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 231
    sget v2, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_bitmapSize:I

    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mBitmapDimension:I

    goto :goto_0

    .line 234
    :cond_1
    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mBitmapDimension:I

    .line 237
    :goto_0
    sget p1, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_textLayout:I

    .line 238
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mTextLayout:I

    .line 239
    sget p1, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_textSelectedOpacity:I

    .line 240
    invoke-virtual {p2, p1, v1, v1, v0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mTextSelectedOpacity:F

    .line 242
    sget p1, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_textUnselectedOpacity:I

    .line 243
    invoke-virtual {p2, p1, v1, v1, v0}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mTextUnselectedOpacity:F

    .line 245
    sget p1, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_albumContentDescription:I

    .line 246
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumContentDescription:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private readShape(Landroid/content/res/TypedArray;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;
    .locals 2

    .line 253
    sget v0, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView_shape:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 261
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->Rectangle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    return-object p1

    .line 258
    :pswitch_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->Circle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    return-object p1

    .line 256
    :pswitch_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->RoundRectangle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public applyConfigurationChanges()V
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->reallign()V

    return-void
.end method

.method public getAlbumAlpha()F
    .locals 1

    .line 118
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumOpacity:F

    return v0
.end method

.method public getAlbumSize()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    return v0
.end method

.method public getAlbumSpacing()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacing:I

    return v0
.end method

.method public getAlbumSpacingAdditinal()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacingAdditional:I

    return v0
.end method

.method public getAlbumVerticalDelta()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumVerticalDelta:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mBackgroundColor:I

    return v0
.end method

.method public getBitmapSize()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mBitmapSize:I

    return v0
.end method

.method public getScrollingFriction()F
    .locals 1

    .line 138
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mScrollingFriction:F

    return v0
.end method

.method public getSelectedAlbumSize()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    return v0
.end method

.method public getTextLayoutId()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mTextLayout:I

    return v0
.end method

.method public getTextSelectedAlpha()F
    .locals 1

    .line 158
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mTextSelectedOpacity:F

    return v0
.end method

.method public getTextUnselectedAlpha()F
    .locals 1

    .line 162
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mTextUnselectedOpacity:F

    return v0
.end method

.method public setAlbumAlpha(F)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumOpacity:F

    return-void
.end method

.method public setAlbumSize(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    return-void
.end method

.method public setAlbumSpacing(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacing:I

    return-void
.end method

.method public setAlbumSpacingAdditional(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacingAdditional:I

    return-void
.end method

.method public setAlbumVerticalDelta(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumVerticalDelta:I

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mBackgroundColor:I

    return-void
.end method

.method public setBitmapSize(I)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mBitmapSize:I

    return-void
.end method

.method public setScrollingFriction(F)V
    .locals 0

    .line 142
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mScrollingFriction:F

    return-void
.end method

.method public setSelectedAlbumSize(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    return-void
.end method
