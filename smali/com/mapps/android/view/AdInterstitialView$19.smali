.class Lcom/mapps/android/view/AdInterstitialView$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->startinterstitialView(Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdInterstitialView;

.field private final synthetic val$bgColor:Ljava/lang/String;

.field private final synthetic val$h:I

.field private final synthetic val$viewinfo:Ljava/lang/String;

.field private final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdInterstitialView;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$19;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iput p2, p0, Lcom/mapps/android/view/AdInterstitialView$19;->val$w:I

    iput p3, p0, Lcom/mapps/android/view/AdInterstitialView$19;->val$h:I

    iput-object p4, p0, Lcom/mapps/android/view/AdInterstitialView$19;->val$bgColor:Ljava/lang/String;

    iput-object p5, p0, Lcom/mapps/android/view/AdInterstitialView$19;->val$viewinfo:Ljava/lang/String;

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 690
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$19;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v1}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mapps/android/view/InterstitialView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "width"

    .line 702
    iget v2, p0, Lcom/mapps/android/view/AdInterstitialView$19;->val$w:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "height"

    .line 703
    iget v2, p0, Lcom/mapps/android/view/AdInterstitialView$19;->val$h:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 704
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$19;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/AdInterstitialView;->access$12(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mz/common/network/data/DataNTMutiInter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTMutiInter;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$19;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/AdInterstitialView;->access$12(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mz/common/network/data/DataNTMutiInter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTMutiInter;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "product_attr"

    .line 705
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$19;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v2}, Lcom/mapps/android/view/AdInterstitialView;->access$12(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mz/common/network/data/DataNTMutiInter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataNTMutiInter;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    :cond_0
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$19;->val$bgColor:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$19;->val$bgColor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "bgcolor"

    .line 708
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$19;->val$bgColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    :cond_1
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$19;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$19;->val$viewinfo:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/mapps/android/view/AdInterstitialView;->access$33(Lcom/mapps/android/view/AdInterstitialView;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
