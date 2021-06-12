.class final Lcom/google/android/gms/internal/zzgy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzhc;


# instance fields
.field private synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgu;Landroid/app/Activity;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzgy;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzgy;->a:Landroid/app/Activity;

    invoke-interface {p1, v0}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    return-void
.end method
