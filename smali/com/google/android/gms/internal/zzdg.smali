.class final Lcom/google/android/gms/internal/zzdg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzdi;


# instance fields
.field private synthetic a:Landroid/app/Activity;

.field private synthetic b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzda;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzdg;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzdg;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdg;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdg;->b:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method
