.class Lcom/mapps/android/view/AdVideoPlayer$21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->checkBuffer()V
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
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$21;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 897
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$21;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v0, v0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$21;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v0, v0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$21;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$41(Lcom/mapps/android/view/AdVideoPlayer;)I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 898
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$21;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    const/16 v1, -0x384

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->access$1(Lcom/mapps/android/view/AdVideoPlayer;I)Z

    .line 899
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$21;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdVideoPlayer;->selfDestoryPlayer()V

    :cond_0
    return-void
.end method
