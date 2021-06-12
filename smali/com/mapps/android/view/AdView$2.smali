.class Lcom/mapps/android/view/AdView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mz/common/network/request/OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$2;->this$0:Lcom/mapps/android/view/AdView;

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnection(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0

    .line 580
    sget-object p1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    const/16 p4, -0xc8

    if-ne p2, p1, :cond_8

    .line 581
    invoke-virtual {p3}, Lcom/mz/common/network/request/RequestNTCommon;->h()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mz/common/network/data/DataNTBanner;

    .line 582
    iget-object p2, p0, Lcom/mapps/android/view/AdView$2;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {p2, p1}, Lcom/mapps/android/view/AdView;->setAdverInfoBean(Lcom/mz/common/network/data/DataNTBanner;)V

    .line 583
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTBanner;->l()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTBanner;->l()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_7

    .line 584
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTBanner;->l()Ljava/lang/String;

    move-result-object p2

    const-string p3, "0"

    .line 585
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 587
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTBanner;->j()Ljava/lang/String;

    move-result-object p2

    .line 588
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTBanner;->d()Ljava/lang/String;

    move-result-object p1

    const-string p3, "1"

    .line 589
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "4"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 590
    iget-object p1, p0, Lcom/mapps/android/view/AdView$2;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$1(Lcom/mapps/android/view/AdView;)V

    goto/16 :goto_0

    .line 592
    :cond_0
    iget-object p1, p0, Lcom/mapps/android/view/AdView$2;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$2(Lcom/mapps/android/view/AdView;)V

    goto/16 :goto_0

    :cond_1
    const-string p3, "1"

    .line 598
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 599
    iget-object p1, p0, Lcom/mapps/android/view/AdView$2;->this$0:Lcom/mapps/android/view/AdView;

    const/16 p2, -0x12c

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    goto/16 :goto_0

    :cond_2
    const-string p3, "2"

    .line 600
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 601
    iget-object p1, p0, Lcom/mapps/android/view/AdView$2;->this$0:Lcom/mapps/android/view/AdView;

    const/16 p2, -0x190

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    goto :goto_0

    :cond_3
    const-string p3, "3"

    .line 602
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 603
    iget-object p1, p0, Lcom/mapps/android/view/AdView$2;->this$0:Lcom/mapps/android/view/AdView;

    const/16 p2, -0x1f4

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    goto :goto_0

    :cond_4
    const-string p3, "4"

    .line 604
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 605
    iget-object p1, p0, Lcom/mapps/android/view/AdView$2;->this$0:Lcom/mapps/android/view/AdView;

    const/16 p2, -0x258

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    goto :goto_0

    :cond_5
    const-string p3, "5"

    .line 606
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 608
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTBanner;->j()Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    .line 609
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 610
    iget-object p1, p0, Lcom/mapps/android/view/AdView$2;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$1(Lcom/mapps/android/view/AdView;)V

    goto :goto_0

    .line 612
    :cond_6
    iget-object p1, p0, Lcom/mapps/android/view/AdView$2;->this$0:Lcom/mapps/android/view/AdView;

    const/16 p2, -0x2bc

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    goto :goto_0

    .line 620
    :cond_7
    iget-object p1, p0, Lcom/mapps/android/view/AdView$2;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {p1, p4}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    goto :goto_0

    .line 622
    :cond_8
    sget-object p1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->TIMEOUT:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p2, p1, :cond_9

    .line 623
    iget-object p1, p0, Lcom/mapps/android/view/AdView$2;->this$0:Lcom/mapps/android/view/AdView;

    const/16 p2, -0x7d0

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    goto :goto_0

    .line 625
    :cond_9
    iget-object p1, p0, Lcom/mapps/android/view/AdView$2;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {p1, p4}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    :cond_a
    :goto_0
    return-void
.end method

.method public onInternetNotSupport(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0

    .line 575
    iget-object p1, p0, Lcom/mapps/android/view/AdView$2;->this$0:Lcom/mapps/android/view/AdView;

    const/16 p2, -0x64

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    return-void
.end method
