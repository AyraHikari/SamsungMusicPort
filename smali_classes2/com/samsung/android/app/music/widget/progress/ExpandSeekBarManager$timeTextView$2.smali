.class final Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$timeTextView$2;
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
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$timeTextView$2;->this$0:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/widget/TextView;
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$timeTextView$2;->this$0:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->g(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1302c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$timeTextView$2;->invoke()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method
