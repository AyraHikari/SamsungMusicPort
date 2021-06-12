.class final Lcom/google/android/gms/dynamite/zzb;
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;-><init>()V

    const/4 v1, 0x1

    .line 3
    invoke-interface {p3, p1, p2, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;->a(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->b:I

    .line 4
    iget v2, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->b:I

    if-eqz v2, :cond_0

    .line 5
    iput v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->c:I

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zza;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->a:I

    .line 7
    iget p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->a:I

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    .line 8
    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$zzb;->c:I

    :cond_1
    :goto_0
    return-object v0
.end method
