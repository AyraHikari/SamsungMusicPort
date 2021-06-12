.class public interface abstract Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/hls/DefaultHlsExtractorFactory;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;->a:Lcom/google/android/exoplayer2/source/hls/HlsExtractorFactory;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/extractor/Extractor;Landroid/net/Uri;Lcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/util/TimestampAdjuster;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "Lcom/google/android/exoplayer2/util/TimestampAdjuster;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
