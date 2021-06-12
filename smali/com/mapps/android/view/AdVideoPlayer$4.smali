.class Lcom/mapps/android/view/AdVideoPlayer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mz/common/network/request/OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnection(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0

    .line 362
    sget-object p1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    const/16 p4, -0x320

    if-ne p2, p1, :cond_4

    .line 363
    invoke-virtual {p3}, Lcom/mz/common/network/request/RequestNTCommon;->h()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mz/common/network/data/DataNTMovie;

    if-eqz p1, :cond_3

    .line 365
    iget-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p2, p1}, Lcom/mapps/android/view/AdVideoPlayer;->access$8(Lcom/mapps/android/view/AdVideoPlayer;Lcom/mz/common/network/data/DataNTMovie;)V

    const-string p2, "n"

    .line 366
    invoke-static {p2}, Lcom/mapps/android/view/AdVideoPlayer;->access$4(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTMovie;->d()Ljava/lang/String;

    move-result-object p2

    .line 369
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTMovie;->e()Ljava/lang/String;

    move-result-object p3

    .line 370
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTMovie;->a()I

    move-result p1

    if-lez p1, :cond_1

    const-string p1, "1"

    .line 372
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "4"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 373
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p1}, Lcom/mapps/android/view/AdVideoPlayer;->access$9(Lcom/mapps/android/view/AdVideoPlayer;)V

    goto :goto_0

    .line 375
    :cond_0
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p2}, Lcom/mapps/android/view/AdVideoPlayer;->access$7(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mz/common/network/data/DataNTMovie;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdVideoPlayer;->access$6(Lcom/mapps/android/view/AdVideoPlayer;Lcom/mz/common/network/data/DataNTMovie;)V

    goto :goto_0

    :cond_1
    const-string p1, "1"

    .line 378
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 379
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p1}, Lcom/mapps/android/view/AdVideoPlayer;->access$9(Lcom/mapps/android/view/AdVideoPlayer;)V

    goto :goto_0

    .line 381
    :cond_2
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/16 p2, -0x2bc

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdVideoPlayer;->access$1(Lcom/mapps/android/view/AdVideoPlayer;I)Z

    goto :goto_0

    .line 389
    :cond_3
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p1, p4}, Lcom/mapps/android/view/AdVideoPlayer;->access$1(Lcom/mapps/android/view/AdVideoPlayer;I)Z

    goto :goto_0

    .line 391
    :cond_4
    sget-object p1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_DATA_NULL:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p2, p1, :cond_5

    .line 392
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/16 p2, -0xbb8

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdVideoPlayer;->access$1(Lcom/mapps/android/view/AdVideoPlayer;I)Z

    goto :goto_0

    .line 393
    :cond_5
    sget-object p1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->CODE_ERROR:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    const/16 p3, -0xc8

    if-ne p2, p1, :cond_6

    .line 394
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p1, p3}, Lcom/mapps/android/view/AdVideoPlayer;->access$1(Lcom/mapps/android/view/AdVideoPlayer;I)Z

    goto :goto_0

    .line 395
    :cond_6
    sget-object p1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->SERVER_FAIL:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p2, p1, :cond_7

    .line 396
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p1, p3}, Lcom/mapps/android/view/AdVideoPlayer;->access$1(Lcom/mapps/android/view/AdVideoPlayer;I)Z

    goto :goto_0

    .line 398
    :cond_7
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p1, p4}, Lcom/mapps/android/view/AdVideoPlayer;->access$1(Lcom/mapps/android/view/AdVideoPlayer;I)Z

    :goto_0
    return-void
.end method

.method public onInternetNotSupport(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0

    .line 357
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$4;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/16 p2, -0x64

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdVideoPlayer;->access$1(Lcom/mapps/android/view/AdVideoPlayer;I)Z

    return-void
.end method
