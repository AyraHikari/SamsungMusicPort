.class final Lcom/google/android/gms/measurement/internal/zzeh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/ComponentName;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/zzef;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzef;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeh;->b:Lcom/google/android/gms/measurement/internal/zzef;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzeh;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeh;->b:Lcom/google/android/gms/measurement/internal/zzef;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzef;->a:Lcom/google/android/gms/measurement/internal/zzdr;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzeh;->a:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Lcom/google/android/gms/measurement/internal/zzdr;Landroid/content/ComponentName;)V

    return-void
.end method
