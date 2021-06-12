.class final Lcom/google/android/gms/measurement/internal/zzek;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzef;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzek;->a:Lcom/google/android/gms/measurement/internal/zzef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzek;->a:Lcom/google/android/gms/measurement/internal/zzef;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Lcom/google/android/gms/measurement/internal/zzdr;Lcom/google/android/gms/measurement/internal/zzag;)Lcom/google/android/gms/measurement/internal/zzag;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzek;->a:Lcom/google/android/gms/measurement/internal/zzef;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzdr;->b(Lcom/google/android/gms/measurement/internal/zzdr;)V

    return-void
.end method
