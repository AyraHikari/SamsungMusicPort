.class final Lcom/google/android/gms/internal/zzyj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzafo;

.field private synthetic b:Lcom/google/android/gms/internal/zzyi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyi;Lcom/google/android/gms/internal/zzafo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyj;->b:Lcom/google/android/gms/internal/zzyi;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyj;->a:Lcom/google/android/gms/internal/zzafo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyj;->b:Lcom/google/android/gms/internal/zzyi;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzyi;->a(Lcom/google/android/gms/internal/zzyi;)Lcom/google/android/gms/internal/zzyb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyj;->a:Lcom/google/android/gms/internal/zzafo;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzyb;->zzb(Lcom/google/android/gms/internal/zzafo;)V

    return-void
.end method
