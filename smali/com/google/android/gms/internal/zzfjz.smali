.class public final Lcom/google/android/gms/internal/zzfjz;
.super Lcom/google/android/gms/internal/zzfjm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfjm<",
        "Lcom/google/android/gms/internal/zzfjz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lcom/google/android/gms/internal/zzfjy;

.field private b:Lcom/google/android/gms/internal/zzfka;

.field private c:[B

.field private d:[B

.field private e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfjm;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfjz;->b:Lcom/google/android/gms/internal/zzfka;

    invoke-static {}, Lcom/google/android/gms/internal/zzfjy;->a()[Lcom/google/android/gms/internal/zzfjy;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzfjz;->a:[Lcom/google/android/gms/internal/zzfjy;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfjz;->c:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfjz;->d:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfjz;->e:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfjz;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzfjz;->zzpfd:I

    return-void
.end method
