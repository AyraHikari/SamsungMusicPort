.class Lcom/mapps/android/view/AdView$7;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdView;
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
    iput-object p1, p0, Lcom/mapps/android/view/AdView$7;->this$0:Lcom/mapps/android/view/AdView;

    .line 1196
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1198
    iget-object p1, p0, Lcom/mapps/android/view/AdView$7;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mapps/android/view/AdView;->access$10(Lcom/mapps/android/view/AdView;Z)V

    .line 1199
    iget-object p1, p0, Lcom/mapps/android/view/AdView$7;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$11(Lcom/mapps/android/view/AdView;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p1, v1}, Lcom/mapps/android/view/AdView;->access$12(Lcom/mapps/android/view/AdView;I)V

    .line 1200
    iget-object p1, p0, Lcom/mapps/android/view/AdView$7;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$11(Lcom/mapps/android/view/AdView;)I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 1201
    iget-object p1, p0, Lcom/mapps/android/view/AdView$7;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$5(Lcom/mapps/android/view/AdView;)Lcom/mz/common/network/data/DataNTBanner;

    move-result-object p1

    iget-object v0, p0, Lcom/mapps/android/view/AdView$7;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$13(Lcom/mapps/android/view/AdView;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mz/common/network/data/DataNTBanner;->a(Ljava/lang/String;)V

    .line 1202
    iget-object p1, p0, Lcom/mapps/android/view/AdView$7;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {p1}, Lcom/mapps/android/view/AdView;->SetRotateTimer()V

    goto :goto_0

    .line 1204
    :cond_0
    iget-object p1, p0, Lcom/mapps/android/view/AdView$7;->this$0:Lcom/mapps/android/view/AdView;

    const/16 v0, -0x384

    invoke-static {p1, v0}, Lcom/mapps/android/view/AdView;->access$0(Lcom/mapps/android/view/AdView;I)V

    .line 1205
    iget-object p1, p0, Lcom/mapps/android/view/AdView$7;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {p1}, Lcom/mapps/android/view/AdView;->StopService()V

    :goto_0
    return-void
.end method
