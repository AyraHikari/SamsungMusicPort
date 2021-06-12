.class Lcom/mapps/android/view/AdView$SDKView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView$SDKView$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$2:Lcom/mapps/android/view/AdView$SDKView$1;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView$SDKView$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$SDKView$1$1;->this$2:Lcom/mapps/android/view/AdView$SDKView$1;

    .line 2063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/mapps/android/view/AdView$SDKView$1$1;)Lcom/mapps/android/view/AdView$SDKView$1;
    .locals 0

    .line 2063
    iget-object p0, p0, Lcom/mapps/android/view/AdView$SDKView$1$1;->this$2:Lcom/mapps/android/view/AdView$SDKView$1;

    return-object p0
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2067
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView$1$1;->this$2:Lcom/mapps/android/view/AdView$SDKView$1;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKView$1;->access$0(Lcom/mapps/android/view/AdView$SDKView$1;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKView;->access$5(Lcom/mapps/android/view/AdView$SDKView;)Lcom/mapps/android/view/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->isUseOutClickAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2068
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView$1$1;->this$2:Lcom/mapps/android/view/AdView$SDKView$1;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKView$1;->access$0(Lcom/mapps/android/view/AdView$SDKView$1;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKView;->access$5(Lcom/mapps/android/view/AdView$SDKView;)Lcom/mapps/android/view/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->getAdLinkListener()Lcom/mz/common/listener/AdLinkListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2069
    iget-object v0, p0, Lcom/mapps/android/view/AdView$SDKView$1$1;->this$2:Lcom/mapps/android/view/AdView$SDKView$1;

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKView$1;->access$0(Lcom/mapps/android/view/AdView$SDKView$1;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/AdView$SDKView;->access$5(Lcom/mapps/android/view/AdView$SDKView;)Lcom/mapps/android/view/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->getAdLinkListener()Lcom/mz/common/listener/AdLinkListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdView$SDKView$1$1;->this$2:Lcom/mapps/android/view/AdView$SDKView$1;

    invoke-static {v1}, Lcom/mapps/android/view/AdView$SDKView$1;->access$0(Lcom/mapps/android/view/AdView$SDKView$1;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    invoke-static {v1}, Lcom/mapps/android/view/AdView$SDKView;->access$5(Lcom/mapps/android/view/AdView$SDKView;)Lcom/mapps/android/view/AdView;

    move-result-object v1

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$42(Lcom/mapps/android/view/AdView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdView$SDKView$1$1;->this$2:Lcom/mapps/android/view/AdView$SDKView$1;

    invoke-static {v2}, Lcom/mapps/android/view/AdView$SDKView$1;->access$0(Lcom/mapps/android/view/AdView$SDKView$1;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v2

    invoke-static {v2}, Lcom/mapps/android/view/AdView$SDKView;->access$5(Lcom/mapps/android/view/AdView$SDKView;)Lcom/mapps/android/view/AdView;

    move-result-object v2

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mapps/android/network/UrlManager;->getOptInoutUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mz/common/listener/AdLinkListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2072
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/view/AdView$SDKView$1$1$1;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/AdView$SDKView$1$1$1;-><init>(Lcom/mapps/android/view/AdView$SDKView$1$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2081
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2083
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcom/mapps/android/view/AdView$SDKView$1$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
