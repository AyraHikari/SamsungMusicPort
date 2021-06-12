.class Lcom/mapps/android/view/AdInterstitialView$9;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->requestUseSSp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdInterstitialView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdInterstitialView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$9;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    .line 270
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$9;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iget-object v1, p0, Lcom/mapps/android/view/AdInterstitialView$9;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v1}, Lcom/mapps/android/view/AdInterstitialView;->access$12(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mz/common/network/data/DataNTMutiInter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdInterstitialView;->access$5(Lcom/mapps/android/view/AdInterstitialView;Lcom/mz/common/network/data/DataNTMutiInter;)V

    .line 277
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
