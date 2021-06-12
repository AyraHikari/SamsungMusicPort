.class public final Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private b:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->a:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    const/4 p1, -0x1

    .line 123
    iput p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->e:I

    const/high16 p1, 0x100000

    .line 124
    iput p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->f:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->g:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    .line 139
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->b:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-object p0
.end method

.method public a(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;
    .locals 10

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->g:Z

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->b:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->b:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 216
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->a:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->b:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    iget v5, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->e:I

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->c:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->f:I

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->d:Ljava/lang/Object;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;ILjava/lang/String;ILjava/lang/Object;Lcom/google/android/exoplayer2/source/ExtractorMediaSource$1;)V

    return-object v0
.end method

.method public synthetic b(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ExtractorMediaSource$Factory;->a(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    return-object p1
.end method
