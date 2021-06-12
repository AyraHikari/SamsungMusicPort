.class Lcom/google/android/gms/internal/zzdqh;
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


# static fields
.field private static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzdqh;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzdqh;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    new-instance v1, Lcom/google/android/gms/internal/zzdqi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzdqi;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdqe;->a(Ljava/lang/String;Lcom/google/android/gms/internal/zzdpw;)V

    return-void
.end method

.method private final d(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdpp;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdrc;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdrc;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdrc;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzdrc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrc;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdvk;->a(II)V

    new-instance v0, Lcom/google/android/gms/internal/zzdut;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrc;->b()Lcom/google/android/gms/internal/zzdrg;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzdqe;->b(Ljava/lang/String;Lcom/google/android/gms/internal/zzfhe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzdvf;

    const-string v2, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrc;->c()Lcom/google/android/gms/internal/zzdss;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzdqe;->b(Ljava/lang/String;Lcom/google/android/gms/internal/zzfhe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzdqa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrc;->c()Lcom/google/android/gms/internal/zzdss;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdss;->b()Lcom/google/android/gms/internal/zzdsw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsw;->b()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzdut;-><init>(Lcom/google/android/gms/internal/zzdvf;Lcom/google/android/gms/internal/zzdqa;I)V

    check-cast v0, Lcom/google/android/gms/internal/zzdpp;

    return-object v0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrHmacAeadKey proto"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesCtrHmacAeadKey proto"

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

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdqh;->d(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdpp;

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

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdrc;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzdrc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrc;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdvk;->a(II)V

    new-instance v0, Lcom/google/android/gms/internal/zzdut;

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrc;->b()Lcom/google/android/gms/internal/zzdrg;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzdqe;->b(Ljava/lang/String;Lcom/google/android/gms/internal/zzfhe;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzdvf;

    const-string v2, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrc;->c()Lcom/google/android/gms/internal/zzdss;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzdqe;->b(Ljava/lang/String;Lcom/google/android/gms/internal/zzfhe;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzdqa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdrc;->c()Lcom/google/android/gms/internal/zzdss;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdss;->b()Lcom/google/android/gms/internal/zzdsw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdsw;->b()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzdut;-><init>(Lcom/google/android/gms/internal/zzdvf;Lcom/google/android/gms/internal/zzdqa;I)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrHmacAeadKey proto"

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
    invoke-static {p1}, Lcom/google/android/gms/internal/zzdre;->a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdre;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdqh;->b(Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzfge; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "expected serialized AesCtrHmacAeadKeyFormat proto"

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

    instance-of v0, p1, Lcom/google/android/gms/internal/zzdre;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzdre;

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdre;->a()Lcom/google/android/gms/internal/zzdri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzdqe;->a(Ljava/lang/String;Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzdrg;

    const-string v1, "type.googleapis.com/google.crypto.tink.HmacKey"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzdre;->b()Lcom/google/android/gms/internal/zzdsu;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzdqe;->a(Ljava/lang/String;Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzdss;

    invoke-static {}, Lcom/google/android/gms/internal/zzdrc;->d()Lcom/google/android/gms/internal/zzdrc$zza;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzdrc$zza;->a(Lcom/google/android/gms/internal/zzdrg;)Lcom/google/android/gms/internal/zzdrc$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdrc$zza;->a(Lcom/google/android/gms/internal/zzdss;)Lcom/google/android/gms/internal/zzdrc$zza;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzdrc$zza;->a(I)Lcom/google/android/gms/internal/zzdrc$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxt()Lcom/google/android/gms/internal/zzffu;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzffu;

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "expected AesCtrHmacAeadKeyFormat proto"

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzdqh;->b(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzdrc;

    invoke-static {}, Lcom/google/android/gms/internal/zzdsy;->d()Lcom/google/android/gms/internal/zzdsy$zza;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

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
