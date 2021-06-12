.class public final Lcom/google/android/gms/internal/zzwj;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# direct methods
.method public static a(Lcom/google/ads/AdRequest$ErrorCode;)I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzwk;->a:[I

    invoke-virtual {p0}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/google/android/gms/internal/zzjn;)Lcom/google/ads/AdSize;
    .locals 5

    const/4 v0, 0x6

    new-array v1, v0, [Lcom/google/ads/AdSize;

    sget-object v2, Lcom/google/ads/AdSize;->a:Lcom/google/ads/AdSize;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/ads/AdSize;->b:Lcom/google/ads/AdSize;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/ads/AdSize;->c:Lcom/google/ads/AdSize;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/ads/AdSize;->d:Lcom/google/ads/AdSize;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/ads/AdSize;->e:Lcom/google/ads/AdSize;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/ads/AdSize;->f:Lcom/google/ads/AdSize;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v2, v1, v3

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->a()I

    move-result v2

    iget v4, p0, Lcom/google/android/gms/internal/zzjn;->f:I

    if-ne v2, v4, :cond_0

    aget-object v2, v1, v3

    invoke-virtual {v2}, Lcom/google/ads/AdSize;->b()I

    move-result v2

    iget v4, p0, Lcom/google/android/gms/internal/zzjn;->c:I

    if-ne v2, v4, :cond_0

    aget-object p0, v1, v3

    return-object p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/ads/AdSize;

    iget v1, p0, Lcom/google/android/gms/internal/zzjn;->f:I

    iget v2, p0, Lcom/google/android/gms/internal/zzjn;->c:I

    iget-object p0, p0, Lcom/google/android/gms/internal/zzjn;->b:Ljava/lang/String;

    invoke-static {v1, v2, p0}, Lcom/google/android/gms/ads/zzb;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/ads/AdSize;-><init>(Lcom/google/android/gms/ads/AdSize;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/zzjj;Z)Lcom/google/ads/mediation/MediationAdRequest;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjj;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjj;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/google/ads/mediation/MediationAdRequest;

    new-instance v2, Ljava/util/Date;

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzjj;->c:J

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    iget v1, p0, Lcom/google/android/gms/internal/zzjj;->e:I

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/google/ads/AdRequest$Gender;->UNKNOWN:Lcom/google/ads/AdRequest$Gender;

    :goto_2
    move-object v3, v1

    goto :goto_3

    :pswitch_0
    sget-object v1, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;

    goto :goto_2

    :pswitch_1
    sget-object v1, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    goto :goto_2

    :goto_3
    iget-object v6, p0, Lcom/google/android/gms/internal/zzjj;->l:Landroid/location/Location;

    move-object v1, v0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/mediation/MediationAdRequest;-><init>(Ljava/util/Date;Lcom/google/ads/AdRequest$Gender;Ljava/util/Set;ZLandroid/location/Location;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
