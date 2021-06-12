.class public final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$calculatedPaintField$1;
.super Lcom/samsung/android/app/musiclibrary/ui/util/PaintField;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;-><init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$calculatedPaintField$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

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
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$calculatedPaintField$1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$calculatedPaintField$1;->a(Z)V

    .line 361
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$calculatedPaintField$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->a()Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v1, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$calculatedPaintField$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->a()Landroid/graphics/RectF;

    move-result-object v1

    iget v4, v1, Landroid/graphics/RectF;->right:F

    const/4 v5, 0x0

    .line 362
    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$calculatedPaintField$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->c()I

    move-result v6

    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State$$special$$inlined$calculatedPaintField$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerBackgroundDrawable$State;->d()I

    move-result v7

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    .line 361
    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    check-cast v0, Landroid/graphics/Shader;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    return-void
.end method
