.class Lcom/mapps/android/view/AdInterstitialView$15;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->registerAdFinishReceiver()V
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
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$15;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    .line 538
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "adfinish_value"

    const/4 v0, 0x1

    .line 542
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "ONDESTROY event"

    .line 550
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "close event"

    .line 546
    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 547
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$15;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {p1}, Lcom/mapps/android/view/AdInterstitialView;->access$24(Lcom/mapps/android/view/AdInterstitialView;)V

    .line 553
    :goto_0
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$15;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {p1}, Lcom/mapps/android/view/AdInterstitialView;->finalize_unregReciver()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
