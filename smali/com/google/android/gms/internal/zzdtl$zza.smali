.class public final Lcom/google/android/gms/internal/zzdtl$zza;
.super Lcom/google/android/gms/internal/zzffu$zza;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdtl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu$zza<",
        "Lcom/google/android/gms/internal/zzdtl;",
        "Lcom/google/android/gms/internal/zzdtl$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzfhg;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzdtl;->d()Lcom/google/android/gms/internal/zzdtl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzffu$zza;-><init>(Lcom/google/android/gms/internal/zzffu;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/zzdtl$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxr()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdtl$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    check-cast p1, Lcom/google/android/gms/internal/zzdtl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzdtl;->a(Lcom/google/android/gms/internal/zzdtl;I)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/zzdtn;)Lcom/google/android/gms/internal/zzdtl$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxr()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdtl$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    check-cast v0, Lcom/google/android/gms/internal/zzdtl;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzdtl;->a(Lcom/google/android/gms/internal/zzdtl;Lcom/google/android/gms/internal/zzdtn;)V

    return-object p0
.end method
