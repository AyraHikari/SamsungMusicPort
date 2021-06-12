.class public Lcom/samsung/android/app/music/update/AppUpdateCheckObservable$Masking;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/update/AppUpdateCheckObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Masking"
.end annotation


# static fields
.field private static a:I = 0xf

.field private static b:I = 0xf0

.field private static c:I = 0xf00


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(I)Z
    .locals 1

    .line 27
    invoke-static {p0}, Lcom/samsung/android/app/music/update/AppUpdateCheckObservable$Masking;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/update/AppUpdateCheckObservable$Masking;->d(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(I)Z
    .locals 1

    .line 31
    invoke-static {p0}, Lcom/samsung/android/app/music/update/AppUpdateCheckObservable$Masking;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/update/AppUpdateCheckObservable$Masking;->e(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(I)Z
    .locals 1

    .line 35
    sget v0, Lcom/samsung/android/app/music/update/AppUpdateCheckObservable$Masking;->c:I

    and-int/2addr p0, v0

    const/16 v0, 0x100

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(I)Z
    .locals 2

    .line 39
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 40
    sget v0, Lcom/samsung/android/app/music/update/AppUpdateCheckObservable$Masking;->a:I

    and-int/2addr p0, v0

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method public static e(I)Z
    .locals 1

    .line 47
    sget v0, Lcom/samsung/android/app/music/update/AppUpdateCheckObservable$Masking;->b:I

    and-int/2addr p0, v0

    const/16 v0, 0x10

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
