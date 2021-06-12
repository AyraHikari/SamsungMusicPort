.class Lcom/mapps/android/view/AdVideoPlayer$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mz/common/network/request/OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->SendRequestAd_Server(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$28;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 1897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnection(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0

    .line 1907
    iget-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1908
    sget-object p3, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p2, p3, :cond_0

    .line 1909
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "sendapi \ubdf0 \ub9ac\ud3ec\ud2b8 \uc804\uc1a1 \uc131\uacf5 ( "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1911
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "sendapi \ubdf0 \ub9ac\ud3ec\ud2b8 \uc804\uc1a1 \uc2e4\ud328 ( "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onInternetNotSupport(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0

    return-void
.end method
