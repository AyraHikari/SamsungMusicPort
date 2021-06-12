.class public interface abstract Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;->a:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/Format;)Z
.end method

.method public abstract b(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/metadata/MetadataDecoder;
.end method
