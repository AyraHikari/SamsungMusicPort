.class Lcom/mapps/android/view/EndingAdView$15;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->requestUseSSp()V
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
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$15;->this$0:Lcom/mapps/android/view/EndingAdView;

    .line 461
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/EndingAdView$15;)Lcom/mapps/android/view/EndingAdView;
    .locals 0

    .line 461
    iget-object p0, p0, Lcom/mapps/android/view/EndingAdView$15;->this$0:Lcom/mapps/android/view/EndingAdView;

    return-object p0
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5

    .line 466
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$15;->this$0:Lcom/mapps/android/view/EndingAdView;

    new-instance v1, Lcom/mz/common/network/Nt;

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$15;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {v2}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/mz/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$19(Lcom/mapps/android/view/EndingAdView;Lcom/mz/common/network/Nt;)V

    .line 467
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$15;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$20(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/Nt;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$15;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$21(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/Nt$OnProgressbarListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/Nt;->a(Lcom/mz/common/network/Nt$OnProgressbarListener;)V

    .line 474
    new-instance v0, Lcom/mz/common/network/request/RequestSSP;

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$15;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {v1}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/mz/common/network/request/RequestSSP;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 475
    new-instance v1, Lcom/mapps/android/view/EndingAdView$15$1;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/EndingAdView$15$1;-><init>(Lcom/mapps/android/view/EndingAdView$15;)V

    invoke-virtual {v0, v1}, Lcom/mz/common/network/request/RequestSSP;->a(Lcom/mz/common/network/request/OnConnectionListener;)V

    .line 506
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$15;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v1}, Lcom/mapps/android/view/EndingAdView;->access$20(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/Nt;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/mz/common/network/request/RequestNTCommon;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/mz/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 508
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
