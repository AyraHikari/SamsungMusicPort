.class Lcom/mapps/android/view/InterstitialView$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/InterstitialView$6;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/InterstitialView$6;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView$6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$6$1;->this$1:Lcom/mapps/android/view/InterstitialView$6;

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$6$1;->this$1:Lcom/mapps/android/view/InterstitialView$6;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView$6;->access$0(Lcom/mapps/android/view/InterstitialView$6;)Lcom/mapps/android/view/InterstitialView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView;->access$12(Lcom/mapps/android/view/InterstitialView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$6$1;->this$1:Lcom/mapps/android/view/InterstitialView$6;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView$6;->access$0(Lcom/mapps/android/view/InterstitialView$6;)Lcom/mapps/android/view/InterstitialView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView;->access$16(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$6$1;->this$1:Lcom/mapps/android/view/InterstitialView$6;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView$6;->access$0(Lcom/mapps/android/view/InterstitialView$6;)Lcom/mapps/android/view/InterstitialView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView;->access$17(Lcom/mapps/android/view/InterstitialView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView$6$1;->this$1:Lcom/mapps/android/view/InterstitialView$6;

    invoke-static {v1}, Lcom/mapps/android/view/InterstitialView$6;->access$0(Lcom/mapps/android/view/InterstitialView$6;)Lcom/mapps/android/view/InterstitialView;

    move-result-object v1

    invoke-static {v1}, Lcom/mapps/android/view/InterstitialView;->access$16(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 546
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView$6$1;->this$1:Lcom/mapps/android/view/InterstitialView$6;

    invoke-static {v0}, Lcom/mapps/android/view/InterstitialView$6;->access$0(Lcom/mapps/android/view/InterstitialView$6;)Lcom/mapps/android/view/InterstitialView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mapps/android/view/InterstitialView;->access$18(Lcom/mapps/android/view/InterstitialView;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
