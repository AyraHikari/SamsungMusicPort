.class Lcom/mapps/android/view/EndingAdView$18;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->SendRequest(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    iput p2, p0, Lcom/mapps/android/view/EndingAdView$18;->val$type:I

    .line 571
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5

    .line 576
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    new-instance v1, Lcom/mz/common/network/Nt;

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {v2}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/mz/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$19(Lcom/mapps/android/view/EndingAdView;Lcom/mz/common/network/Nt;)V

    .line 577
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$20(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/Nt;

    move-result-object v0

    new-instance v1, Lcom/mapps/android/view/EndingAdView$18$1;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/EndingAdView$18$1;-><init>(Lcom/mapps/android/view/EndingAdView$18;)V

    invoke-virtual {v0, v1}, Lcom/mz/common/network/Nt;->a(Lcom/mz/common/network/Nt$OnProgressbarListener;)V

    .line 595
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 596
    iget v1, p0, Lcom/mapps/android/view/EndingAdView$18;->val$type:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 597
    new-instance v1, Lcom/mz/common/network/request/RequestEnd;

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-virtual {v2}, Lcom/mapps/android/view/EndingAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/mz/common/network/request/RequestEnd;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 598
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$29(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/request/OnConnectionListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mz/common/network/request/RequestEnd;->a(Lcom/mz/common/network/request/OnConnectionListener;)V

    .line 599
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$18;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v0}, Lcom/mapps/android/view/EndingAdView;->access$20(Lcom/mapps/android/view/EndingAdView;)Lcom/mz/common/network/Nt;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/mz/common/network/request/RequestNTCommon;

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Lcom/mz/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 600
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
