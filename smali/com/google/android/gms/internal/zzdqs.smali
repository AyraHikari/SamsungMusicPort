.class public final Lcom/google/android/gms/internal/zzdqs;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/internal/zzdtv;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/zzdtv;->b()Lcom/google/android/gms/internal/zzdtv$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzdqg;->a:Lcom/google/android/gms/internal/zzdtv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdtv$zza;

    const-string v1, "TinkHybrid"

    const-string v2, "HybridDecrypt"

    const-string v3, "EciesAeadHkdfPrivateKey"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v5, v4}, Lcom/google/android/gms/internal/zzdpr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/zzdtf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdtv$zza;->a(Lcom/google/android/gms/internal/zzdtf;)Lcom/google/android/gms/internal/zzdtv$zza;

    move-result-object v0

    const-string v1, "TinkHybrid"

    const-string v2, "HybridEncrypt"

    const-string v3, "EciesAeadHkdfPublicKey"

    invoke-static {v1, v2, v3, v5, v4}, Lcom/google/android/gms/internal/zzdpr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/google/android/gms/internal/zzdtf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdtv$zza;->a(Lcom/google/android/gms/internal/zzdtf;)Lcom/google/android/gms/internal/zzdtv$zza;

    move-result-object v0

    const-string v1, "TINK_HYBRID_1_0_0"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdtv$zza;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdtv$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu;

    check-cast v0, Lcom/google/android/gms/internal/zzdtv;

    sput-object v0, Lcom/google/android/gms/internal/zzdqs;->a:Lcom/google/android/gms/internal/zzdtv;

    :try_start_0
    const-string v0, "TinkHybrid"

    new-instance v1, Lcom/google/android/gms/internal/zzdqr;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzdqr;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdqe;->a(Ljava/lang/String;Lcom/google/android/gms/internal/zzdpq;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzdqg;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
