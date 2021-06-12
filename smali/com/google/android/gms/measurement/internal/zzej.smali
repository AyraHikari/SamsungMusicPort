.class final Lcom/google/android/gms/measurement/internal/zzej;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzef;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzej;->a:Lcom/google/android/gms/measurement/internal/zzef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzej;->a:Lcom/google/android/gms/measurement/internal/zzef;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzej;->a:Lcom/google/android/gms/measurement/internal/zzef;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzej;->a:Lcom/google/android/gms/measurement/internal/zzef;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzco;->u()Lcom/google/android/gms/measurement/internal/zzk;

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    .line 6
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Lcom/google/android/gms/measurement/internal/zzdr;Landroid/content/ComponentName;)V

    return-void
.end method
