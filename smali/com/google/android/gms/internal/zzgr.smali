.class final Lcom/google/android/gms/internal/zzgr;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzgp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzgp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzgr;->a:Lcom/google/android/gms/internal/zzgp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzgr;->a:Lcom/google/android/gms/internal/zzgp;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzgp;->a(Lcom/google/android/gms/internal/zzgp;I)V

    return-void
.end method
