.class final Lcom/google/android/gms/measurement/internal/zzeo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzfa;

.field private final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzel;Lcom/google/android/gms/measurement/internal/zzfa;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzeo;->a:Lcom/google/android/gms/measurement/internal/zzfa;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzeo;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeo;->a:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->k()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeo;->a:Lcom/google/android/gms/measurement/internal/zzfa;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzeo;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfa;->a(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeo;->a:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->j()V

    return-void
.end method
