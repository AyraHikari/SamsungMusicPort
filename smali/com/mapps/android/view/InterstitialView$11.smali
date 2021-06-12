.class Lcom/mapps/android/view/InterstitialView$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mz/common/network/request/OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/InterstitialView;->requestSSPClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/InterstitialView;

.field private final synthetic val$request_key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/InterstitialView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView$11;->this$0:Lcom/mapps/android/view/InterstitialView;

    iput-object p2, p0, Lcom/mapps/android/view/InterstitialView$11;->val$request_key:Ljava/lang/String;

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnection(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0

    .line 1048
    sget-object p1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p2, p1, :cond_0

    .line 1049
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "sendapi -->"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mapps/android/view/InterstitialView$11;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {p2}, Lcom/mapps/android/view/InterstitialView;->access$34(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : success"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1051
    iget-object p1, p0, Lcom/mapps/android/view/InterstitialView$11;->val$request_key:Ljava/lang/String;

    invoke-static {p1}, Lcom/mapps/android/view/InterstitialView;->access$35(Ljava/lang/String;)V

    goto :goto_0

    .line 1053
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "sendapi -->"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mapps/android/view/InterstitialView$11;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {p2}, Lcom/mapps/android/view/InterstitialView;->access$34(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : fail"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onInternetNotSupport(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0

    .line 1043
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "sendapi -->"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mapps/android/view/InterstitialView$11;->this$0:Lcom/mapps/android/view/InterstitialView;

    invoke-static {p2}, Lcom/mapps/android/view/InterstitialView;->access$34(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : onInternetNotSupport"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    return-void
.end method
