.class final Lcom/google/android/gms/internal/zzdv;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzdt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzdt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdv;->a:Lcom/google/android/gms/internal/zzdt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzdv;->a:Lcom/google/android/gms/internal/zzdt;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdt;->a(Lcom/google/android/gms/internal/zzdt;)V

    return-void
.end method
