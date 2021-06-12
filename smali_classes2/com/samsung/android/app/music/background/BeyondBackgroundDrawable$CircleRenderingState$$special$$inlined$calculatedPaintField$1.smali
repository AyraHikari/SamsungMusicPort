.class public final Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$calculatedPaintField$1;
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

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$calculatedPaintField$1;->a:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

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
    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$calculatedPaintField$1;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$calculatedPaintField$1;->a(Z)V

    const v1, 0x3f59999a    # 0.85f

    .line 361
    iget-object v2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$calculatedPaintField$1;->a:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->e()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState$$special$$inlined$calculatedPaintField$1;->a:Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->f()I

    move-result v3

    int-to-float v2, v2

    const/16 v4, 0xff

    int-to-float v5, v4

    div-float/2addr v2, v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    cmpg-float v8, v2, v7

    if-gez v8, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    cmpl-float v8, v2, v6

    if-lez v8, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_1
    :goto_0
    int-to-float v3, v3

    div-float/2addr v3, v5

    cmpg-float v8, v3, v7

    if-gez v8, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    cmpl-float v8, v3, v6

    if-lez v8, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_3
    :goto_1
    mul-float v2, v2, v3

    cmpg-float v3, v2, v7

    if-gez v3, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    cmpl-float v3, v2, v6

    if-lez v3, :cond_5

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_5
    :goto_2
    mul-float v1, v1, v2

    mul-float v1, v1, v5

    float-to-int v1, v1

    if-gez v1, :cond_6

    goto :goto_3

    :cond_6
    if-le v1, v4, :cond_7

    const/16 v0, 0xff

    goto :goto_3

    :cond_7
    move v0, v1

    .line 380
    :goto_3
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_8
    return-void
.end method
