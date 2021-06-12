.class final Lcom/google/android/gms/measurement/internal/zzcw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzcs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzcs;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcw;->a:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcw;->a:Lcom/google/android/gms/measurement/internal/zzcs;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbt;->a(Z)V

    return-void
.end method
