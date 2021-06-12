.class final Lcom/google/android/gms/dynamite/zzf;
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
    .locals 2
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

    const/4 v1, 0x1

    .line 4
    invoke-interface {p3, p1, p2, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;->a(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->b:I

    .line 5
    iget p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->a:I

    if-nez p1, :cond_0

    iget p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->b:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 6
    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->c:I

    goto :goto_0

    .line 7
    :cond_0
    iget p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->b:I

    iget p2, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->a:I

    if-lt p1, p2, :cond_1

    .line 8
    iput v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->c:I

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 9
    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->c:I

    :goto_0
    return-object v0
.end method
