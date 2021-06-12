.class public final Lcom/google/android/gms/internal/zzbf;
.super Lcom/google/android/gms/internal/zzfjm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfjm<",
        "Lcom/google/android/gms/internal/zzbf;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[[B

.field public b:[B

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfjm;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzfjv;->zzpnu:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbf;->a:[[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbf;->b:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbf;->zzpfd:I

    return-void
.end method
