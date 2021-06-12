.class final Lcom/google/android/gms/internal/zzaej;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzafo;

.field private synthetic b:Lcom/google/android/gms/internal/zzaei;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaei;Lcom/google/android/gms/internal/zzafo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaej;->b:Lcom/google/android/gms/internal/zzaei;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaej;->a:Lcom/google/android/gms/internal/zzafo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaej;->b:Lcom/google/android/gms/internal/zzaei;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaei;->a(Lcom/google/android/gms/internal/zzaei;)Lcom/google/android/gms/internal/zzade;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaej;->a:Lcom/google/android/gms/internal/zzafo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zza;->zzb(Lcom/google/android/gms/internal/zzafo;)V

    return-void
.end method
