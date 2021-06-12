.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_CORNER_SEGMENT_COUNT:I = 0x3

.field public static final DEFAULT_INNER_COLOR:I = -0x7f7f80

.field public static final DEFAULT_OUTER_COLOR:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "ShadowMesh"

.field public static final NOT_ASSIGNED:I = -0x1


# instance fields
.field private mBottomRadius:I

.field private mCircleArtworkHelper:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

.field private mColorVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

.field private mColors:[F

.field private mCoordVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

.field private mCoords:[F

.field private mCornerBottomRadius:I

.field private mCornerLeftRadius:I

.field private mCornerRightRadius:I

.field private mCornerTopRadius:I

.field private mHasShadow:Z

.field private mInnerColor:I

.field private mK:F

.field private mLeftRadius:I

.field private mOuterColor:I

.field private mRadius:I

.field private mRebuildMesh:Z

.field private mRebuildVBO:Z

.field private mRightRadius:I

.field private mSegmentCount:I

.field private mShader:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;

.field private mShape:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

.field private mTopRadius:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mBottomRadius:I

    .line 47
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRightRadius:I

    .line 49
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mTopRadius:I

    .line 51
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mLeftRadius:I

    .line 53
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerBottomRadius:I

    .line 55
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerRightRadius:I

    .line 57
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerTopRadius:I

    .line 59
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerLeftRadius:I

    const v0, -0x7f7f80

    .line 61
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mInnerColor:I

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mOuterColor:I

    const/4 v0, 0x3

    .line 67
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mSegmentCount:I

    const v0, 0x3c23d70a    # 0.01f

    .line 77
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    .line 82
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->Rectangle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mShape:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    return-void
.end method

.method private isCircular()Z
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mShape:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->Circle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public hasShadow()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    return v0
.end method

.method public initShader(Landroid/content/Context;)V
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mShader:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;

    const/4 p1, 0x1

    .line 209
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildVBO:Z

    :cond_0
    return-void
.end method

.method public render([F[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)V
    .locals 12

    .line 214
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "ShadowMesh"

    const-string v2, "Rebuild shadow mesh"

    .line 215
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 217
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->isCircular()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mSegmentCount:I

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRadius:I

    int-to-float v0, v0

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    mul-float v6, v6, v0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCircleArtworkHelper:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

    .line 219
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->getRotationDegrees()F

    move-result v0

    neg-float v0, v0

    const v7, 0x40490fdb    # (float)Math.PI

    mul-float v0, v0, v7

    const/high16 v7, 0x43340000    # 180.0f

    div-float v7, v0, v7

    .line 218
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->circleShadowCoord(IFFFFF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCoords:[F

    .line 220
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mSegmentCount:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCircleArtworkHelper:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

    .line 221
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->getColors()[I

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCircleArtworkHelper:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;->getPositions()[F

    move-result-object v3

    .line 220
    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->getColoredCircleShadowColors(I[I[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mColors:[F

    goto :goto_0

    .line 223
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mBottomRadius:I

    int-to-float v0, v0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    mul-float v3, v0, v2

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerBottomRadius:I

    int-to-float v0, v0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    mul-float v4, v0, v2

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRightRadius:I

    int-to-float v0, v0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    mul-float v5, v0, v2

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerRightRadius:I

    int-to-float v0, v0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    mul-float v6, v0, v2

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mTopRadius:I

    int-to-float v0, v0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    mul-float v7, v0, v2

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerTopRadius:I

    int-to-float v0, v0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    mul-float v8, v0, v2

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mLeftRadius:I

    int-to-float v0, v0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    mul-float v9, v0, v2

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerLeftRadius:I

    int-to-float v0, v0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    mul-float v10, v0, v2

    iget v11, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mSegmentCount:I

    invoke-static/range {v3 .. v11}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->roundShadowCoords(FFFFFFFFI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCoords:[F

    .line 227
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mSegmentCount:I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mInnerColor:I

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mOuterColor:I

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->roundShadowColors(III)[F

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mColors:[F

    .line 230
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildVBO:Z

    if-eqz v0, :cond_2

    .line 231
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildVBO:Z

    const-string v0, "ShadowMesh"

    const-string v1, "Rebuild shadow VBO"

    .line 232
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCoords:[F

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;-><init>([FI)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCoordVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    .line 234
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mColors:[F

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;-><init>([FI)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mColorVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    .line 236
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    if-eqz v0, :cond_3

    .line 237
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mShader:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCoordVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mColorVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCoordVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->getLength()I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowShader;->render([F[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;I)V

    :cond_3
    return-void
.end method

.method public setColor(II)V
    .locals 2

    .line 192
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mInnerColor:I

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    .line 193
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mInnerColor:I

    .line 194
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 196
    :cond_0
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mOuterColor:I

    if-eq p2, p1, :cond_1

    .line 197
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mOuterColor:I

    .line 198
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    :cond_1
    return-void
.end method

.method public setConversionK(F)V
    .locals 1

    .line 139
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 140
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mK:F

    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    :cond_0
    return-void
.end method

.method public setCornerRadius(IIII)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-lez p1, :cond_1

    .line 157
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerBottomRadius:I

    if-eq p1, v2, :cond_1

    .line 158
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerBottomRadius:I

    .line 159
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mBottomRadius:I

    if-ne p1, v0, :cond_0

    .line 160
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerBottomRadius:I

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mBottomRadius:I

    .line 162
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 163
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    :cond_1
    if-lez p2, :cond_3

    .line 165
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerRightRadius:I

    if-eq p2, p1, :cond_3

    .line 166
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerRightRadius:I

    .line 167
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRightRadius:I

    if-ne p1, v0, :cond_2

    .line 168
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerRightRadius:I

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRightRadius:I

    .line 170
    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 171
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    :cond_3
    if-lez p3, :cond_5

    .line 173
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerTopRadius:I

    if-eq p3, p1, :cond_5

    .line 174
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerTopRadius:I

    .line 175
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mTopRadius:I

    if-ne p1, v0, :cond_4

    .line 176
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerTopRadius:I

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mTopRadius:I

    .line 178
    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 179
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    :cond_5
    if-lez p4, :cond_7

    .line 181
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerLeftRadius:I

    if-eq p4, p1, :cond_7

    .line 182
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerLeftRadius:I

    .line 183
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mLeftRadius:I

    if-ne p1, v0, :cond_6

    .line 184
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerLeftRadius:I

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mLeftRadius:I

    .line 186
    :cond_6
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 187
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    :cond_7
    return-void
.end method

.method public setRadius(I)V
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 91
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    .line 93
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRadius:I

    return-void
.end method

.method public setRadius(IIII)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-lez p1, :cond_1

    .line 97
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mBottomRadius:I

    if-eq p1, v2, :cond_1

    .line 98
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mBottomRadius:I

    .line 99
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerBottomRadius:I

    if-ne p1, v0, :cond_0

    .line 100
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mBottomRadius:I

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerBottomRadius:I

    .line 102
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 103
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    :cond_1
    if-lez p2, :cond_3

    .line 105
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRightRadius:I

    if-eq p2, p1, :cond_3

    .line 106
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRightRadius:I

    .line 107
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerRightRadius:I

    if-ne p1, v0, :cond_2

    .line 108
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRightRadius:I

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerRightRadius:I

    .line 110
    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 111
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    :cond_3
    if-lez p3, :cond_5

    .line 113
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mTopRadius:I

    if-eq p3, p1, :cond_5

    .line 114
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mTopRadius:I

    .line 115
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerTopRadius:I

    if-ne p1, v0, :cond_4

    .line 116
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mTopRadius:I

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerTopRadius:I

    .line 118
    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 119
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    :cond_5
    if-lez p4, :cond_7

    .line 121
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mLeftRadius:I

    if-eq p4, p1, :cond_7

    .line 122
    iput p4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mLeftRadius:I

    .line 123
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerLeftRadius:I

    if-ne p1, v0, :cond_6

    .line 124
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mLeftRadius:I

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCornerLeftRadius:I

    .line 126
    :cond_6
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    .line 127
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mHasShadow:Z

    :cond_7
    return-void
.end method

.method public setSegmentCount(I)V
    .locals 1

    .line 132
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mSegmentCount:I

    if-eq p1, v0, :cond_0

    .line 133
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mSegmentCount:I

    const/4 p1, 0x1

    .line 134
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mRebuildMesh:Z

    :cond_0
    return-void
.end method

.method public setShape(Landroid/content/res/Resources;Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;)V
    .locals 0

    .line 146
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mShape:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->isCircular()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 148
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->mCircleArtworkHelper:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkHelper;

    :cond_0
    return-void
.end method
