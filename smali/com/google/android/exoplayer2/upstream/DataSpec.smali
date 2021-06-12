.class public final Lcom/google/android/exoplayer2/upstream/DataSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:[B

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final g:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 8

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    .line 107
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJJLjava/lang/String;I)V
    .locals 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    .line 148
    invoke-direct/range {v0 .. v10}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;)V
    .locals 10
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    .line 119
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;I)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 132
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    .locals 5
    .param p9    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 171
    :goto_0
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    cmp-long v4, p5, v2

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 172
    :goto_1
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    cmp-long v2, p7, v2

    if-gtz v2, :cond_2

    const-wide/16 v2, -0x1

    cmp-long v2, p7, v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 173
    :cond_3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->a(Z)V

    .line 174
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->a:Landroid/net/Uri;

    .line 175
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->b:[B

    .line 176
    iput-wide p3, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->c:J

    .line 177
    iput-wide p5, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->d:J

    .line 178
    iput-wide p7, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->e:J

    .line 179
    iput-object p9, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->f:Ljava/lang/String;

    .line 180
    iput p10, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->g:I

    return-void
.end method


# virtual methods
.method public a(J)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 4

    .line 206
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->e:J

    sub-long v2, v0, p1

    :goto_0
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/google/android/exoplayer2/upstream/DataSpec;->a(JJ)Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-result-object p1

    return-object p1
.end method

.method public a(JJ)Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 14

    move-object v0, p0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 217
    iget-wide v1, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->e:J

    cmp-long v1, v1, p3

    if-nez v1, :cond_0

    return-object v0

    .line 220
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v4, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->a:Landroid/net/Uri;

    iget-object v5, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->b:[B

    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->c:J

    add-long v6, v2, p1

    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->d:J

    add-long v8, v2, p1

    iget-object v12, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->f:Ljava/lang/String;

    iget v13, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->g:I

    move-object v3, v1

    move-wide/from16 v10, p3

    invoke-direct/range {v3 .. v13}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    return-object v1
.end method

.method public a(I)Z
    .locals 1

    .line 189
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->g:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataSpec["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/upstream/DataSpec;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
