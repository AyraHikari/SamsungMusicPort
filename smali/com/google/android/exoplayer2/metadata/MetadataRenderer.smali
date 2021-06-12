.class public final Lcom/google/android/exoplayer2/metadata/MetadataRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

.field private final b:Lcom/google/android/exoplayer2/metadata/MetadataOutput;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/google/android/exoplayer2/FormatHolder;

.field private final e:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

.field private final f:[Lcom/google/android/exoplayer2/metadata/Metadata;

.field private final g:[J

.field private h:I

.field private i:I

.field private j:Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;)V
    .locals 1

    const/4 v0, 0x4

    .line 83
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 84
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/metadata/MetadataOutput;

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->b:Lcom/google/android/exoplayer2/metadata/MetadataOutput;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 85
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->c:Landroid/os/Handler;

    .line 86
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->a:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    .line 87
    new-instance p1, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/FormatHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->d:Lcom/google/android/exoplayer2/FormatHolder;

    .line 88
    new-instance p1, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->e:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    const/4 p1, 0x5

    .line 89
    new-array p2, p1, [Lcom/google/android/exoplayer2/metadata/Metadata;

    iput-object p2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->f:[Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 90
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->g:[J

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 168
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->b(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    :goto_0
    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->b:Lcom/google/android/exoplayer2/metadata/MetadataOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/metadata/MetadataOutput;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method private w()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->f:[Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 174
    iput v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->h:I

    .line 175
    iput v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->i:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->a:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 96
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->i:Lcom/google/android/exoplayer2/drm/DrmInitData;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->a(Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmInitData;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a(JJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 115
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->k:Z

    const/4 p4, 0x5

    const/4 v0, 0x1

    if-nez p3, :cond_2

    iget p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->i:I

    if-ge p3, p4, :cond_2

    .line 116
    iget-object p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->e:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->a()V

    .line 117
    iget-object p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->d:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->e:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v1, v2}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->a(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p3

    const/4 v1, -0x4

    if-ne p3, v1, :cond_2

    .line 119
    iget-object p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->e:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 120
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->k:Z

    goto :goto_0

    .line 121
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->e:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->d_()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    iget-object p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->e:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->d:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v1, v1, Lcom/google/android/exoplayer2/FormatHolder;->a:Lcom/google/android/exoplayer2/Format;

    iget-wide v1, v1, Lcom/google/android/exoplayer2/Format;->w:J

    iput-wide v1, p3, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->d:J

    .line 127
    iget-object p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->e:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->h()V

    .line 129
    :try_start_0
    iget p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->h:I

    iget v1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->i:I

    add-int/2addr p3, v1

    rem-int/2addr p3, p4

    .line 130
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->f:[Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->j:Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->e:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/metadata/MetadataDecoder;->a(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    aput-object v2, v1, p3

    .line 131
    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->g:[J

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->e:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->c:J

    aput-wide v2, v1, p3

    .line 132
    iget p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->i:I

    add-int/2addr p3, v0

    iput p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->i:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/metadata/MetadataDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 134
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->s()I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Exception;I)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    .line 140
    :cond_2
    :goto_0
    iget p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->i:I

    if-lez p3, :cond_3

    iget-object p3, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->g:[J

    iget v1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->h:I

    aget-wide v1, p3, v1

    cmp-long p1, v1, p1

    if-gtz p1, :cond_3

    .line 141
    iget-object p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->f:[Lcom/google/android/exoplayer2/metadata/Metadata;

    iget p2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->h:I

    aget-object p1, p1, p2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    .line 142
    iget-object p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->f:[Lcom/google/android/exoplayer2/metadata/Metadata;

    iget p2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->h:I

    const/4 p3, 0x0

    aput-object p3, p1, p2

    .line 143
    iget p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->h:I

    add-int/2addr p1, v0

    rem-int/2addr p1, p4

    iput p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->h:I

    .line 144
    iget p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->i:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->i:I

    :cond_3
    return-void
.end method

.method protected a(JZ)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->w()V

    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->k:Z

    return-void
.end method

.method protected a([Lcom/google/android/exoplayer2/Format;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 104
    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->a:Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/metadata/MetadataDecoderFactory;->b(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->j:Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 181
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 183
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->b(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    const/4 p1, 0x1

    return p1

    .line 187
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method protected p()V
    .locals 1

    .line 150
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->w()V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->j:Lcom/google/android/exoplayer2/metadata/MetadataDecoder;

    return-void
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public v()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/MetadataRenderer;->k:Z

    return v0
.end method
