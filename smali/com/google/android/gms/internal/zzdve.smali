.class public final Lcom/google/android/gms/internal/zzdve;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p2, p3, [B

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdve;->a:[B

    iget-object p2, p0, Lcom/google/android/gms/internal/zzdve;->a:[B

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static a([B)Lcom/google/android/gms/internal/zzdve;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-instance v1, Lcom/google/android/gms/internal/zzdve;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/zzdve;-><init>([BII)V

    return-object v1
.end method


# virtual methods
.method public final a()[B
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdve;->a:[B

    array-length v0, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdve;->a:[B

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdve;->a:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
