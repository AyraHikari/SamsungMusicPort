.class final Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$heightDelta$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$heightDelta$2;->this$0:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$heightDelta$2;->this$0:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->b(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10044b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 32
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$heightDelta$2;->this$0:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->b(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1001d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 33
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$heightDelta$2;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
