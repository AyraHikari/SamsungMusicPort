.class public final Lcom/google/android/gms/internal/zzhz;
.super Lcom/google/android/gms/internal/zzhq;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private b:Ljava/security/MessageDigest;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhq;-><init>()V

    div-int/lit8 v0, p1, 0x8

    rem-int/lit8 v1, p1, 0x8

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/zzhz;->c:I

    iput p1, p0, Lcom/google/android/gms/internal/zzhz;->d:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[B
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhz;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzhq;->a()Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzhz;->b:Ljava/security/MessageDigest;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhz;->b:Ljava/security/MessageDigest;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array p1, v2, [B

    monitor-exit v0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhz;->b:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhz;->b:Ljava/security/MessageDigest;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzhz;->b:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    array-length v1, p1

    iget v3, p0, Lcom/google/android/gms/internal/zzhz;->c:I

    if-le v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/zzhz;->c:I

    goto :goto_0

    :cond_1
    array-length v1, p1

    :goto_0
    new-array v1, v1, [B

    array-length v3, v1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/zzhz;->d:I

    const/16 v3, 0x8

    rem-int/2addr p1, v3

    if-lez p1, :cond_4

    const-wide/16 v4, 0x0

    :goto_1
    array-length p1, v1

    if-ge v2, p1, :cond_3

    if-lez v2, :cond_2

    shl-long/2addr v4, v3

    :cond_2
    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    int-to-long v6, p1

    add-long/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/google/android/gms/internal/zzhz;->d:I

    rem-int/2addr p1, v3

    rsub-int/lit8 p1, p1, 0x8

    ushr-long/2addr v4, p1

    iget p1, p0, Lcom/google/android/gms/internal/zzhz;->c:I

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_4

    const-wide/16 v6, 0xff

    and-long/2addr v6, v4

    long-to-int v2, v6

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    ushr-long/2addr v4, v3

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
