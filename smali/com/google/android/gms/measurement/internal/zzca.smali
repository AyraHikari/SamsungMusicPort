.class final Lcom/google/android/gms/measurement/internal/zzca;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzl;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/zzbv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzca;->b:Lcom/google/android/gms/measurement/internal/zzbv;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzca;->a:Lcom/google/android/gms/measurement/internal/zzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzca;->b:Lcom/google/android/gms/measurement/internal/zzbv;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zza(Lcom/google/android/gms/measurement/internal/zzbv;)Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->k()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzca;->b:Lcom/google/android/gms/measurement/internal/zzbv;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zza(Lcom/google/android/gms/measurement/internal/zzbv;)Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzca;->a:Lcom/google/android/gms/measurement/internal/zzl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfa;->a(Lcom/google/android/gms/measurement/internal/zzl;)V

    return-void
.end method
