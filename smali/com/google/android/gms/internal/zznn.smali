.class public final Lcom/google/android/gms/internal/zznn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# direct methods
.method public static a(Lcom/google/android/gms/internal/zznu;)Lcom/google/android/gms/internal/zzns;
    .locals 0
    .param p0    # Lcom/google/android/gms/internal/zznu;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zznu;->a()Lcom/google/android/gms/internal/zzns;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/internal/zzns;[Ljava/lang/String;)Z
    .locals 0
    .param p0    # Lcom/google/android/gms/internal/zznu;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/internal/zzns;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zznu;->a(Lcom/google/android/gms/internal/zzns;[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
