.class Lcom/mapps/android/view/AdVideoPlayer$2;
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
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$2;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 238
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .line 241
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$2;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-boolean p1, p1, Lcom/mapps/android/view/AdVideoPlayer;->adInterval:Z

    if-nez p1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$2;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/16 v0, -0x3e8

    invoke-static {p1, v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$1(Lcom/mapps/android/view/AdVideoPlayer;I)Z

    return-void

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$2;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p1}, Lcom/mapps/android/view/AdVideoPlayer;->access$0(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mz/common/MZUtils;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 246
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$2;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$2(Lcom/mapps/android/view/AdVideoPlayer;I)V

    .line 247
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$2;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {p1}, Lcom/mapps/android/view/AdVideoPlayer;->access$3(Lcom/mapps/android/view/AdVideoPlayer;)V

    goto :goto_0

    .line 249
    :cond_1
    iget-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$2;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/16 v0, -0x64

    invoke-static {p1, v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$1(Lcom/mapps/android/view/AdVideoPlayer;I)Z

    :goto_0
    return-void
.end method
