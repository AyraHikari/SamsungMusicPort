.class Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->b(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

.field final synthetic b:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$5;->b:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$5;->a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$5;->a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderCounters;->a()V

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$5;->b:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$5;->a:Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->b(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method
