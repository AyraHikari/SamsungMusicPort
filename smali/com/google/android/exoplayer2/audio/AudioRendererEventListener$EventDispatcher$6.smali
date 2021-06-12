.class Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;I)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$6;->b:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iput p2, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$6;->b:Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->a(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$6;->a:I

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;->a(I)V

    return-void
.end method
