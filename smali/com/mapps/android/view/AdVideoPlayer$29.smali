.class Lcom/mapps/android/view/AdVideoPlayer$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->onConfigurationChanged(Landroid/content/res/Configuration;)V
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
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$29;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 1985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1987
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$29;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$59(Lcom/mapps/android/view/AdVideoPlayer;)Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$29;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    iget-object v0, v0, Lcom/mapps/android/view/AdVideoPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$29;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdVideoPlayer;->arrangeVideo()V

    :cond_0
    return-void
.end method
