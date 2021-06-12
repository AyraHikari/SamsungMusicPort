.class public final Lcom/google/android/gms/internal/zzdsi$zza;
.super Lcom/google/android/gms/internal/zzffu$zza;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdsi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzffu$zza<",
        "Lcom/google/android/gms/internal/zzdsi;",
        "Lcom/google/android/gms/internal/zzdsi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzfhg;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzdsi;->e()Lcom/google/android/gms/internal/zzdsi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzffu$zza;-><init>(Lcom/google/android/gms/internal/zzffu;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/zzdsi$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxr()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdsi$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    check-cast p1, Lcom/google/android/gms/internal/zzdsi;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzdsi;->a(Lcom/google/android/gms/internal/zzdsi;I)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/zzdsk;)Lcom/google/android/gms/internal/zzdsi$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxr()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdsi$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    check-cast v0, Lcom/google/android/gms/internal/zzdsi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzdsi;->a(Lcom/google/android/gms/internal/zzdsi;Lcom/google/android/gms/internal/zzdsk;)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzdsi$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzffu$zza;->zzcxr()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdsi$zza;->zzpgv:Lcom/google/android/gms/internal/zzffu;

    check-cast v0, Lcom/google/android/gms/internal/zzdsi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzdsi;->a(Lcom/google/android/gms/internal/zzdsi;Lcom/google/android/gms/internal/zzfes;)V

    return-object p0
.end method
