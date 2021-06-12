.class Lcom/mapps/android/view/AdView$25;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->StartService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$25;->this$0:Lcom/mapps/android/view/AdView;

    .line 808
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4

    .line 813
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-wide/16 v1, 0x64

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/mapps/android/view/AdView$25;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$64(Lcom/mapps/android/view/AdView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/mapps/android/view/AdView$25;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$64(Lcom/mapps/android/view/AdView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/mapps/android/view/AdView$25;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$65(Lcom/mapps/android/view/AdView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 818
    iget-object v0, p0, Lcom/mapps/android/view/AdView$25;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$64(Lcom/mapps/android/view/AdView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/mapps/android/view/AdView$25;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$65(Lcom/mapps/android/view/AdView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 821
    :cond_0
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    iget-object v3, p0, Lcom/mapps/android/view/AdView$25;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mapps/android/share/ShareUtil;->getAdvertisingId(Landroid/content/Context;)V

    .line 822
    iget-object v0, p0, Lcom/mapps/android/view/AdView$25;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$64(Lcom/mapps/android/view/AdView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 823
    iget-object v0, p0, Lcom/mapps/android/view/AdView$25;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$64(Lcom/mapps/android/view/AdView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/mapps/android/view/AdView$25;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$65(Lcom/mapps/android/view/AdView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 824
    iget-object v0, p0, Lcom/mapps/android/view/AdView$25;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$64(Lcom/mapps/android/view/AdView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/mapps/android/view/AdView$25;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v3}, Lcom/mapps/android/view/AdView;->access$65(Lcom/mapps/android/view/AdView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 827
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$25;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$40(Lcom/mapps/android/view/AdView;Z)V

    .line 828
    iget-object v0, p0, Lcom/mapps/android/view/AdView$25;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$76(Lcom/mapps/android/view/AdView;Z)V

    .line 829
    iget-object v0, p0, Lcom/mapps/android/view/AdView$25;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$77(Lcom/mapps/android/view/AdView;Z)V

    .line 831
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
