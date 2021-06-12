.class Lcom/mapps/android/view/AdInterstitialView$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->sSPView(Lcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdInterstitialView;

.field private final synthetic val$data:Lcom/mz/common/network/data/DataNTSSP;

.field private final synthetic val$mediatype:I

.field private final synthetic val$viewinfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdInterstitialView;Lcom/mz/common/network/data/DataNTSSP;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$20;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iput-object p2, p0, Lcom/mapps/android/view/AdInterstitialView$20;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    iput p3, p0, Lcom/mapps/android/view/AdInterstitialView$20;->val$mediatype:I

    iput-object p4, p0, Lcom/mapps/android/view/AdInterstitialView$20;->val$viewinfo:Ljava/lang/String;

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 753
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$20;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v1}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mapps/android/view/InterstitialView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "sspimp"

    .line 755
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$20;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataNTSSP;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "dspimp"

    .line 756
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$20;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataNTSSP;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "landingurl"

    .line 757
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$20;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataNTSSP;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "dspclick"

    .line 758
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$20;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataNTSSP;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sspclick"

    .line 759
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$20;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataNTSSP;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "chksspclick"

    .line 760
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$20;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataNTSSP;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mediatype"

    .line 762
    iget v2, p0, Lcom/mapps/android/view/AdInterstitialView$20;->val$mediatype:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "width"

    .line 777
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$20;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataNTSSP;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "height"

    .line 778
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$20;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataNTSSP;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 779
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$20;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTSSP;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$20;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTSSP;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "product_attr"

    .line 780
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$20;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataNTSSP;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 782
    :cond_0
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$20;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTSSP;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$20;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTSSP;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "bgcolor"

    .line 783
    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$20;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataNTSSP;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    :cond_1
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$20;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mapps/android/view/AdInterstitialView;->setViewStyle(I)V

    .line 786
    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$20;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$20;->val$viewinfo:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/mapps/android/view/AdInterstitialView;->access$33(Lcom/mapps/android/view/AdInterstitialView;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
