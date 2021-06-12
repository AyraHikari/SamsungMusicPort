.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

.field private final b:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private e:I

.field private f:J

.field private g:Z

.field private h:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 0
    .param p2    # Lcom/google/android/exoplayer2/upstream/DataSource$Factory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->a:Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    .line 84
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->b:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    const/4 p1, 0x3

    .line 85
    iput p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->e:I

    const-wide/16 p1, 0x7530

    .line 86
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->f:J

    .line 87
    new-instance p1, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->d:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;
    .locals 13

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->g:Z

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->c:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->c:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    .line 217
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    const/4 v2, 0x0

    .line 219
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->b:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->c:Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->a:Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->d:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget v8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->e:I

    iget-wide v9, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->f:J

    iget-object v11, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->h:Ljava/lang/Object;

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;IJLjava/lang/Object;Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$1;)V

    return-object v0
.end method

.method public synthetic b(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->a(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    move-result-object p1

    return-object p1
.end method
