.class public final Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$updatedPaintField$1;
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
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$updatedPaintField$1;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$updatedPaintField$1;->b:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Paint;)V
    .locals 3

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$updatedPaintField$1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$updatedPaintField$1;->a(Z)V

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$updatedPaintField$1;->a:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Matrix;

    .line 361
    iget-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$updatedPaintField$1;->b:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->b()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$updatedPaintField$1;->b:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->c()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 362
    iget-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$updatedPaintField$1;->b:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->d()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$updatedPaintField$1;->b:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->d()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 363
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method
