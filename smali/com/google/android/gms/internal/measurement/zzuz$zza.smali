.class final Lcom/google/android/gms/internal/measurement/zzuz$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzuz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzuz$zza;->a:Ljava/lang/Object;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzuz$zza;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 6
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzuz$zza;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 8
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzuz$zza;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzuz$zza;->a:Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzuz$zza;->a:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzuz$zza;->b:I

    iget p1, p1, Lcom/google/android/gms/internal/measurement/zzuz$zza;->b:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzuz$zza;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0xffff

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzuz$zza;->b:I

    add-int/2addr v0, v1

    return v0
.end method
