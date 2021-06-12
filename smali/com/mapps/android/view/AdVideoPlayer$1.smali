.class Lcom/mapps/android/view/AdVideoPlayer$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdVideoPlayer;
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
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$1;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 195
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$1;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$0(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mz/common/TraceGPS;->a(Landroid/content/Context;)V

    .line 199
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
