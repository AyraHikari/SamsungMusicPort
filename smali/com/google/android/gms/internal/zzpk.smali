.class final Lcom/google/android/gms/internal/zzpk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzow;

.field private synthetic b:Lcom/google/android/gms/internal/zzpj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpj;Lcom/google/android/gms/internal/zzow;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpk;->b:Lcom/google/android/gms/internal/zzpj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpk;->a:Lcom/google/android/gms/internal/zzow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpk;->b:Lcom/google/android/gms/internal/zzpj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpk;->a:Lcom/google/android/gms/internal/zzow;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzpj;->zza(Lcom/google/android/gms/internal/zzpj;Lcom/google/android/gms/internal/zzow;)V

    return-void
.end method
