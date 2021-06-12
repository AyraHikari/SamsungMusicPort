.class Lcom/mapps/android/view/AdInterstitialView$16;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->registerAdClickReceiver()V
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
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$16;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    .line 578
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 582
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$16;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {p1}, Lcom/mapps/android/view/AdInterstitialView;->access$25(Lcom/mapps/android/view/AdInterstitialView;)V

    .line 583
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$16;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-virtual {p1}, Lcom/mapps/android/view/AdInterstitialView;->finalize_unregReciver()V

    return-void
.end method
