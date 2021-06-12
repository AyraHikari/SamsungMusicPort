.class Lcom/mapps/android/view/AdView$4;
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
    iput-object p1, p0, Lcom/mapps/android/view/AdView$4;->this$0:Lcom/mapps/android/view/AdView;

    .line 1028
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .line 1031
    iget-object p1, p0, Lcom/mapps/android/view/AdView$4;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v0, p0, Lcom/mapps/android/view/AdView$4;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$5(Lcom/mapps/android/view/AdView;)Lcom/mz/common/network/data/DataNTBanner;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mapps/android/view/AdView;->access$6(Lcom/mapps/android/view/AdView;Lcom/mz/common/network/data/DataNTBanner;)V

    .line 1032
    iget-object p1, p0, Lcom/mapps/android/view/AdView$4;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {p1}, Lcom/mapps/android/view/AdView;->getMedia_type()I

    move-result p1

    if-eqz p1, :cond_0

    .line 1033
    iget-object p1, p0, Lcom/mapps/android/view/AdView$4;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$7(Lcom/mapps/android/view/AdView;)V

    :cond_0
    return-void
.end method
