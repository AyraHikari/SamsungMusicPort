.class Landroid/support/v4/widget/CircleImageView$OvalShadow;
.super Landroid/graphics/drawable/shapes/OvalShape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CircleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OvalShadow"
.end annotation


# instance fields
.field private mRadialGradient:Landroid/graphics/RadialGradient;

.field private mShadowPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Landroid/support/v4/widget/CircleImageView;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/CircleImageView;I)V
    .locals 1

    .line 130
    iput-object p1, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->this$0:Landroid/support/v4/widget/CircleImageView;

    .line 131
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 132
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    .line 133
    iput p2, p1, Landroid/support/v4/widget/CircleImageView;->mShadowRadius:I

    .line 134
    invoke-virtual {p0}, Landroid/support/v4/widget/CircleImageView$OvalShadow;->rect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Landroid/support/v4/widget/CircleImageView$OvalShadow;->updateRadialGradient(I)V

    return-void
.end method

.method private updateRadialGradient(I)V
    .locals 8

    .line 152
    new-instance v7, Landroid/graphics/RadialGradient;

    const/4 v0, 0x2

    div-int/2addr p1, v0

    int-to-float v2, p1

    iget-object p1, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->this$0:Landroid/support/v4/widget/CircleImageView;

    iget p1, p1, Landroid/support/v4/widget/CircleImageView;->mShadowRadius:I

    int-to-float v3, p1

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    move-object v0, v7

    move v1, v2

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v7, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->mRadialGradient:Landroid/graphics/RadialGradient;

    .line 155
    iget-object p1, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->mRadialGradient:Landroid/graphics/RadialGradient;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    nop

    :array_0
    .array-data 4
        0x3d000000    # 0.03125f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4

    .line 145
    iget-object v0, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->this$0:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v0}, Landroid/support/v4/widget/CircleImageView;->getWidth()I

    move-result v0

    .line 146
    iget-object v1, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->this$0:Landroid/support/v4/widget/CircleImageView;

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->getHeight()I

    move-result v1

    .line 147
    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 148
    iget-object v3, p0, Landroid/support/v4/widget/CircleImageView$OvalShadow;->this$0:Landroid/support/v4/widget/CircleImageView;

    iget v3, v3, Landroid/support/v4/widget/CircleImageView;->mShadowRadius:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v2, v1, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onResize(FF)V
    .locals 0

    .line 139
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/OvalShape;->onResize(FF)V

    float-to-int p1, p1

    .line 140
    invoke-direct {p0, p1}, Landroid/support/v4/widget/CircleImageView$OvalShadow;->updateRadialGradient(I)V

    return-void
.end method
