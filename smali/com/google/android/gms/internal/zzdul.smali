.class public final Lcom/google/android/gms/internal/zzdul;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdpv;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Lcom/google/android/gms/internal/zzdun;

.field private final c:Ljava/lang/String;

.field private final d:[B

.field private final e:Lcom/google/android/gms/internal/zzdus;

.field private final f:Lcom/google/android/gms/internal/zzduj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/zzdul;->a:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/zzdus;Lcom/google/android/gms/internal/zzduj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdup;->a(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    new-instance v0, Lcom/google/android/gms/internal/zzdun;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzdun;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdul;->b:Lcom/google/android/gms/internal/zzdun;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdul;->d:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdul;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzdul;->e:Lcom/google/android/gms/internal/zzdus;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzdul;->f:Lcom/google/android/gms/internal/zzduj;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdul;->b:Lcom/google/android/gms/internal/zzdun;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdul;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdul;->d:[B

    iget-object v3, p0, Lcom/google/android/gms/internal/zzdul;->f:Lcom/google/android/gms/internal/zzduj;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzduj;->a()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzdul;->e:Lcom/google/android/gms/internal/zzdus;

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzdun;->a(Ljava/lang/String;[B[BILcom/google/android/gms/internal/zzdus;)Lcom/google/android/gms/internal/zzduo;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdul;->f:Lcom/google/android/gms/internal/zzduj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzduo;->b()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzduj;->a([B)Lcom/google/android/gms/internal/zzdpp;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzdul;->a:[B

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzdpp;->a([B[B)[B

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzduo;->a()[B

    move-result-object p2

    array-length v0, p2

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method
