.class final Lcom/google/android/gms/internal/zzdqy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdpw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzdpw<",
        "Lcom/google/android/gms/internal/zzdqa;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/zzdsw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdsw;->b()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/zzdqz;->a:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdsw;->a()Lcom/google/android/gms/internal/zzdsq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzdsq;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdsw;->b()I

    move-result p0

    const/16 v0, 0x40

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too big"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdsw;->b()I

    move-result p0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too big"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdsw;->b()I

    move-result p0

    const/16 v0, 0x14

    if-gt p0, v0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too big"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "tag size too small"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final d(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdqa;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdss;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdss;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdss;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/zzdss;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdss;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdvk;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdss;->c()Lcom/google/android/gms/internal/zzfes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfes;->size()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdss;->b()Lcom/google/android/gms/internal/zzdsw;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqy;->a(Lcom/google/android/gms/internal/zzdsw;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdss;->b()Lcom/google/android/gms/internal/zzdsw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsw;->a()Lcom/google/android/gms/internal/zzdsq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdss;->c()Lcom/google/android/gms/internal/zzfes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfes;->toByteArray()[B

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HMAC"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdss;->b()Lcom/google/android/gms/internal/zzdsw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsw;->b()I

    move-result p1

    sget-object v1, Lcom/google/android/gms/internal/zzdqz;->a:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsq;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/security/GeneralSecurityException;

    goto :goto_1

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/zzdvg;

    const-string v1, "HMACSHA512"

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzdvg;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/zzdvg;

    const-string v1, "HMACSHA256"

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzdvg;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/google/android/gms/internal/zzdvg;

    const-string v1, "HMACSHA1"

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzdvg;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    :goto_0
    check-cast v0, Lcom/google/android/gms/internal/zzdqa;

    return-object v0

    :goto_1
    const-string v0, "unknown hash"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected HmacKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized HmacKey proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/zzfes;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdqy;->d(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdqa;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/zzfhe;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdss;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/zzdss;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdss;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdvk;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdss;->c()Lcom/google/android/gms/internal/zzfes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfes;->size()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdss;->b()Lcom/google/android/gms/internal/zzdsw;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqy;->a(Lcom/google/android/gms/internal/zzdsw;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdss;->b()Lcom/google/android/gms/internal/zzdsw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsw;->a()Lcom/google/android/gms/internal/zzdsq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdss;->c()Lcom/google/android/gms/internal/zzfes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfes;->toByteArray()[B

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HMAC"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdss;->b()Lcom/google/android/gms/internal/zzdsw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsw;->b()I

    move-result p1

    sget-object v1, Lcom/google/android/gms/internal/zzdqz;->a:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdsq;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/zzdvg;

    const-string v1, "HMACSHA512"

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzdvg;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/zzdvg;

    const-string v1, "HMACSHA256"

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzdvg;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/google/android/gms/internal/zzdvg;

    const-string v1, "HMACSHA1"

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzdvg;-><init>(Ljava/lang/String;Ljava/security/Key;I)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected HmacKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzfhe;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdsu;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdsu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdqy;->b(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized HmacKeyFormat proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdsu;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/zzdsu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsu;->b()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsu;->a()Lcom/google/android/gms/internal/zzdsw;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdqy;->a(Lcom/google/android/gms/internal/zzdsw;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzdss;->d()Lcom/google/android/gms/internal/zzdss$zza;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdss$zza;->a(I)Lcom/google/android/gms/internal/zzdss$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsu;->a()Lcom/google/android/gms/internal/zzdsw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdss$zza;->a(Lcom/google/android/gms/internal/zzdsw;)Lcom/google/android/gms/internal/zzdss$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsu;->b()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdvi;->a(I)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfes;->zzaz([B)Lcom/google/android/gms/internal/zzfes;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdss$zza;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdss$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzffu;

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key too short"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected HmacKeyFormat proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdsy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdqy;->b(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzdss;

    invoke-static {}, Lcom/google/android/gms/internal/zzdsy;->d()Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdsy$zza;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfek;->toByteString()Lcom/google/android/gms/internal/zzfes;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdsy$zza;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/zzdsy$zzb;->zzlwf:Lcom/google/android/gms/internal/zzdsy$zzb;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzdsy$zza;->a(Lcom/google/android/gms/internal/zzdsy$zzb;)Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzffu;

    check-cast p1, Lcom/google/android/gms/internal/zzdsy;

    return-object p1
.end method
