.class public final Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field private final c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->c:Ljava/lang/String;

    .line 52
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->a:J

    .line 53
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->b:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/UriUtil;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 8
    .param p1    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 90
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 91
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_2

    .line 93
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->b:J

    const-wide/16 v4, -0x1

    cmp-long p2, v2, v4

    if-eqz p2, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->a:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->b:J

    add-long/2addr v2, v6

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->a:J

    cmp-long p2, v2, v6

    if-nez p2, :cond_2

    .line 94
    new-instance p2, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->a:J

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->b:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->b:J

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->b:J

    add-long/2addr v4, v6

    :goto_0
    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object p2

    .line 96
    :cond_2
    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->b:J

    cmp-long p2, v2, v4

    if-eqz p2, :cond_4

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->a:J

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->b:J

    add-long/2addr v2, v6

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->a:J

    cmp-long p2, v2, v6

    if-nez p2, :cond_4

    .line 97
    new-instance p2, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->a:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->b:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->b:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->b:J

    add-long/2addr v4, v6

    :goto_1
    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object p2

    :cond_4
    return-object v0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/UriUtil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 124
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 125
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->a:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->b:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->c:Ljava/lang/String;

    .line 127
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 106
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->d:I

    if-nez v0, :cond_0

    const/16 v0, 0x20f

    .line 108
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->a:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 109
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->b:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 110
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->d:I

    .line 113
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangedUri(referenceUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
