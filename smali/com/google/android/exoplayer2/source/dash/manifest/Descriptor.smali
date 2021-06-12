.class public final Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->a:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->b:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    .line 60
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->c:Ljava/lang/String;

    .line 61
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/Util;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 68
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method
