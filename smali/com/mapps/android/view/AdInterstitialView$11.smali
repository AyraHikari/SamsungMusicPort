.class Lcom/mapps/android/view/AdInterstitialView$11;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->requestDetailSSP(Lcom/mz/common/network/data/DataNTSSP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdInterstitialView;

.field private final synthetic val$data:Lcom/mz/common/network/data/DataNTSSP;

.field private final synthetic val$img_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdInterstitialView;Lcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$11;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iput-object p2, p0, Lcom/mapps/android/view/AdInterstitialView$11;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    iput-object p3, p0, Lcom/mapps/android/view/AdInterstitialView$11;->val$img_name:Ljava/lang/String;

    .line 328
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3

    .line 331
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_0

    .line 333
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$11;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mapps/android/view/AdInterstitialView;->access$2(Lcom/mapps/android/view/AdInterstitialView;I)V

    .line 334
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$11;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$11;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$11;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v2}, Lcom/mapps/android/view/AdInterstitialView;->access$21(Lcom/mapps/android/view/AdInterstitialView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$11;->val$img_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/mapps/android/view/AdInterstitialView;->access$22(Lcom/mapps/android/view/AdInterstitialView;Lcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;I)V

    goto :goto_0

    .line 336
    :cond_0
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$11;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/16 v0, -0xbb8

    invoke-static {p1, v0}, Lcom/mapps/android/view/AdInterstitialView;->access$2(Lcom/mapps/android/view/AdInterstitialView;I)V

    :goto_0
    return-void
.end method
