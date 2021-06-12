.class Lcom/mapps/android/view/EndingAdView$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mz/common/network/request/OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->requestSSPClick(Lcom/mz/common/network/data/DataNTSSP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;

.field private final synthetic val$data:Lcom/mz/common/network/data/DataNTSSP;

.field private final synthetic val$request_key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;Lcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$28;->this$0:Lcom/mapps/android/view/EndingAdView;

    iput-object p2, p0, Lcom/mapps/android/view/EndingAdView$28;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    iput-object p3, p0, Lcom/mapps/android/view/EndingAdView$28;->val$request_key:Ljava/lang/String;

    .line 1196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnection(Landroid/content/Context;Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;Lcom/mz/common/network/request/RequestNTCommon;Landroid/os/Message;)V
    .locals 0

    .line 1206
    sget-object p1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    if-ne p2, p1, :cond_0

    .line 1207
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "sendapi -->"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mapps/android/view/EndingAdView$28;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : success"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 1208
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$28;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    sget-object p2, Lcom/mz/common/network/data/DataNTSSP$SSPCLICK;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/mz/common/network/data/DataNTSSP;->p(Ljava/lang/String;)V

    .line 1209
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$28;->val$request_key:Ljava/lang/String;

    sput-object p1, Lcom/mapps/android/view/EndingAdView;->SAVEREQUESTKEY:Ljava/lang/String;

    .line 1210
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "sendapi -->request_key : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mapps/android/view/EndingAdView$28;->val$request_key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/mapps/android/view/EndingAdView$28;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : success"

    .line 1211
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1213
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "sendapi -->"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mapps/android/view/EndingAdView$28;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->j()Ljava/lang/String;

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

    .line 1200
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "sendapi -->"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/mapps/android/view/EndingAdView$28;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {p2}, Lcom/mz/common/network/data/DataNTSSP;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : onInternetNotSupport"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    return-void
.end method
