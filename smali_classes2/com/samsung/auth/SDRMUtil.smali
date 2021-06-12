.class public Lcom/samsung/auth/SDRMUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static TAG:Ljava/lang/String; = "AppAuthUtil"

.field public static final TAG_APPINFO:I = 0x2

.field public static final TAG_CERT:I = 0x1

.field public static final TAG_VSC:I

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CheckCert(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 0

    if-nez p2, :cond_0

    .line 133
    new-instance p2, Ljava/io/File;

    invoke-static {p0}, Lcom/samsung/auth/SDRMUtil;->GetAuthDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {p0}, Lcom/samsung/auth/SDRMUtil;->GetCertDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    .line 137
    :goto_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static CheckVersion(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    sput-object p0, Lcom/samsung/auth/SDRMUtil;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 32
    sget-object p0, Lcom/samsung/auth/SDRMUtil;->TAG:Ljava/lang/String;

    const-string v1, "context == null"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, "version.txt"

    .line 36
    invoke-static {p0, v1, v0}, Lcom/samsung/auth/SDRMUtil;->CompareVersion(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static CompareVersion(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-static {p0, p1, p2}, Lcom/samsung/auth/SDRMUtil;->CheckCert(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-nez p2, :cond_0

    .line 66
    new-instance p2, Ljava/io/File;

    invoke-static {p0}, Lcom/samsung/auth/SDRMUtil;->GetAuthDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/samsung/auth/SDRMUtil;->GetCertDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 73
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz p0, :cond_3

    .line 78
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p2

    .line 79
    new-array v0, p2, [B

    .line 80
    invoke-virtual {p0, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    .line 86
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result p2

    .line 87
    new-array v3, p2, [B

    .line 88
    invoke-virtual {v2, v3, v1, p2}, Ljava/io/InputStream;->read([BII)I

    .line 90
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>([B)V

    .line 91
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 93
    sget-object v3, Lcom/samsung/auth/SDRMUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installing version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v3, Lcom/samsung/auth/SDRMUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installed version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    sget-object v3, Lcom/samsung/auth/SDRMUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    if-eqz p0, :cond_2

    .line 110
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 114
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw p0

    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 118
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getStackTrace()[Ljava/lang/StackTraceElement;

    :goto_3
    return v1

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_1
    move-object v0, v2

    goto :goto_6

    .line 82
    :cond_3
    :try_start_5
    sget-object p2, Lcom/samsung/auth/SDRMUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not Open file ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p0, :cond_4

    .line 110
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    .line 114
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw p0

    :cond_4
    :goto_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    .line 118
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getStackTrace()[Ljava/lang/StackTraceElement;

    :goto_5
    return v1

    :catchall_3
    move-exception p1

    move-object p0, v0

    move-object v2, p0

    goto :goto_7

    :catch_3
    move-object p0, v0

    .line 104
    :catch_4
    :goto_6
    :try_start_8
    sget-object p2, Lcom/samsung/auth/SDRMUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT Founded in assets : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance p2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT Founded in assets : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    move-object v2, v0

    :goto_7
    if-eqz p0, :cond_6

    .line 110
    :try_start_9
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception p0

    if-eqz v2, :cond_5

    .line 114
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_5
    throw p0

    :cond_6
    :goto_8
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_9

    :catch_5
    move-exception p0

    .line 118
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 119
    :cond_7
    :goto_9
    throw p1

    .line 125
    :cond_8
    sget-object p0, Lcom/samsung/auth/SDRMUtil;->TAG:Ljava/lang/String;

    const-string p1, "Have no files"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static DeleteRecursive(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 165
    invoke-static {v4}, Lcom/samsung/auth/SDRMUtil;->DeleteRecursive(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    :cond_2
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    return-void

    .line 172
    :cond_3
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "coudn\'t delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static GetAuthDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 41
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 46
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetCertDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 50
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/samsung/auth/SDRMUtil;->GetAuthDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "cert"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method public static InstallAssets(Landroid/content/Context;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 142
    sget-object p0, Lcom/samsung/auth/SDRMUtil;->TAG:Ljava/lang/String;

    const-string v1, "context == null"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string v1, ""

    const-string v2, "version.txt"

    .line 149
    invoke-static {p0, v1, v2, v0}, Lcom/samsung/auth/SDRMUtil;->prepareCert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v1, ""

    const-string v2, "AppAuthCore.plf"

    .line 150
    invoke-static {p0, v1, v2, v0}, Lcom/samsung/auth/SDRMUtil;->prepareCert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static getAndroidID()Ljava/lang/String;
    .locals 2

    .line 298
    sget-object v0, Lcom/samsung/auth/SDRMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceIDbyTelephonyManager()Ljava/lang/String;
    .locals 3

    .line 271
    sget-object v0, Lcom/samsung/auth/SDRMUtil;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 272
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 273
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 274
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 277
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMacAddressbyWifi()Ljava/lang/String;
    .locals 3

    .line 281
    sget-object v0, Lcom/samsung/auth/SDRMUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 282
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ":"

    const-string v2, ""

    .line 288
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isEngMode()Z
    .locals 3

    .line 252
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v2, "test-keys"

    .line 253
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 259
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/app/Superuser.apk"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    return v1

    :catch_0
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static prepareCert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 185
    sget-object p0, Lcom/samsung/auth/SDRMUtil;->TAG:Ljava/lang/String;

    const-string p1, "context == null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_1

    .line 192
    new-instance p3, Ljava/io/File;

    invoke-static {p0}, Lcom/samsung/auth/SDRMUtil;->GetAuthDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne p3, v1, :cond_2

    .line 194
    invoke-static {p0}, Lcom/samsung/auth/SDRMUtil;->GetCertDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p3

    goto :goto_0

    :cond_2
    move-object p3, v2

    .line 198
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 206
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 208
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 209
    new-array v3, v2, [B

    .line 211
    invoke-virtual {p0, v3, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_3

    .line 213
    invoke-virtual {p1, v3, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 214
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    :cond_3
    if-eqz p3, :cond_4

    .line 219
    sget-object v0, Lcom/samsung/auth/SDRMUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Write] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "B"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 221
    :cond_4
    sget-object v0, Lcom/samsung/auth/SDRMUtil;->TAG:Ljava/lang/String;

    const-string v2, "[Write] dir is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 234
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_6

    .line 238
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_5
    throw p1
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 242
    :goto_2
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getStackTrace()[Ljava/lang/StackTraceElement;

    :cond_6
    :goto_3
    return v1

    :catchall_1
    move-exception p2

    move-object v2, p1

    goto :goto_5

    :catch_1
    move-object v2, p1

    goto :goto_4

    :catchall_2
    move-exception p2

    goto :goto_5

    :catch_2
    nop

    :goto_4
    if-eqz p3, :cond_7

    .line 225
    :try_start_5
    sget-object p1, Lcom/samsung/auth/SDRMUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File I/O Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File I/O Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 228
    :cond_7
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "File I/O Error /"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_5
    if-eqz v2, :cond_9

    .line 234
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception p1

    if-eqz p0, :cond_8

    .line 238
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_8
    throw p1

    :cond_9
    :goto_6
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_7

    :catch_3
    move-exception p0

    .line 242
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 243
    :cond_a
    :goto_7
    throw p2

    .line 201
    :catch_4
    sget-object p0, Lcom/samsung/auth/SDRMUtil;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "NOT Founded in assets : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "NOT Founded in assets : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
