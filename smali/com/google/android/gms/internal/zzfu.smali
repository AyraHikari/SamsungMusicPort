.class final Lcom/google/android/gms/internal/zzfu;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzft;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzft;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfu;->a:Lcom/google/android/gms/internal/zzft;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfu;->a:Lcom/google/android/gms/internal/zzft;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzft;->a(I)V

    return-void
.end method
