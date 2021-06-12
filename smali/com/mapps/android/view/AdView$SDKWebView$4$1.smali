.class Lcom/mapps/android/view/AdView$SDKWebView$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView$SDKWebView$4;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/mapps/android/view/AdView$SDKWebView$4;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView$SDKWebView$4;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKWebView$4$1;->this$2:Lcom/mapps/android/view/AdView$SDKWebView$4;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$SDKWebView$4$1;->val$url:Ljava/lang/String;

    .line 1764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/mapps/android/view/AdView$SDKWebView$4$1;)Lcom/mapps/android/view/AdView$SDKWebView$4;
    .locals 0

    .line 1764
    iget-object p0, p0, Lcom/mapps/android/view/AdView$SDKWebView$4$1;->this$2:Lcom/mapps/android/view/AdView$SDKWebView$4;

    return-object p0
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1768
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$4$1;->this$2:Lcom/mapps/android/view/AdView$SDKWebView$4;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView$4;->access$0(Lcom/mapps/android/view/AdView$SDKWebView$4;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mapps/android/view/AdView$SDKWebView;->bGotolinkType:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 1769
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$4$1;->val$url:Ljava/lang/String;

    const-string v2, "opt_bridge"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1770
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$4$1;->this$2:Lcom/mapps/android/view/AdView$SDKWebView$4;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView$4;->access$0(Lcom/mapps/android/view/AdView$SDKWebView$4;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView;->access$2(Lcom/mapps/android/view/AdView$SDKWebView;)Lcom/mapps/android/view/AdView;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$40(Lcom/mapps/android/view/AdView;Z)V

    .line 1771
    invoke-static {}, Lcom/mapps/android/view/AdView;->access$41()Ljava/lang/String;

    move-result-object v0

    const-string v2, "y"

    if-ne v0, v2, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$4$1;->this$2:Lcom/mapps/android/view/AdView$SDKWebView$4;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView$4;->access$0(Lcom/mapps/android/view/AdView$SDKWebView$4;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView$SDKWebView;->getOnSSPAdmListener()Lcom/mapps/android/view/AdView$OnSSPAdmListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1773
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$4$1;->this$2:Lcom/mapps/android/view/AdView$SDKWebView$4;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView$4;->access$0(Lcom/mapps/android/view/AdView$SDKWebView$4;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView$SDKWebView;->getOnSSPAdmListener()Lcom/mapps/android/view/AdView$OnSSPAdmListener;

    move-result-object v0

    sget-object v2, Lcom/mapps/android/view/AdView$SSPAdmState;->CLICK:Lcom/mapps/android/view/AdView$SSPAdmState;

    invoke-interface {v0, v2}, Lcom/mapps/android/view/AdView$OnSSPAdmListener;->onSSpAdmState(Lcom/mapps/android/view/AdView$SSPAdmState;)V

    .line 1776
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$4$1;->this$2:Lcom/mapps/android/view/AdView$SDKWebView$4;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView$4;->access$0(Lcom/mapps/android/view/AdView$SDKWebView$4;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView;->access$2(Lcom/mapps/android/view/AdView$SDKWebView;)Lcom/mapps/android/view/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->onAdClick()V

    .line 1778
    :cond_1
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$4$1;->this$2:Lcom/mapps/android/view/AdView$SDKWebView$4;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView$4;->access$0(Lcom/mapps/android/view/AdView$SDKWebView$4;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView;->access$2(Lcom/mapps/android/view/AdView$SDKWebView;)Lcom/mapps/android/view/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->isUseOutClickAction()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1779
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$4$1;->val$url:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, ""

    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKWebView$4$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1780
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$4$1;->this$2:Lcom/mapps/android/view/AdView$SDKWebView$4;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView$4;->access$0(Lcom/mapps/android/view/AdView$SDKWebView$4;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView;->access$2(Lcom/mapps/android/view/AdView$SDKWebView;)Lcom/mapps/android/view/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->getAdLinkListener()Lcom/mz/common/listener/AdLinkListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1781
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKWebView$4$1;->this$2:Lcom/mapps/android/view/AdView$SDKWebView$4;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView$4;->access$0(Lcom/mapps/android/view/AdView$SDKWebView$4;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKWebView;->access$2(Lcom/mapps/android/view/AdView$SDKWebView;)Lcom/mapps/android/view/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->getAdLinkListener()Lcom/mz/common/listener/AdLinkListener;

    move-result-object v0

    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKWebView$4$1;->this$2:Lcom/mapps/android/view/AdView$SDKWebView$4;

    invoke-static {v2}, Lcom/mapps/android/view/AdView$SDKWebView$4;->access$0(Lcom/mapps/android/view/AdView$SDKWebView$4;)Lcom/mapps/android/view/AdView$SDKWebView;

    move-result-object v2

    invoke-static {v2}, Lcom/mapps/android/view/AdView$SDKWebView;->access$2(Lcom/mapps/android/view/AdView$SDKWebView;)Lcom/mapps/android/view/AdView;

    move-result-object v2

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$42(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mapps/android/view/AdView$SDKWebView$4$1;->val$url:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/mz/common/listener/AdLinkListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1785
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/mapps/android/view/AdView$SDKWebView$4$1$1;

    iget-object v3, p0, Lcom/mapps/android/view/AdView$SDKWebView$4$1;->val$url:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/mapps/android/view/AdView$SDKWebView$4$1$1;-><init>(Lcom/mapps/android/view/AdView$SDKWebView$4$1;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1806
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1809
    :cond_3
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView$SDKWebView$4$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
