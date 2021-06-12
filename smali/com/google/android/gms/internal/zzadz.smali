.class final Lcom/google/android/gms/internal/zzadz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzjj;

.field private synthetic b:Lcom/google/android/gms/internal/zzva;

.field private synthetic c:Lcom/google/android/gms/internal/zzady;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzady;Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zzva;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadz;->c:Lcom/google/android/gms/internal/zzady;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzadz;->a:Lcom/google/android/gms/internal/zzjj;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzadz;->b:Lcom/google/android/gms/internal/zzva;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadz;->c:Lcom/google/android/gms/internal/zzady;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzadz;->a:Lcom/google/android/gms/internal/zzjj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzadz;->b:Lcom/google/android/gms/internal/zzva;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzady;->a(Lcom/google/android/gms/internal/zzady;Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zzva;)V

    return-void
.end method
