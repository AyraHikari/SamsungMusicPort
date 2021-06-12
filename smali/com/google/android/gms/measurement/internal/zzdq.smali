.class final Lcom/google/android/gms/measurement/internal/zzdq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzdn;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/zzdo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzdo;Lcom/google/android/gms/measurement/internal/zzdn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdq;->b:Lcom/google/android/gms/measurement/internal/zzdo;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdq;->a:Lcom/google/android/gms/measurement/internal/zzdn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdq;->b:Lcom/google/android/gms/measurement/internal/zzdo;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdq;->a:Lcom/google/android/gms/measurement/internal/zzdn;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzdo;->a(Lcom/google/android/gms/measurement/internal/zzdo;Lcom/google/android/gms/measurement/internal/zzdn;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdq;->b:Lcom/google/android/gms/measurement/internal/zzdo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzdo;->a:Lcom/google/android/gms/measurement/internal/zzdn;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdq;->b:Lcom/google/android/gms/measurement/internal/zzdo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->h()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Lcom/google/android/gms/measurement/internal/zzdn;)V

    return-void
.end method
