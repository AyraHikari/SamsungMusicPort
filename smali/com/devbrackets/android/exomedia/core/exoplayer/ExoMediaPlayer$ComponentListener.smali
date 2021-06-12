.class Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
.implements Lcom/google/android/exoplayer2/metadata/MetadataOutput;
.implements Lcom/google/android/exoplayer2/text/TextOutput;
.implements Lcom/google/android/exoplayer2/video/VideoRendererEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$1;)V
    .locals 0

    .line 771
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;-><init>(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-static {v0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;I)I

    return-void
.end method

.method public a(IIIF)V
    .locals 2

    .line 836
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->d(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;

    .line 837
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;->a(IIIF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(IJ)V
    .locals 0

    return-void
.end method

.method public a(IJJ)V
    .locals 7

    .line 804
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->c(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;->a(IJJ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->e(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->e(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 855
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->f(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/devbrackets/android/exomedia/core/listener/CaptionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->f(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/devbrackets/android/exomedia/core/listener/CaptionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/core/listener/CaptionListener;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1

    .line 784
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$ComponentListener;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;I)I

    return-void
.end method

.method public b(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    return-void
.end method
