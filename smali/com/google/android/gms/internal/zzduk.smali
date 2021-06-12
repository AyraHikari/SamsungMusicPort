.class public final Lcom/google/android/gms/internal/zzduk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdpu;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Ljava/security/interfaces/ECPrivateKey;

.field private final c:Lcom/google/android/gms/internal/zzdum;

.field private final d:Ljava/lang/String;

.field private final e:[B

.field private final f:Lcom/google/android/gms/internal/zzdus;

.field private final g:Lcom/google/android/gms/internal/zzduj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/zzduk;->a:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/zzdus;Lcom/google/android/gms/internal/zzduj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzduk;->b:Ljava/security/interfaces/ECPrivateKey;

    new-instance v0, Lcom/google/android/gms/internal/zzdum;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzdum;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzduk;->c:Lcom/google/android/gms/internal/zzdum;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzduk;->e:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/zzduk;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzduk;->f:Lcom/google/android/gms/internal/zzdus;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzduk;->g:Lcom/google/android/gms/internal/zzduj;

    return-void
.end method
