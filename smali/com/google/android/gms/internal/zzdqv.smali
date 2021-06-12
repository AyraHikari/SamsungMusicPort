.class final Lcom/google/android/gms/internal/zzdqv;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/gms/internal/zzdso;)Lcom/google/android/gms/internal/zzdur;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzdqw;->b:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdso;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unknown curve type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/zzdur;->zzlzg:Lcom/google/android/gms/internal/zzdur;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/zzdur;->zzlzf:Lcom/google/android/gms/internal/zzdur;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/zzdur;->zzlze:Lcom/google/android/gms/internal/zzdur;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/google/android/gms/internal/zzdsa;)Lcom/google/android/gms/internal/zzdus;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzdqw;->c:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdsa;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unknown point format: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/zzdus;->zzlzj:Lcom/google/android/gms/internal/zzdus;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/zzdus;->zzlzi:Lcom/google/android/gms/internal/zzdus;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/google/android/gms/internal/zzdsq;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzdqw;->a:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdsq;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "hash unsupported for HMAC: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string p0, "HmacSha512"

    return-object p0

    :pswitch_1
    const-string p0, "HmacSha256"

    return-object p0

    :pswitch_2
    const-string p0, "HmacSha1"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/google/android/gms/internal/zzdsg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdsg;->a()Lcom/google/android/gms/internal/zzdsm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsm;->a()Lcom/google/android/gms/internal/zzdso;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqv;->a(Lcom/google/android/gms/internal/zzdso;)Lcom/google/android/gms/internal/zzdur;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdup;->a(Lcom/google/android/gms/internal/zzdur;)Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdsg;->a()Lcom/google/android/gms/internal/zzdsm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsm;->b()Lcom/google/android/gms/internal/zzdsq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqv;->a(Lcom/google/android/gms/internal/zzdsq;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdsg;->c()Lcom/google/android/gms/internal/zzdsa;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzdsa;->zzluk:Lcom/google/android/gms/internal/zzdsa;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdsg;->b()Lcom/google/android/gms/internal/zzdsc;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdsc;->a()Lcom/google/android/gms/internal/zzdtd;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzdqe;->a(Lcom/google/android/gms/internal/zzdtd;)Lcom/google/android/gms/internal/zzdsy;

    return-void

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown EC point format"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
