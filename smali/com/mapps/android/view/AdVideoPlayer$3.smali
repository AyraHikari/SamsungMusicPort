.class Lcom/mapps/android/view/AdVideoPlayer$3;
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
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$3;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnection(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0

    .line 321
    sget-object p1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    const/16 p4, -0x2bc

    if-ne p2, p1, :cond_2

    .line 322
    invoke-virtual {p3}, Lcom/mz/common/network/request/RequestNTCommon;->h()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mz/common/network/data/DataNTMovie;

    if-eqz p1, :cond_0

    const-string p2, "y"

    .line 324
    invoke-static {p2}, Lcom/mapps/android/view/AdVideoPlayer;->access$4(Ljava/lang/String;)V

    .line 325
    iget-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer$3;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p2, p1}, Lcom/mapps/android/view/AdVideoPlayer;->access$5(Lcom/mapps/android/view/AdVideoPlayer;Lcom/mz/common/network/data/DataNTMovie;)V

    .line 326
    iget-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer$3;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p2, p1}, Lcom/mapps/android/view/AdVideoPlayer;->access$6(Lcom/mapps/android/view/AdVideoPlayer;Lcom/mz/common/network/data/DataNTMovie;)V

    goto :goto_0

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$3;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p1}, Lcom/mapps/android/view/AdVideoPlayer;->access$7(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mz/common/network/data/DataNTMovie;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 329
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$3;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer$3;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p2}, Lcom/mapps/android/view/AdVideoPlayer;->access$7(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mz/common/network/data/DataNTMovie;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdVideoPlayer;->access$6(Lcom/mapps/android/view/AdVideoPlayer;Lcom/mz/common/network/data/DataNTMovie;)V

    goto :goto_0

    .line 331
    :cond_1
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$3;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p1, p4}, Lcom/mapps/android/view/AdVideoPlayer;->access$1(Lcom/mapps/android/view/AdVideoPlayer;I)Z

    goto :goto_0

    .line 334
    :cond_2
    sget-object p1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->TIMEOUT:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p2, p1, :cond_3

    .line 335
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$3;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/16 p2, -0x7d0

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdVideoPlayer;->access$1(Lcom/mapps/android/view/AdVideoPlayer;I)Z

    goto :goto_0

    .line 337
    :cond_3
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$3;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p1}, Lcom/mapps/android/view/AdVideoPlayer;->access$7(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mz/common/network/data/DataNTMovie;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 338
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$3;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object p2, p0, Lcom/mapps/android/view/AdVideoPlayer$3;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p2}, Lcom/mapps/android/view/AdVideoPlayer;->access$7(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mz/common/network/data/DataNTMovie;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mapps/android/view/AdVideoPlayer;->access$6(Lcom/mapps/android/view/AdVideoPlayer;Lcom/mz/common/network/data/DataNTMovie;)V

    goto :goto_0

    .line 340
    :cond_4
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$3;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p1, p4}, Lcom/mapps/android/view/AdVideoPlayer;->access$1(Lcom/mapps/android/view/AdVideoPlayer;I)Z

    :goto_0
    return-void
.end method

.method public onInternetNotSupport(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0

    return-void
.end method
