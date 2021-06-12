.class public final Lcom/google/android/gms/internal/zzjf;
.super Lcom/google/android/gms/internal/zzkf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final zzbdd:Lcom/google/android/gms/internal/zzje;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzje;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjf;->zzbdd:Lcom/google/android/gms/internal/zzje;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjf;->zzbdd:Lcom/google/android/gms/internal/zzje;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzje;->onAdClicked()V

    return-void
.end method
