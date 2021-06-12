.class Lcom/mapps/android/view/AdView$17$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mz/common/network/request/OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView$17;->dispatchMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/view/AdView$17;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView$17;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$17$1;->this$1:Lcom/mapps/android/view/AdView$17;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnection(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0

    .line 434
    sget-object p1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    const/16 p4, -0x2bc

    if-ne p2, p1, :cond_2

    .line 435
    invoke-virtual {p3}, Lcom/mz/common/network/request/RequestNTCommon;->h()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mz/common/network/data/DataNTSSP;

    .line 436
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->l()Ljava/lang/String;

    move-result-object p2

    const-string p3, "0"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 437
    iget-object p2, p0, Lcom/mapps/android/view/AdView$17$1;->this$1:Lcom/mapps/android/view/AdView$17;

    invoke-static {p2}, Lcom/mapps/android/view/AdView$17;->access$0(Lcom/mapps/android/view/AdView$17;)Lcom/mapps/android/view/AdView;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/mapps/android/view/AdView;->access$69(Lcom/mapps/android/view/AdView;Lcom/mz/common/network/data/DataNTSSP;)Z

    goto :goto_0

    .line 439
    :cond_0
    iget-object p1, p0, Lcom/mapps/android/view/AdView$17$1;->this$1:Lcom/mapps/android/view/AdView$17;

    invoke-static {p1}, Lcom/mapps/android/view/AdView$17;->access$0(Lcom/mapps/android/view/AdView$17;)Lcom/mapps/android/view/AdView;

    move-result-object p1

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$5(Lcom/mapps/android/view/AdView;)Lcom/mz/common/network/data/DataNTBanner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTBanner;->l()Ljava/lang/String;

    move-result-object p1

    const-string p2, "5"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 440
    iget-object p1, p0, Lcom/mapps/android/view/AdView$17$1;->this$1:Lcom/mapps/android/view/AdView$17;

    invoke-static {p1}, Lcom/mapps/android/view/AdView$17;->access$0(Lcom/mapps/android/view/AdView$17;)Lcom/mapps/android/view/AdView;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    goto :goto_0

    .line 442
    :cond_1
    iget-object p1, p0, Lcom/mapps/android/view/AdView$17$1;->this$1:Lcom/mapps/android/view/AdView$17;

    invoke-static {p1}, Lcom/mapps/android/view/AdView$17;->access$0(Lcom/mapps/android/view/AdView$17;)Lcom/mapps/android/view/AdView;

    move-result-object p1

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)V

    goto :goto_0

    .line 446
    :cond_2
    iget-object p1, p0, Lcom/mapps/android/view/AdView$17$1;->this$1:Lcom/mapps/android/view/AdView$17;

    invoke-static {p1}, Lcom/mapps/android/view/AdView$17;->access$0(Lcom/mapps/android/view/AdView$17;)Lcom/mapps/android/view/AdView;

    move-result-object p1

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$5(Lcom/mapps/android/view/AdView;)Lcom/mz/common/network/data/DataNTBanner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTBanner;->l()Ljava/lang/String;

    move-result-object p1

    const-string p2, "5"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 447
    iget-object p1, p0, Lcom/mapps/android/view/AdView$17$1;->this$1:Lcom/mapps/android/view/AdView$17;

    invoke-static {p1}, Lcom/mapps/android/view/AdView$17;->access$0(Lcom/mapps/android/view/AdView$17;)Lcom/mapps/android/view/AdView;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    goto :goto_0

    .line 449
    :cond_3
    iget-object p1, p0, Lcom/mapps/android/view/AdView$17$1;->this$1:Lcom/mapps/android/view/AdView$17;

    invoke-static {p1}, Lcom/mapps/android/view/AdView$17;->access$0(Lcom/mapps/android/view/AdView$17;)Lcom/mapps/android/view/AdView;

    move-result-object p1

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)V

    :goto_0
    return-void
.end method

.method public onInternetNotSupport(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0

    return-void
.end method
