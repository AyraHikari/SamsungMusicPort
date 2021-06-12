.class Lcom/mapps/android/view/AdInterstitialView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mz/common/network/request/OnConnectionListener;


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
    iput-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$3;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnection(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0

    .line 389
    sget-object p1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    const/16 p4, -0xc8

    if-ne p2, p1, :cond_8

    .line 390
    invoke-virtual {p3}, Lcom/mz/common/network/request/RequestNTCommon;->h()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mz/common/network/data/DataNTMutiInter;

    .line 391
    iget-object p2, p0, Lcom/mapps/android/view/AdInterstitialView$3;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {p2, p1}, Lcom/mapps/android/view/AdInterstitialView;->access$3(Lcom/mapps/android/view/AdInterstitialView;Lcom/mz/common/network/data/DataNTMutiInter;)V

    .line 392
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTMutiInter;->l()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTMutiInter;->l()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_7

    .line 393
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTMutiInter;->l()Ljava/lang/String;

    move-result-object p2

    const-string p3, "0"

    .line 394
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 396
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTMutiInter;->c()Ljava/lang/String;

    move-result-object p2

    .line 397
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTMutiInter;->b()Ljava/lang/String;

    move-result-object p3

    const-string p4, "1"

    .line 411
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "4"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 412
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$3;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {p1}, Lcom/mapps/android/view/AdInterstitialView;->access$4(Lcom/mapps/android/view/AdInterstitialView;)V

    goto/16 :goto_0

    .line 414
    :cond_0
    iget-object p2, p0, Lcom/mapps/android/view/AdInterstitialView$3;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {p2, p1}, Lcom/mapps/android/view/AdInterstitialView;->access$5(Lcom/mapps/android/view/AdInterstitialView;Lcom/mz/common/network/data/DataNTMutiInter;)V

    goto/16 :goto_0

    :cond_1
    const-string p3, "1"

    .line 421
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 422
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$3;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/16 p2, -0x12c

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdInterstitialView;->access$2(Lcom/mapps/android/view/AdInterstitialView;I)V

    goto/16 :goto_0

    :cond_2
    const-string p3, "2"

    .line 423
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 424
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$3;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/16 p2, -0x190

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdInterstitialView;->access$2(Lcom/mapps/android/view/AdInterstitialView;I)V

    goto :goto_0

    :cond_3
    const-string p3, "3"

    .line 425
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 426
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$3;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/16 p2, -0x1f4

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdInterstitialView;->access$2(Lcom/mapps/android/view/AdInterstitialView;I)V

    goto :goto_0

    :cond_4
    const-string p3, "4"

    .line 427
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 428
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$3;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/16 p2, -0x258

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdInterstitialView;->access$2(Lcom/mapps/android/view/AdInterstitialView;I)V

    goto :goto_0

    :cond_5
    const-string p3, "5"

    .line 429
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 431
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTMutiInter;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    .line 432
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 433
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$3;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {p1}, Lcom/mapps/android/view/AdInterstitialView;->access$4(Lcom/mapps/android/view/AdInterstitialView;)V

    goto :goto_0

    .line 435
    :cond_6
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$3;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/16 p2, -0x2bc

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdInterstitialView;->access$2(Lcom/mapps/android/view/AdInterstitialView;I)V

    goto :goto_0

    .line 443
    :cond_7
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$3;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {p1, p4}, Lcom/mapps/android/view/AdInterstitialView;->access$2(Lcom/mapps/android/view/AdInterstitialView;I)V

    goto :goto_0

    .line 445
    :cond_8
    sget-object p1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->TIMEOUT:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p2, p1, :cond_9

    .line 446
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$3;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/16 p2, -0x7d0

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdInterstitialView;->access$2(Lcom/mapps/android/view/AdInterstitialView;I)V

    goto :goto_0

    .line 448
    :cond_9
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$3;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    invoke-static {p1, p4}, Lcom/mapps/android/view/AdInterstitialView;->access$2(Lcom/mapps/android/view/AdInterstitialView;I)V

    :cond_a
    :goto_0
    return-void
.end method

.method public onInternetNotSupport(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0

    .line 383
    iget-object p1, p0, Lcom/mapps/android/view/AdInterstitialView$3;->this$0:Lcom/mapps/android/view/AdInterstitialView;

    const/16 p2, -0x64

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdInterstitialView;->access$2(Lcom/mapps/android/view/AdInterstitialView;I)V

    return-void
.end method
