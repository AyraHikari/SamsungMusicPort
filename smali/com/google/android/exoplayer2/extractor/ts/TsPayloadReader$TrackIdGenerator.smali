.class public final Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrackIdGenerator"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/high16 v0, -0x80000000

    .line 123
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->a:Ljava/lang/String;

    .line 128
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->b:I

    .line 129
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->c:I

    .line 130
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    return-void
.end method

.method private d()V
    .locals 2

    .line 168
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return-void

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "generateNewId() must be called before retrieving ids."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 138
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->b:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->c:I

    add-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->e:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    .line 149
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->d()V

    .line 150
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 163
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->d()V

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->e:Ljava/lang/String;

    return-object v0
.end method
