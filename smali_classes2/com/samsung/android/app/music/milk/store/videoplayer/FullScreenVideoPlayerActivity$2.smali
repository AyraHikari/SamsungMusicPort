.class Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$2;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;Landroid/os/Handler;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$2;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 243
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$2;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$2;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method
