.class public abstract Lcom/google/android/gms/internal/zzdub;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdvf;


# static fields
.field static final a:[I

.field private static final c:[B


# instance fields
.field final b:Lcom/google/android/gms/internal/zzdve;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [B

    sput-object v1, Lcom/google/android/gms/internal/zzdub;->c:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdub;->a(Ljava/nio/ByteBuffer;)[I

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzdub;->a:[I

    return-void

    :array_0
    .array-data 1
        0x65t
        0x78t
        0x70t
        0x61t
        0x6et
        0x64t
        0x20t
        0x33t
        0x32t
        0x2dt
        0x62t
        0x79t
        0x74t
        0x65t
        0x20t
        0x6bt
    .end array-data
.end method

.method constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdve;->a([B)Lcom/google/android/gms/internal/zzdve;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdub;->b:Lcom/google/android/gms/internal/zzdve;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The key length in bytes must be 32."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static a(II)I
    .locals 1

    shl-int v0, p0, p1

    neg-int p1, p1

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method private static a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/zzduf;)V
    .locals 6

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v2, v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x40

    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzduf;->a()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method static a(Ljava/nio/ByteBuffer;)[I
    .locals 1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    return-object v0
.end method

.method static b([B)Lcom/google/android/gms/internal/zzdub;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzdud;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzdud;-><init>([BLcom/google/android/gms/internal/zzduc;)V

    return-object v0
.end method


# virtual methods
.method abstract a()I
.end method

.method final a(Ljava/nio/ByteBuffer;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    array-length v0, p2

    const v1, 0x7ffffff3

    if-gt v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    array-length v1, p2

    const/16 v2, 0xc

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    invoke-static {v2}, Lcom/google/android/gms/internal/zzdvi;->a(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzdub;->c([B)Lcom/google/android/gms/internal/zzduf;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/zzdub;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/zzduf;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given ByteBuffer output is too small"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    array-length v0, p1

    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzdub;->a(Ljava/nio/ByteBuffer;[B)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method abstract a([BI)[I
.end method

.method final a([I)[I
    .locals 4

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzdub;->b([I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, v0, v1

    aget v3, p1, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method abstract b([I)V
.end method

.method abstract c([B)Lcom/google/android/gms/internal/zzduf;
.end method

.method abstract c([I)V
.end method
