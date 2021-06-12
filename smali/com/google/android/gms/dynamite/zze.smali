.class final Lcom/google/android/gms/dynamite/zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;-><init>()V

    .line 3
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->a:I

    .line 4
    iget v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p3, p1, p2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;->a(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->b:I

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p3, p1, p2, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;->a(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->b:I

    .line 7
    :goto_0
    iget p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->a:I

    if-nez p1, :cond_1

    iget p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->b:I

    if-nez p1, :cond_1

    .line 8
    iput v3, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->c:I

    goto :goto_1

    .line 9
    :cond_1
    iget p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->a:I

    iget p2, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->b:I

    if-lt p1, p2, :cond_2

    const/4 p1, -0x1

    .line 10
    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->c:I

    goto :goto_1

    .line 11
    :cond_2
    iput v2, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->c:I

    :goto_1
    return-object v0
.end method
