.class public final Lcom/samsung/accessory/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/accessory/a/a/a;->a:[B

    iput p2, p0, Lcom/samsung/accessory/a/a/a;->b:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/accessory/a/a/a;->e:Z

    iput p1, p0, Lcom/samsung/accessory/a/a/a;->d:I

    iput p1, p0, Lcom/samsung/accessory/a/a/a;->c:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/a/a/a;->e:Z

    if-nez v0, :cond_0

    iput p1, p0, Lcom/samsung/accessory/a/a/a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot refer to a recycled buffer!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/accessory/a/a/c;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/a/a/a;->e:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/accessory/a/a/a;->c:I

    iget v1, p0, Lcom/samsung/accessory/a/a/a;->d:I

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    iget v1, p0, Lcom/samsung/accessory/a/a/a;->b:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/a/a/a;->a:[B

    iget v1, p0, Lcom/samsung/accessory/a/a/a;->c:I

    iget v2, p0, Lcom/samsung/accessory/a/a/a;->d:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/samsung/accessory/a/a/a;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/samsung/accessory/a/a/a;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot extract from byte[]. Buffer length exceeded! [buff offset="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/accessory/a/a/a;->c:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; payload len="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/accessory/a/a/a;->d:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; length to write = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; buff len = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/samsung/accessory/a/a/a;->b:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/samsung/accessory/a/a/c;

    invoke-direct {p2, p1}, Lcom/samsung/accessory/a/a/c;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to extract from a recycled buffer!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()[B
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/a/a/a;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/a/a/a;->a:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()[B
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/a/a/a;->e:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/accessory/a/a/a;->d:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/samsung/accessory/a/a/a;->a:[B

    iget v2, p0, Lcom/samsung/accessory/a/a/a;->c:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/accessory/a/a/a;->d:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/a/a/a;->e:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/accessory/a/a/a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/a/a/a;->e:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/accessory/a/a/a;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot refer to a recycled buffer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/accessory/a/a/a;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/accessory/a/a/a;->a:[B

    invoke-static {v0}, Lcom/samsung/accessory/a/a/d;->a([B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/accessory/a/a/a;->e:Z

    iget-boolean v0, p0, Lcom/samsung/accessory/a/a/a;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
