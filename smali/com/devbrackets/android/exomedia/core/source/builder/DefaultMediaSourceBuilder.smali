.class public Lcom/devbrackets/android/exomedia/core/source/builder/DefaultMediaSourceBuilder;
.super Lcom/devbrackets/android/exomedia/core/source/builder/MediaSourceBuilder;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/source/builder/MediaSourceBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/MediaSource;"
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p3, p5}, Lcom/devbrackets/android/exomedia/core/source/builder/DefaultMediaSourceBuilder;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    move-result-object p1

    .line 37
    new-instance p3, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    invoke-direct {p3, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance p1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    .line 38
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->a(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;

    move-result-object p1

    .line 39
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->a(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    return-object p1
.end method
