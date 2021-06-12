.class Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->a(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;IJ)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$4;->c:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    iput p2, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$4;->a:I

    iput-wide p3, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$4;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$4;->c:Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;

    invoke-static {v0}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/video/VideoRendererEventListener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$4;->a:I

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$4;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener;->a(IJ)V

    return-void
.end method
