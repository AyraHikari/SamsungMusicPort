.class final Lcom/google/android/gms/internal/zzadf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzade;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzade;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadf;->a:Lcom/google/android/gms/internal/zzade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadf;->a:Lcom/google/android/gms/internal/zzade;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzade;->zza(Lcom/google/android/gms/internal/zzade;I)V

    return-void
.end method
