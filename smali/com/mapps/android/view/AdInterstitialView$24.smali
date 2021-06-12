.class Lcom/mapps/android/view/AdInterstitialView$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->requestImageFileSave(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdInterstitialView;

.field private final synthetic val$dir:Ljava/lang/String;

.field private final synthetic val$fileName:Ljava/lang/String;

.field private final synthetic val$filePath:Ljava/lang/String;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdInterstitialView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$24;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iput-object p2, p0, Lcom/mapps/android/view/AdInterstitialView$24;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/mapps/android/view/AdInterstitialView$24;->val$fileName:Ljava/lang/String;

    iput-object p4, p0, Lcom/mapps/android/view/AdInterstitialView$24;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/mapps/android/view/AdInterstitialView$24;->val$dir:Ljava/lang/String;

    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 905
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$24;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v0}, Lcom/mapps/android/view/AdInterstitialView;->access$12(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mz/common/network/data/DataNTMutiInter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTMutiInter;->e()Lcom/mz/common/network/data/DataListMutiInterAD;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mz/common/network/data/DataListMutiInterAD;->a(I)Lcom/mz/common/network/data/IData;

    move-result-object v0

    check-cast v0, Lcom/mz/common/network/data/DataMutiInterAD;

    .line 906
    invoke-virtual {v0}, Lcom/mz/common/network/data/DataMutiInterAD;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataMutiInterAD;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataMutiInterAD;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v6, v0

    .line 907
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$24;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdInterstitialView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdInterstitialView$24;->val$filePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/mapps/android/view/AdInterstitialView$24;->val$fileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/mapps/android/view/AdInterstitialView$24;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/mapps/android/view/AdInterstitialView$24;->val$dir:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/mz/common/MZUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
