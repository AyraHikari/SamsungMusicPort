.class public final Lcom/google/android/gms/internal/zzba;
.super Lcom/google/android/gms/internal/zzfjm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfjm<",
        "Lcom/google/android/gms/internal/zzba;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile v:[Lcom/google/android/gms/internal/zzba;


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/Long;

.field public i:Ljava/lang/Long;

.field public j:Ljava/lang/Long;

.field public k:Ljava/lang/Integer;

.field public l:Ljava/lang/Long;

.field public m:Ljava/lang/Long;

.field public n:Ljava/lang/Long;

.field public o:Ljava/lang/Long;

.field public p:Ljava/lang/Long;

.field public q:Ljava/lang/Long;

.field public r:Ljava/lang/Long;

.field public s:Ljava/lang/Long;

.field public t:Ljava/lang/Long;

.field public u:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfjm;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzba;->a:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzba;->b:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzba;->c:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzba;->d:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzba;->e:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzba;->f:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzba;->h:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzba;->i:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzba;->j:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzba;->l:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzba;->m:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzba;->n:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzba;->o:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzba;->p:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzba;->q:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzba;->r:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzba;->s:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzba;->t:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzba;->u:Ljava/lang/Long;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzba;->zzpfd:I

    return-void
.end method

.method public static a()[Lcom/google/android/gms/internal/zzba;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzba;->v:[Lcom/google/android/gms/internal/zzba;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzfjq;->zzpnk:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzba;->v:[Lcom/google/android/gms/internal/zzba;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/zzba;

    sput-object v1, Lcom/google/android/gms/internal/zzba;->v:[Lcom/google/android/gms/internal/zzba;

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
    sget-object v0, Lcom/google/android/gms/internal/zzba;->v:[Lcom/google/android/gms/internal/zzba;

    return-object v0
.end method
