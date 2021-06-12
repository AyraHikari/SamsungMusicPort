.class final Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/HeartView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HeartFrame"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/HeartView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/HeartView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartFrame;->a:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2

    .line 47
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartFrame;->a:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 48
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartFrame;->a:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->a(Lcom/samsung/android/app/music/player/fullplayer/HeartView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;

    .line 49
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartParticle;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartFrame;->a:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->a(Lcom/samsung/android/app/music/player/fullplayer/HeartView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartFrame;->a:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->invalidate()V

    .line 54
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartFrame;->a:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->a(Lcom/samsung/android/app/music/player/fullplayer/HeartView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 55
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartFrame;->a:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->b(Lcom/samsung/android/app/music/player/fullplayer/HeartView;)Landroid/view/Choreographer;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_1

    .line 57
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/HeartView$HeartFrame;->a:Lcom/samsung/android/app/music/player/fullplayer/HeartView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/app/music/player/fullplayer/HeartView;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method
