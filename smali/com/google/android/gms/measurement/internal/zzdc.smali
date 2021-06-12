.class final Lcom/google/android/gms/measurement/internal/zzdc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Lcom/google/android/gms/measurement/internal/zzcs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzcs;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzdc;->e:Lcom/google/android/gms/measurement/internal/zzcs;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzdc;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzdc;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzdc;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzdc;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzdc;->e:Lcom/google/android/gms/measurement/internal/zzcs;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzcs;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->x()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzdc;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzdc;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzdc;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzdc;->d:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
