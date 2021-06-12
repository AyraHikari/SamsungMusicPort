.class public final Lcom/google/android/gms/internal/zzfke;
.super Lcom/google/android/gms/internal/zzfjm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfjm<",
        "Lcom/google/android/gms/internal/zzfke;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile f:[Lcom/google/android/gms/internal/zzfke;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Lcom/google/android/gms/internal/zzfjz;

.field public d:Ljava/lang/Integer;

.field public e:[Ljava/lang/String;

.field private g:Lcom/google/android/gms/internal/zzfkb;

.field private h:Ljava/lang/Integer;

.field private i:[I

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfjm;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfke;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfke;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfke;->c:Lcom/google/android/gms/internal/zzfjz;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfke;->g:Lcom/google/android/gms/internal/zzfkb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfke;->h:Ljava/lang/Integer;

    sget-object v1, Lcom/google/android/gms/internal/zzfjv;->zzpnp:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzfke;->i:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfke;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfke;->d:Ljava/lang/Integer;

    sget-object v1, Lcom/google/android/gms/internal/zzfjv;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzfke;->e:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfke;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzfke;->zzpfd:I

    return-void
.end method

.method public static a()[Lcom/google/android/gms/internal/zzfke;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzfke;->f:[Lcom/google/android/gms/internal/zzfke;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzfjq;->zzpnk:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzfke;->f:[Lcom/google/android/gms/internal/zzfke;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/zzfke;

    sput-object v1, Lcom/google/android/gms/internal/zzfke;->f:[Lcom/google/android/gms/internal/zzfke;

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
    sget-object v0, Lcom/google/android/gms/internal/zzfke;->f:[Lcom/google/android/gms/internal/zzfke;

    return-object v0
.end method
