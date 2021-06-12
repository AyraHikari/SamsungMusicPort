.class public Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalListeners"
.end annotation


# instance fields
.field final synthetic a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;


# direct methods
.method public constructor <init>(Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    iput p2, v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->i:I

    .line 410
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->o:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->o:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 417
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->COMPLETED:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v0, p1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 418
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz p1, :cond_0

    .line 419
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->m:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const-string p1, "ContentValues"

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->ERROR:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v0, p1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 435
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->q:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->q:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    invoke-interface {p1, v0, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->r:Landroid/media/MediaPlayer$OnInfoListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->r:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 440
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;->PREPARED:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    iput-object v1, v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$State;

    .line 442
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->n:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->n:Landroid/media/MediaPlayer$OnPreparedListener;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v1, v1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->f:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->d:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$Callback;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$Callback;->d(II)V

    .line 448
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    iget-wide v0, p1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->h:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 449
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    iget-wide v0, v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->h:J

    invoke-virtual {p1, v0, v1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a(J)V

    .line 452
    :cond_1
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    iget-boolean p1, p1, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->g:Z

    if-eqz p1, :cond_2

    .line 453
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->a()V

    :cond_2
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->p:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->p:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 464
    iget-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;

    iget-object p2, p2, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate;->d:Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$Callback;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-interface {p2, p3, p1}, Lcom/devbrackets/android/exomedia/core/video/mp/NativeVideoDelegate$Callback;->d(II)V

    return-void
.end method
