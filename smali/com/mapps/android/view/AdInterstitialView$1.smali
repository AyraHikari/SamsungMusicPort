.class Lcom/mapps/android/view/AdInterstitialView$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdInterstitialView;
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
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$1;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    .line 86
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$1;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$1;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {v0}, Lcom/mapps/android/view/AdInterstitialView;->access$0(Lcom/mapps/android/view/AdInterstitialView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mapps/android/view/AdInterstitialView;->access$1(Lcom/mapps/android/view/AdInterstitialView;Landroid/content/Context;)V

    return-void
.end method
