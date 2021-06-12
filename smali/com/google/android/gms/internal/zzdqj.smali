.class final Lcom/google/android/gms/internal/zzdqj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdpw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzdpw<",
        "Lcom/google/android/gms/internal/zzdpp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdpp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdrm;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdrm;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdrm;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/zzdrm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrm;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdvk;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrm;->c()Lcom/google/android/gms/internal/zzfes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfes;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdvk;->a(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrm;->b()Lcom/google/android/gms/internal/zzdrq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdrq;->a()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrm;->b()Lcom/google/android/gms/internal/zzdrq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdrq;->a()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/zzdty;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrm;->c()Lcom/google/android/gms/internal/zzfes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfes;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrm;->b()Lcom/google/android/gms/internal/zzdrq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrq;->a()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzdty;-><init>([BI)V

    check-cast v0, Lcom/google/android/gms/internal/zzdpp;

    return-object v0

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesEaxKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesEaxKey proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/zzfes;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdqj;->d(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdpp;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/zzfhe;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdrm;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/zzdrm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrm;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdvk;->a(II)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrm;->c()Lcom/google/android/gms/internal/zzfes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfes;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdvk;->a(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrm;->b()Lcom/google/android/gms/internal/zzdrq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdrq;->a()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrm;->b()Lcom/google/android/gms/internal/zzdrq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdrq;->a()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/zzdty;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrm;->c()Lcom/google/android/gms/internal/zzfes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfes;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrm;->b()Lcom/google/android/gms/internal/zzdrq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrq;->a()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzdty;-><init>([BI)V

    return-object v0

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesEaxKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzfhe;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdro;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdro;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdqj;->b(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesEaxKeyFormat proto"

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

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdro;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/zzdro;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdro;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdvk;->a(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdro;->a()Lcom/google/android/gms/internal/zzdrq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdrq;->a()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdro;->a()Lcom/google/android/gms/internal/zzdrq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdrq;->a()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size; acceptable values have 12 or 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/zzdrm;->d()Lcom/google/android/gms/internal/zzdrm$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdro;->b()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzdvi;->a(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzfes;->zzaz([B)Lcom/google/android/gms/internal/zzfes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzdrm$zza;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdrm$zza;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdro;->a()Lcom/google/android/gms/internal/zzdrq;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdrm$zza;->a(Lcom/google/android/gms/internal/zzdrq;)Lcom/google/android/gms/internal/zzdrm$zza;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzdrm$zza;->a(I)Lcom/google/android/gms/internal/zzdrm$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzffu;

    return-object p1

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesEaxKeyFormat proto"

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdqj;->b(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzdrm;

    invoke-static {}, Lcom/google/android/gms/internal/zzdsy;->d()Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesEaxKey"

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
