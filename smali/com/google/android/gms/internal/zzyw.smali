.class final Lcom/google/android/gms/internal/zzyw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanm;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzyu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyw;->a:Lcom/google/android/gms/internal/zzyu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/zzanh;Z)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzyw;->a:Lcom/google/android/gms/internal/zzyu;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzyu;->c:Lcom/google/android/gms/internal/zzyt;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzyt;->a(Lcom/google/android/gms/internal/zzyt;)Lcom/google/android/gms/ads/internal/zzba;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zzba;->zzdv()V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzyw;->a:Lcom/google/android/gms/internal/zzyu;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzyu;->b:Lcom/google/android/gms/internal/zzalf;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzalf;->b(Ljava/lang/Object;)V

    return-void
.end method
