.class Lcom/mapps/android/view/AdInterstitialView$13;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->sendRequestInterstitial()V
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
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$13;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    .line 489
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$13;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/16 v1, -0xc8

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdInterstitialView;->access$2(Lcom/mapps/android/view/AdInterstitialView;I)V

    .line 496
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
