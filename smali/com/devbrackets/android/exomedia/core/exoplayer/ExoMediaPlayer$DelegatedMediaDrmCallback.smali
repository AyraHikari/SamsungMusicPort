.class Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$DelegatedMediaDrmCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/MediaDrmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelegatedMediaDrmCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)V
    .locals 0

    .line 735
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$DelegatedMediaDrmCallback;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$1;)V
    .locals 0

    .line 735
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$DelegatedMediaDrmCallback;-><init>(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$DelegatedMediaDrmCallback;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->b(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$DelegatedMediaDrmCallback;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->b(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/MediaDrmCallback;->a(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    :goto_0
    return-object p1
.end method

.method public a(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$DelegatedMediaDrmCallback;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->b(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$DelegatedMediaDrmCallback;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->b(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/MediaDrmCallback;->a(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [B

    :goto_0
    return-object p1
.end method
