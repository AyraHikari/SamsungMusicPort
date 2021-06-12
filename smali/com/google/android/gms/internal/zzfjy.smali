.class public final Lcom/google/android/gms/internal/zzfjy;
.super Lcom/google/android/gms/internal/zzfjm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfjm<",
        "Lcom/google/android/gms/internal/zzfjy;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Lcom/google/android/gms/internal/zzfjy;


# instance fields
.field public a:[B

.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfjm;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfjy;->a:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfjy;->b:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfjy;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzfjy;->zzpfd:I

    return-void
.end method

.method public static a()[Lcom/google/android/gms/internal/zzfjy;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzfjy;->c:[Lcom/google/android/gms/internal/zzfjy;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzfjq;->zzpnk:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzfjy;->c:[Lcom/google/android/gms/internal/zzfjy;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/zzfjy;

    sput-object v1, Lcom/google/android/gms/internal/zzfjy;->c:[Lcom/google/android/gms/internal/zzfjy;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/zzfjy;->c:[Lcom/google/android/gms/internal/zzfjy;

    return-object v0
.end method
