.class final Lcom/google/android/gms/internal/zzdqr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdpq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/internal/zzdpw;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x106b0411

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_1

    const v2, 0x54acdce9

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "hybridencrypt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "hybriddecrypt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/security/GeneralSecurityException;

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p2, p3, v5

    const-string p2, "No support for primitive \'%s\'."

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x17a169bf

    if-eq p2, v0, :cond_3

    goto :goto_2

    :cond_3
    const-string p2, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v3, 0x0

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    new-instance p2, Lcom/google/android/gms/internal/zzdqq;

    invoke-direct {p2}, Lcom/google/android/gms/internal/zzdqq;-><init>()V

    goto :goto_4

    :cond_5
    new-instance p2, Ljava/security/GeneralSecurityException;

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p1, p3, v5

    const-string p1, "No support for primitive \'HybridEncrypt\' with key type \'%s\'."

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x4c6bb8d

    if-eq p2, v0, :cond_6

    goto :goto_3

    :cond_6
    const-string p2, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 v3, 0x0

    :cond_7
    :goto_3
    if-nez v3, :cond_9

    new-instance p2, Lcom/google/android/gms/internal/zzdqp;

    invoke-direct {p2}, Lcom/google/android/gms/internal/zzdqp;-><init>()V

    :goto_4
    if-gtz p3, :cond_8

    return-object p2

    :cond_8
    new-instance p2, Ljava/security/GeneralSecurityException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "No key manager for key type \'%s\' with version at least %d."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    new-instance p2, Ljava/security/GeneralSecurityException;

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p1, p3, v5

    const-string p1, "No support for primitive \'HybridEncrypt\' with key type \'%s\'."

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
