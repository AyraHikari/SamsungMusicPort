.class public final Lcom/google/android/gms/internal/zznv;
.super Lcom/google/android/gms/internal/zzny;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final zzbsu:Lcom/google/android/gms/ads/internal/zzae;

.field private final zzbsv:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbsw:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzae;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzny;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zznv;->zzbsu:Lcom/google/android/gms/ads/internal/zzae;

    iput-object p2, p0, Lcom/google/android/gms/internal/zznv;->zzbsv:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zznv;->zzbsw:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznv;->zzbsw:Ljava/lang/String;

    return-object v0
.end method

.method public final recordClick()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznv;->zzbsu:Lcom/google/android/gms/ads/internal/zzae;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzae;->zzcs()V

    return-void
.end method

.method public final recordImpression()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznv;->zzbsu:Lcom/google/android/gms/ads/internal/zzae;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzae;->zzct()V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/dynamic/IObjectWrapper;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznv;->zzbsu:Lcom/google/android/gms/ads/internal/zzae;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/zzae;->zzh(Landroid/view/View;)V

    return-void
.end method

.method public final zzjj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznv;->zzbsv:Ljava/lang/String;

    return-object v0
.end method
