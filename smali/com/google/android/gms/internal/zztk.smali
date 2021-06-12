.class public final Lcom/google/android/gms/internal/zztk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field private static a:Lcom/google/android/gms/internal/zztk;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zztk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztk;->a:Lcom/google/android/gms/internal/zztk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/zztk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zztk;->a:Lcom/google/android/gms/internal/zztk;

    return-object v0
.end method


# virtual methods
.method final a(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztk;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/zztk;->b:I

    return-void
.end method

.method final b()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztk;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zztk;->c:I

    return-void
.end method

.method final c()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztk;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zztk;->d:I

    return-void
.end method

.method final d()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztk;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zztk;->e:I

    return-void
.end method

.method final e()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztk;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zztk;->f:I

    return-void
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztk;->c:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztk;->d:I

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztk;->e:I

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zztk;->f:I

    return v0
.end method

.method public final j()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ipl"

    iget v2, p0, Lcom/google/android/gms/internal/zztk;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ipds"

    iget v2, p0, Lcom/google/android/gms/internal/zztk;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ipde"

    iget v2, p0, Lcom/google/android/gms/internal/zztk;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "iph"

    iget v2, p0, Lcom/google/android/gms/internal/zztk;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ipm"

    iget v2, p0, Lcom/google/android/gms/internal/zztk;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
