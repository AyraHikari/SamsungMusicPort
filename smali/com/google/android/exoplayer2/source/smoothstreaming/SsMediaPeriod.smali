.class final Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/MediaPeriod;",
        "Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback<",
        "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
        "Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

.field private final b:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

.field private final c:I

.field private final d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final e:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private final f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final g:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

.field private final h:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

.field private i:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field private j:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

.field private k:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/android/exoplayer2/source/SequenceableLoader;

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;ILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/upstream/Allocator;)V
    .locals 8

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->a:Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    .line 66
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->b:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    .line 67
    iput p4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->c:I

    .line 68
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 69
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->e:Lcom/google/android/exoplayer2/upstream/Allocator;

    .line 70
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->h:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    .line 72
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->b(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 73
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->e:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    .line 75
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;->b:[B

    invoke-static {p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->a([B)[B

    move-result-object v4

    const/4 p2, 0x1

    .line 77
    new-array p2, p2, [Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    new-instance p6, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    aput-object p6, p2, p4

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->g:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 80
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->g:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 82
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->j:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 83
    invoke-static {p4}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->a(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->k:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 84
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->k:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 85
    invoke-interface {p3, p1}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;->a([Lcom/google/android/exoplayer2/source/SequenceableLoader;)Lcom/google/android/exoplayer2/source/SequenceableLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->l:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    .line 86
    invoke-virtual {p5}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->a()V

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/trackselection/TrackSelection;J)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            "J)",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource;",
            ">;"
        }
    .end annotation

    move-object v11, p0

    .line 214
    iget-object v0, v11, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->f()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->a(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v0

    .line 215
    iget-object v2, v11, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->a:Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;

    iget-object v3, v11, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->b:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    iget-object v4, v11, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->j:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v7, v11, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->g:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move v5, v0

    move-object v6, p1

    invoke-interface/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;->a(Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;ILcom/google/android/exoplayer2/trackselection/TrackSelection;[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource;

    move-result-object v4

    .line 217
    new-instance v12, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    iget-object v1, v11, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->j:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->f:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    aget-object v0, v1, v0

    iget v1, v0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->a:I

    iget-object v6, v11, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->e:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget v9, v11, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->c:I

    iget-object v10, v11, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v12

    move-object v5, p0

    move-wide v7, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;-><init>(I[I[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/chunk/ChunkSource;Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;Lcom/google/android/exoplayer2/upstream/Allocator;JILcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)V

    return-object v12
.end method

.method private static a([BII)V
    .locals 2

    .line 259
    aget-byte v0, p0, p1

    .line 260
    aget-byte v1, p0, p2

    aput-byte v1, p0, p1

    .line 261
    aput-byte v0, p0, p2

    return-void
.end method

.method private static a([B)[B
    .locals 4

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 244
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 245
    aget-byte v3, p0, v2

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "<KID>"

    .line 249
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x5

    add-int/2addr v0, v2

    const-string v3, "</KID>"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 248
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 250
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const/4 v0, 0x3

    .line 251
    invoke-static {p0, v1, v0}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->a([BII)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 252
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->a([BII)V

    const/4 v0, 0x4

    .line 253
    invoke-static {p0, v0, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->a([BII)V

    const/4 v0, 0x6

    const/4 v1, 0x7

    .line 254
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->a([BII)V

    return-object p0
.end method

.method private static a(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource;",
            ">;"
        }
    .end annotation

    .line 239
    new-array p0, p0, [Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    return-object p0
.end method

.method private static b(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;)Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 4

    .line 230
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->f:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v1, 0x0

    .line 231
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->f:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 232
    new-instance v2, Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;->f:[Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->j:[Lcom/google/android/exoplayer2/Format;

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    :cond_0
    new-instance p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    return-object p0
.end method


# virtual methods
.method public a(JLcom/google/android/exoplayer2/SeekParameters;)J
    .locals 6

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->k:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 196
    iget v4, v3, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 197
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide p1
.end method

.method public a([Lcom/google/android/exoplayer2/trackselection/TrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 4

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 124
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 125
    aget-object v2, p3, v1

    if-eqz v2, :cond_2

    .line 127
    aget-object v2, p3, v1

    check-cast v2, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 128
    aget-object v3, p1, v1

    if-eqz v3, :cond_1

    aget-boolean v3, p2, v1

    if-nez v3, :cond_0

    goto :goto_1

    .line 132
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 129
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->f()V

    const/4 v2, 0x0

    .line 130
    aput-object v2, p3, v1

    .line 135
    :cond_2
    :goto_2
    aget-object v2, p3, v1

    if-nez v2, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_3

    .line 136
    aget-object v2, p1, v1

    invoke-direct {p0, v2, p5, p6}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->a(Lcom/google/android/exoplayer2/trackselection/TrackSelection;J)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object v2

    .line 137
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    aput-object v2, p3, v1

    const/4 v2, 0x1

    .line 139
    aput-boolean v2, p4, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->a(I)[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->k:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 143
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->k:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 144
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->h:Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->k:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    .line 145
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoaderFactory;->a([Lcom/google/android/exoplayer2/source/SequenceableLoader;)Lcom/google/android/exoplayer2/source/SequenceableLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->l:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    return-wide p5
.end method

.method public a(J)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->l:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->a(J)V

    return-void
.end method

.method public a(JZ)V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->k:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 152
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->i:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 107
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->a(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 41
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->a(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource;",
            ">;)V"
        }
    .end annotation

    .line 207
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->i:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;)V
    .locals 4

    .line 90
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->j:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->k:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 92
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->a()Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource;

    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource;->a(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->i:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->a(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public b(J)J
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->k:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 188
    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->b(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public b()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->f:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 173
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->m:Z

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->c()V

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->m:Z

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public c(J)Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->l:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->c(J)Z

    move-result p1

    return p1
.end method

.method public c_()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->b:Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/LoaderErrorThrower;->a()V

    return-void
.end method

.method public d()J
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->l:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->l:Lcom/google/android/exoplayer2/source/SequenceableLoader;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->k:[Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 99
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->f()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaPeriod;->d:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->b()V

    return-void
.end method
