.class Lcom/mapps/android/view/AdInterstitialView$17;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->registerADErrorReceiver()V
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
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$17;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    .line 608
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "aderror_type"

    const/16 v0, -0x320

    .line 612
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 615
    iget-object p2, p0, Lcom/mapps/android/view/AdInterstitialView$17;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {p2}, Lcom/mapps/android/view/AdInterstitialView;->access$26(Lcom/mapps/android/view/AdInterstitialView;)V

    .line 616
    iget-object p2, p0, Lcom/mapps/android/view/AdInterstitialView$17;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {p2}, Lcom/mapps/android/view/AdInterstitialView;->access$27(Lcom/mapps/android/view/AdInterstitialView;)V

    .line 618
    :cond_0
    iget-object p2, p0, Lcom/mapps/android/view/AdInterstitialView$17;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {p2, p1}, Lcom/mapps/android/view/AdInterstitialView;->access$2(Lcom/mapps/android/view/AdInterstitialView;I)V

    .line 619
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$17;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {p1}, Lcom/mapps/android/view/AdInterstitialView;->access$28(Lcom/mapps/android/view/AdInterstitialView;)V

    return-void
.end method
