.class final Lcom/google/android/gms/measurement/internal/zzfb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzff;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/zzfa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfa;Lcom/google/android/gms/measurement/internal/zzff;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfb;->b:Lcom/google/android/gms/measurement/internal/zzfa;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfb;->a:Lcom/google/android/gms/measurement/internal/zzff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfb;->b:Lcom/google/android/gms/measurement/internal/zzfa;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfb;->a:Lcom/google/android/gms/measurement/internal/zzff;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfa;->a(Lcom/google/android/gms/measurement/internal/zzfa;Lcom/google/android/gms/measurement/internal/zzff;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfb;->b:Lcom/google/android/gms/measurement/internal/zzfa;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->a()V

    return-void
.end method
