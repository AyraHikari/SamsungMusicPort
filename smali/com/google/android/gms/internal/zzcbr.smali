.class public final Lcom/google/android/gms/internal/zzcbr;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzcbr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:Lcom/google/android/gms/internal/zzaz;

.field private d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcbs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcbs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcbr;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzcbr;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcbr;->c:Lcom/google/android/gms/internal/zzaz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcbr;->d:[B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcbr;->a()V

    return-void
.end method

.method private final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->c:Lcom/google/android/gms/internal/zzaz;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->d:[B

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->c:Lcom/google/android/gms/internal/zzaz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->d:[B

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->c:Lcom/google/android/gms/internal/zzaz;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->d:[B

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->c:Lcom/google/android/gms/internal/zzaz;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcbr;->d:[B

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
