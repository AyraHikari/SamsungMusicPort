.class public final Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaBrowseClientPermissionCheckUtils;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/browser/ApprovedClientPkgName;
.implements Lcom/samsung/android/app/musiclibrary/core/service/browser/ApprovedClientPkgSHA1;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaBrowser"

.field private static final PKG_TEST_MODE:Ljava/lang/String; = "com.google.android.music.experimental.mediasessiondemo"

.field private static final SIGN_TEST_MODE:Ljava/lang/String; = "8983C9C554304ED84244E2CD6DFB2FB6B0105F6D"

.field private static final TAG:Ljava/lang/String; = "SV-MediaBrowser"

.field private static final TEST_MODE:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 85
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 86
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isValidClient(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 70
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaBrowseClientPermissionCheckUtils;->APPROVED_PKG:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaBrowseClientPermissionCheckUtils;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "SMUSIC-SV-MediaBrowser"

    const-string p1, "This request is not valid name"

    .line 71
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 74
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaBrowseClientPermissionCheckUtils;->isValidSignatures(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "SMUSIC-SV-MediaBrowser"

    const-string p1, "This request is not valid sign"

    .line 75
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static isValidSignatures(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    const/4 v0, 0x0

    .line 37
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x40

    .line 41
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 45
    :cond_1
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_2

    goto :goto_1

    .line 50
    :cond_2
    :try_start_1
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/utils/security/Sha1;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/utils/security/Sha1;

    invoke-virtual {v4, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/security/Sha1;->getSHA1(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SV-MediaBrowser"

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request pkg is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and signatures : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaBrowseClientPermissionCheckUtils;->APPROVED_SIGN_SHA1:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaBrowseClientPermissionCheckUtils;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "SV-MediaBrowser"

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Approved ! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v3

    .line 57
    :try_start_2
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_1
    const-string p0, "SMUSIC-SV-MediaBrowser"

    const-string p1, "This request is not exist pkg name"

    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0
.end method
