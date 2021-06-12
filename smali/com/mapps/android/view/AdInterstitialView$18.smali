.class Lcom/mapps/android/view/AdInterstitialView$18;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->registerChargeReceiver()V
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
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$18;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    .line 645
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 649
    invoke-static {}, Lcom/mapps/android/view/AdInterstitialView;->access$29()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 650
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$18;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdInterstitialView;->access$30(Lcom/mapps/android/view/AdInterstitialView;Z)V

    goto :goto_0

    .line 652
    :cond_0
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$18;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iget-object p2, p0, Lcom/mapps/android/view/AdInterstitialView$18;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {p2}, Lcom/mapps/android/view/AdInterstitialView;->access$12(Lcom/mapps/android/view/AdInterstitialView;)Lcom/mz/common/network/data/DataNTMutiInter;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdInterstitialView;->access$31(Lcom/mapps/android/view/AdInterstitialView;Lcom/mz/common/network/data/DataNTMutiInter;)V

    .line 654
    :goto_0
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$18;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {p1}, Lcom/mapps/android/view/AdInterstitialView;->access$32(Lcom/mapps/android/view/AdInterstitialView;)V

    return-void
.end method
