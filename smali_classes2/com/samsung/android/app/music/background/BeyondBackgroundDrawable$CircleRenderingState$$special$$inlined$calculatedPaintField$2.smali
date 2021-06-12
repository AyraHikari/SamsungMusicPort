.class public final Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$calculatedPaintField$2;
.super Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$calculatedPaintField$2;->a:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Paint;)V
    .locals 9

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$calculatedPaintField$2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$calculatedPaintField$2;->a(Z)V

    .line 361
    new-instance v8, Landroid/graphics/RadialGradient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 365
    iget-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$calculatedPaintField$2;->a:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-static {v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)Lcom/samsung/android/app/music/background/ColorGenerator;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$calculatedPaintField$2;->a:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a()I

    move-result v5

    invoke-interface {v1, v5, v0}, Lcom/samsung/android/app/music/background/ColorGenerator;->a(II)[I

    move-result-object v5

    .line 366
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$calculatedPaintField$2;->a:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-static {v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)Lcom/samsung/android/app/music/background/ColorGenerator;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/background/ColorGenerator;->a()[F

    move-result-object v6

    .line 367
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v8

    .line 361
    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    check-cast v8, Landroid/graphics/Shader;

    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    return-void
.end method
