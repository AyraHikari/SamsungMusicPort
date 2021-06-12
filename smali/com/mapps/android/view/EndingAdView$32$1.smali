.class Lcom/mapps/android/view/EndingAdView$32$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView$32;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
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
.field final synthetic this$1:Lcom/mapps/android/view/EndingAdView$32;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView$32;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$32$1;->this$1:Lcom/mapps/android/view/EndingAdView$32;

    iput-object p2, p0, Lcom/mapps/android/view/EndingAdView$32$1;->val$url:Ljava/lang/String;

    .line 1396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/mapps/android/view/EndingAdView$32$1;)Lcom/mapps/android/view/EndingAdView$32;
    .locals 0

    .line 1396
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView$32$1;->this$1:Lcom/mapps/android/view/EndingAdView$32;

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

    .line 1400
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$32$1;->this$1:Lcom/mapps/android/view/EndingAdView$32;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView$32;->access$0(Lcom/mapps/android/view/EndingAdView$32;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mapps/android/view/EndingAdView;->bGotolinkType:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 1401
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$32$1;->this$1:Lcom/mapps/android/view/EndingAdView$32;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView$32;->access$0(Lcom/mapps/android/view/EndingAdView$32;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$40(Lcom/mapps/android/view/EndingAdView;Z)V

    .line 1402
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$32$1;->val$url:Ljava/lang/String;

    const-string v2, "opt_bridge"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1403
    invoke-static {}, Lcom/mapps/android/view/EndingAdView;->access$44()Ljava/lang/String;

    move-result-object v0

    const-string v2, "y"

    if-ne v0, v2, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$32$1;->this$1:Lcom/mapps/android/view/EndingAdView$32;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView$32;->access$0(Lcom/mapps/android/view/EndingAdView$32;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$39(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/data/DataNTSSP;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$32$1;->this$1:Lcom/mapps/android/view/EndingAdView$32;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView$32;->access$0(Lcom/mapps/android/view/EndingAdView$32;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$32$1;->this$1:Lcom/mapps/android/view/EndingAdView$32;

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView$32;->access$0(Lcom/mapps/android/view/EndingAdView$32;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v2

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView;->access$39(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/data/DataNTSSP;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mapps/android/view/EndingAdView;->access$45(Lcom/mapps/android/view/EndingAdView;Lcom/mz/common/network/data/DataNTSSP;)V

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$32$1;->this$1:Lcom/mapps/android/view/EndingAdView$32;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView$32;->access$0(Lcom/mapps/android/view/EndingAdView$32;)Lcom/mapps/android/view/EndingAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapps/android/view/EndingAdView;->onAdClick()V

    .line 1410
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/mapps/android/view/EndingAdView$32$1$1;

    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView$32$1;->val$url:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/mapps/android/view/EndingAdView$32$1$1;-><init>(Lcom/mapps/android/view/EndingAdView$32$1;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1425
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1427
    :cond_2
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
    invoke-virtual {p0}, Lcom/mapps/android/view/EndingAdView$32$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
