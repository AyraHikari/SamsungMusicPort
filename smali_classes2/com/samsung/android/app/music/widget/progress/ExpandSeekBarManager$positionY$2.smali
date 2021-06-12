.class final Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$positionY$2;
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

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$positionY$2;->this$0:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()I
    .locals 3

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$positionY$2;->this$0:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->a(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 93
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$positionY$2;->this$0:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->h(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$positionY$2;->this$0:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->i(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "timeTextView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$positionY$2;->invoke()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
