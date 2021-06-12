.class public abstract Lcom/google/android/gms/internal/zzdug;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdpp;


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzdub;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzdub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdug;->a:Lcom/google/android/gms/internal/zzdub;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzdub;Lcom/google/android/gms/internal/zzduh;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdug;-><init>(Lcom/google/android/gms/internal/zzdub;)V

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzdug;->b(I)I

    move-result p0

    return p0
.end method

.method public static a([B)Lcom/google/android/gms/internal/zzdug;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzdui;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzdub;->b([B)Lcom/google/android/gms/internal/zzdub;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzdui;-><init>(Lcom/google/android/gms/internal/zzdub;Lcom/google/android/gms/internal/zzduh;)V

    return-object v0
.end method

.method private static b(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x10

    add-int/lit8 p0, p0, -0x1

    div-int/lit8 p0, p0, 0x10

    shl-int/lit8 p0, p0, 0x4

    return p0
.end method


# virtual methods
.method abstract a([BLjava/nio/ByteBuffer;)[B
.end method

.method public final a([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdug;->a:Lcom/google/android/gms/internal/zzdub;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdub;->a()I

    move-result v0

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    array-length v2, p1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdug;->a:Lcom/google/android/gms/internal/zzdub;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdub;->a()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x10

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdug;->a:Lcom/google/android/gms/internal/zzdub;

    invoke-virtual {v2, v0, p1}, Lcom/google/android/gms/internal/zzdub;->a(Ljava/nio/ByteBuffer;[B)V

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdug;->a:Lcom/google/android/gms/internal/zzdub;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdub;->a()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdug;->a:Lcom/google/android/gms/internal/zzdub;

    new-instance v2, Lcom/google/android/gms/internal/zzduf;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3}, Lcom/google/android/gms/internal/zzduf;-><init>(Lcom/google/android/gms/internal/zzdub;[BI)V

    const/16 p1, 0x20

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzduf;->a(I)[B

    move-result-object p1

    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/zzdug;->a([BLjava/nio/ByteBuffer;)[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzdvh;->a([B[B)[B

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    add-int/lit8 p2, p2, 0x10

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given ByteBuffer output is too small"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
