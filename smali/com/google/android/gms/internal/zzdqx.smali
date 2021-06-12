.class final Lcom/google/android/gms/internal/zzdqx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzduj;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Lcom/google/android/gms/internal/zzdrs;

.field private d:Lcom/google/android/gms/internal/zzdrc;

.field private e:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdtd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdtd;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdqx;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdqx;->a:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdtd;->b()Lcom/google/android/gms/internal/zzfes;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdru;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdru;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdqe;->b(Lcom/google/android/gms/internal/zzdtd;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzdrs;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdqx;->c:Lcom/google/android/gms/internal/zzdrs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdru;->b()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzdqx;->b:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdqx;->a:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdtd;->b()Lcom/google/android/gms/internal/zzfes;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdre;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdre;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdqe;->b(Lcom/google/android/gms/internal/zzdtd;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzdrc;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdqx;->d:Lcom/google/android/gms/internal/zzdrc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdre;->a()Lcom/google/android/gms/internal/zzdri;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdri;->b()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzdqx;->e:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdre;->b()Lcom/google/android/gms/internal/zzdsu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsu;->b()I

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/zzdqx;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/zzdqx;->b:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unsupported AEAD DEM key type: "

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdqx;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzdqx;->b:I

    return v0
.end method

.method public final a([B)Lcom/google/android/gms/internal/zzdpp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdqx;->a:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzdrs;->c()Lcom/google/android/gms/internal/zzdrs$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdqx;->c:Lcom/google/android/gms/internal/zzdrs;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdrs$zza;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfes;->zzaz([B)Lcom/google/android/gms/internal/zzfes;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdrs$zza;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdrs$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzffu;

    check-cast p1, Lcom/google/android/gms/internal/zzdrs;

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdqx;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzdqe;->b(Ljava/lang/String;Lcom/google/android/gms/internal/zzfhe;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzdpp;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdqx;->a:Ljava/lang/String;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/zzdqx;->e:I

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzdqx;->e:I

    iget v2, p0, Lcom/google/android/gms/internal/zzdqx;->b:I

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/zzdrg;->d()Lcom/google/android/gms/internal/zzdrg$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdqx;->d:Lcom/google/android/gms/internal/zzdrc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdrc;->b()Lcom/google/android/gms/internal/zzdrg;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzdrg$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfes;->zzaz([B)Lcom/google/android/gms/internal/zzfes;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdrg$zza;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdrg$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu;

    check-cast v0, Lcom/google/android/gms/internal/zzdrg;

    invoke-static {}, Lcom/google/android/gms/internal/zzdss;->d()Lcom/google/android/gms/internal/zzdss$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdqx;->d:Lcom/google/android/gms/internal/zzdrc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdrc;->c()Lcom/google/android/gms/internal/zzdss;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzffu$zza;->zza(Lcom/google/android/gms/internal/zzffu;)Lcom/google/android/gms/internal/zzffu$zza;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzdss$zza;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfes;->zzaz([B)Lcom/google/android/gms/internal/zzfes;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzdss$zza;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdss$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzffu;

    check-cast p1, Lcom/google/android/gms/internal/zzdss;

    invoke-static {}, Lcom/google/android/gms/internal/zzdrc;->d()Lcom/google/android/gms/internal/zzdrc$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzdqx;->d:Lcom/google/android/gms/internal/zzdrc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdrc;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzdrc$zza;->a(I)Lcom/google/android/gms/internal/zzdrc$zza;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdrc$zza;->a(Lcom/google/android/gms/internal/zzdrg;)Lcom/google/android/gms/internal/zzdrc$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdrc$zza;->a(Lcom/google/android/gms/internal/zzdss;)Lcom/google/android/gms/internal/zzdrc$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzffu;

    check-cast p1, Lcom/google/android/gms/internal/zzdrc;

    goto/16 :goto_0

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown DEM key type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
