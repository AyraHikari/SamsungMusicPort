.class Lcom/mapps/android/view/EndingAdView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mz/common/network/request/OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/EndingAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$4;->this$0:Lcom/mapps/android/view/EndingAdView;

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnection(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0

    .line 642
    sget-object p1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    const/16 p4, -0xc8

    if-ne p2, p1, :cond_9

    .line 643
    invoke-virtual {p3}, Lcom/mz/common/network/request/RequestNTCommon;->h()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mz/common/network/data/DataNTEnd;

    .line 644
    iget-object p2, p0, Lcom/mapps/android/view/EndingAdView$4;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {p2, p1}, Lcom/mapps/android/view/EndingAdView;->access$2(Lcom/mapps/android/view/EndingAdView;Lcom/mz/common/network/data/DataNTEnd;)V

    .line 645
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTEnd;->l()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTEnd;->l()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_8

    .line 646
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTEnd;->l()Ljava/lang/String;

    move-result-object p2

    .line 647
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTEnd;->g()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTEnd;->g()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_0

    .line 648
    iget-object p3, p0, Lcom/mapps/android/view/EndingAdView$4;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTEnd;->g()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    invoke-static {p3, p4}, Lcom/mapps/android/view/EndingAdView;->access$3(Lcom/mapps/android/view/EndingAdView;I)V

    :cond_0
    const-string p3, "0"

    .line 650
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 653
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTEnd;->c()Ljava/lang/String;

    move-result-object p2

    .line 654
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTEnd;->b()Ljava/lang/String;

    move-result-object p1

    const-string p3, "1"

    .line 655
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "4"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 656
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$4;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {p1}, Lcom/mapps/android/view/EndingAdView;->access$4(Lcom/mapps/android/view/EndingAdView;)V

    goto/16 :goto_0

    .line 658
    :cond_1
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$4;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {p1}, Lcom/mapps/android/view/EndingAdView;->access$5(Lcom/mapps/android/view/EndingAdView;)V

    goto/16 :goto_0

    :cond_2
    const-string p3, "1"

    .line 665
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 666
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$4;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/16 p2, -0x12c

    invoke-static {p1, p2}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;I)V

    goto/16 :goto_0

    :cond_3
    const-string p3, "2"

    .line 667
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 668
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$4;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/16 p2, -0x190

    invoke-static {p1, p2}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;I)V

    goto :goto_0

    :cond_4
    const-string p3, "3"

    .line 669
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 670
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$4;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/16 p2, -0x1f4

    invoke-static {p1, p2}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;I)V

    goto :goto_0

    :cond_5
    const-string p3, "4"

    .line 671
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 672
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$4;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/16 p2, -0x258

    invoke-static {p1, p2}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;I)V

    goto :goto_0

    :cond_6
    const-string p3, "5"

    .line 673
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 675
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTEnd;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    .line 676
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 677
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$4;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {p1}, Lcom/mapps/android/view/EndingAdView;->access$4(Lcom/mapps/android/view/EndingAdView;)V

    goto :goto_0

    .line 679
    :cond_7
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$4;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/16 p2, -0x2bc

    invoke-static {p1, p2}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;I)V

    goto :goto_0

    .line 687
    :cond_8
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$4;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {p1, p4}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;I)V

    goto :goto_0

    .line 689
    :cond_9
    sget-object p1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->TIMEOUT:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p2, p1, :cond_a

    .line 690
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$4;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/16 p2, -0x7d0

    invoke-static {p1, p2}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;I)V

    goto :goto_0

    .line 692
    :cond_a
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$4;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {p1, p4}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;I)V

    :cond_b
    :goto_0
    return-void
.end method

.method public onInternetNotSupport(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0

    .line 637
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$4;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/16 p2, -0x64

    invoke-static {p1, p2}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;I)V

    return-void
.end method
