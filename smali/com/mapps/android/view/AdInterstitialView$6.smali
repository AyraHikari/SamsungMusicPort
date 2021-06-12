.class Lcom/mapps/android/view/AdInterstitialView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdInterstitialView;->startAD(Ljava/util/concurrent/Callable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdInterstitialView;

.field private final synthetic val$fun:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdInterstitialView;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$6;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iput-object p2, p0, Lcom/mapps/android/view/AdInterstitialView$6;->val$fun:Ljava/util/concurrent/Callable;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AdViewCodeComplete(Z)V
    .locals 2

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$6;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    iput-boolean p1, v0, Lcom/mapps/android/view/AdInterstitialView;->adInterval:Z

    .line 135
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$6;->val$fun:Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 137
    iget-object v0, p0, Lcom/mapps/android/view/AdInterstitialView$6;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mapps/android/view/AdInterstitialView;->adInterval:Z

    .line 138
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public AdViewCodeError(Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;)V
    .locals 1

    .line 144
    sget-object v0, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->TIMEOUT:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p1, v0, :cond_0

    .line 145
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$6;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/16 v0, -0x7d0

    invoke-static {p1, v0}, Lcom/mapps/android/view/AdInterstitialView;->access$2(Lcom/mapps/android/view/AdInterstitialView;I)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$6;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/16 v0, -0xc8

    invoke-static {p1, v0}, Lcom/mapps/android/view/AdInterstitialView;->access$2(Lcom/mapps/android/view/AdInterstitialView;I)V

    :goto_0
    return-void
.end method
