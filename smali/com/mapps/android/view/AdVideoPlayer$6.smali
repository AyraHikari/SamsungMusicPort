.class Lcom/mapps/android/view/AdVideoPlayer$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->common(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$6;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 187
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdVideoPlayer$6;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$0(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapps/android/share/ShareUtil;->getIsGPS(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "1"

    .line 188
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$6;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$10(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
