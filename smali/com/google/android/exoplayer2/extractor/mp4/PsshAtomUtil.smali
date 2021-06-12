.class public final Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;
    }
.end annotation


# direct methods
.method public static a([B)Ljava/util/UUID;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 90
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->c([B)Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->a(Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;)Ljava/util/UUID;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/UUID;[B)[B
    .locals 1
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 41
    invoke-static {p0, v0, p1}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->a(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/UUID;[Ljava/util/UUID;[B)[B
    .locals 7
    .param p1    # [Ljava/util/UUID;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 55
    array-length v2, p2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v3, v2, 0x20

    if-eqz v1, :cond_2

    .line 58
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    .line 60
    :cond_2
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 61
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 62
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->U:I

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_3

    const/high16 v3, 0x1000000

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 63
    :goto_2
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 64
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 65
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_4

    .line 67
    array-length p0, p1

    invoke-virtual {v4, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 68
    array-length p0, p1

    :goto_3
    if-ge v0, p0, :cond_4

    aget-object v1, p1, v0

    .line 69
    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    .line 74
    array-length p0, p2

    invoke-virtual {v4, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 77
    :cond_5
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BLjava/util/UUID;)[B
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 126
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->c([B)Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 130
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->a(Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "PsshAtomUtil"

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UUID mismatch. Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", got: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->a(Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;)Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 134
    :cond_1
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->c(Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;)[B

    move-result-object p0

    return-object p0
.end method

.method public static b([B)I
    .locals 0

    .line 107
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil;->c([B)Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 111
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;->b(Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;)I

    move-result p0

    return p0
.end method

.method private static c([B)Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;
    .locals 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 146
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 147
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c()I

    move-result p0

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-ge p0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 p0, 0x0

    .line 151
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->c(I)V

    .line 152
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v2

    .line 153
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->b()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    if-eq v2, v3, :cond_1

    return-object v1

    .line 157
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v2

    .line 158
    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->U:I

    if-eq v2, v3, :cond_2

    return-object v1

    .line 162
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->o()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->a(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    const-string p0, "PsshAtomUtil"

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported pssh version: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 167
    :cond_3
    new-instance v4, Ljava/util/UUID;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->q()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->q()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v2, v3, :cond_4

    .line 169
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    .line 170
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->d(I)V

    .line 172
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->u()I

    move-result v3

    .line 173
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->b()I

    move-result v5

    if-eq v3, v5, :cond_5

    return-object v1

    .line 177
    :cond_5
    new-array v1, v3, [B

    .line 178
    invoke-virtual {v0, v1, p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->a([BII)V

    .line 179
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;

    invoke-direct {p0, v4, v2, v1}, Lcom/google/android/exoplayer2/extractor/mp4/PsshAtomUtil$PsshAtom;-><init>(Ljava/util/UUID;I[B)V

    return-object p0
.end method
