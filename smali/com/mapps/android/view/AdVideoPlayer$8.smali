.class Lcom/mapps/android/view/AdVideoPlayer$8;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->SendRequestVideoInfo()V
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
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$8;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 268
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5

    .line 273
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$8;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    new-instance v1, Lcom/mz/common/network/Nt;

    iget-object v2, p0, Lcom/mapps/android/view/AdVideoPlayer$8;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v2}, Lcom/mapps/android/view/AdVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/mz/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$15(Lcom/mapps/android/view/AdVideoPlayer;Lcom/mz/common/network/Nt;)V

    .line 274
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$8;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$16(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mz/common/network/Nt;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$8;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$17(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mz/common/network/Nt$OnProgressbarListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/Nt;->a(Lcom/mz/common/network/Nt$OnProgressbarListener;)V

    .line 275
    new-instance v0, Lcom/mz/common/network/request/RequestMovie;

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$8;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v1}, Lcom/mapps/android/view/AdVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/mz/common/network/request/RequestMovie;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 276
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$8;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$18(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mz/common/network/request/OnConnectionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mz/common/network/request/RequestMovie;->a(Lcom/mz/common/network/request/OnConnectionListener;)V

    .line 277
    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$8;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$16(Lcom/mapps/android/view/AdVideoPlayer;)Lcom/mz/common/network/Nt;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/mz/common/network/request/RequestNTCommon;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/mz/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 279
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
