.class public final Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/VideoRendererEventListener;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 123
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 124
    iput-object p2, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->b:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->b:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    return-object p0
.end method


# virtual methods
.method public a(IIIF)V
    .locals 8

    .line 190
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->b:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$5;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$5;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;IIIF)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(IJ)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->b:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$4;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->b:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$6;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->b:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$3;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->b:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$1;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 9

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->b:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$2;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->b:Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$7;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$7;-><init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
