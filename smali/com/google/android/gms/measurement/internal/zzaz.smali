.class final Lcom/google/android/gms/measurement/internal/zzaz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/zzay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzay;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaz;->b:Lcom/google/android/gms/measurement/internal/zzay;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzaz;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaz;->b:Lcom/google/android/gms/measurement/internal/zzay;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzay;->a(Lcom/google/android/gms/measurement/internal/zzay;)Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzaz;->a:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfa;->a(Z)V

    return-void
.end method
