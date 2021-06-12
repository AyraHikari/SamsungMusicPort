.class Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/Format;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/Format;

.field final synthetic b:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$3;->b:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$3;->a:Lcom/google/android/exoplayer2/Format;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$3;->b:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$3;->a:Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->a(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method
