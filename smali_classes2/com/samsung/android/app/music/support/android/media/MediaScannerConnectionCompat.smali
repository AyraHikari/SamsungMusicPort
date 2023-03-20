.class public Lcom/samsung/android/app/music/support/android/media/MediaScannerConnectionCompat;
.super Ljava/lang/Object;
.source "MediaScannerConnectionCompat.java"


# static fields
.field private static sIsSupportLegacyAPI:Ljava/lang/Boolean;

.field private static sSemScanDirectories:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isSupportLegacyApi()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/support/android/media/MediaScannerConnectionCompat;->sIsSupportLegacyAPI:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/media/MediaScannerConnection;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, [Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-class v5, Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    aput-object v5, v1, v2

    const-string v2, "semScanDirectories"

    .line 3
    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/MediaScannerConnectionCompat;->sSemScanDirectories:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    move v3, v4

    .line 4
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/MediaScannerConnectionCompat;->sIsSupportLegacyAPI:Ljava/lang/Boolean;

    .line 5
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/support/android/media/MediaScannerConnectionCompat;->sIsSupportLegacyAPI:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static scanDirectories(Landroid/content/Context;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 p2, 0x0

    .line 3
    invoke-static {p0, p1, p2, p2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/android/media/MediaScannerConnectionCompat;->semScanDirectories(Landroid/content/Context;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static semScanDirectories(Landroid/content/Context;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/samsung/android/app/music/support/android/media/MediaScannerConnectionCompat;->isSupportLegacyApi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/support/android/media/MediaScannerConnectionCompat;->sSemScanDirectories:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    .line 3
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
