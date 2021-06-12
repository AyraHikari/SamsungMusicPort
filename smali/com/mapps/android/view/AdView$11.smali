.class Lcom/mapps/android/view/AdView$11;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->common(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    .line 190
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$53(Lcom/mapps/android/view/AdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/mapps/android/view/AdView$11;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$22(Lcom/mapps/android/view/AdView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/TraceGPS;->a(Landroid/content/Context;)V

    .line 199
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
