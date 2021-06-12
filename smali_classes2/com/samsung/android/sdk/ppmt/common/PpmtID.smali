.class public Lcom/samsung/android/sdk/ppmt/common/PpmtID;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "PpmtID"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 60
    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/common/PpmtID;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x1a

    if-eqz v0, :cond_2

    const-string v0, "phone"

    .line 61
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    .line 63
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move-object v0, v2

    goto/16 :goto_2

    .line 66
    :pswitch_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v1, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object p0

    const-string v1, "i"

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 74
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    .line 75
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_1

    .line 77
    :cond_1
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_1
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v1

    const-string v3, "s"

    invoke-virtual {v1, v3}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->d(Ljava/lang/String;)V

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object p0

    const-string v1, "m"

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 87
    sget-object v0, Lcom/samsung/android/sdk/ppmt/common/PpmtID;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get DID : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 91
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_3

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object p0

    const-string v1, "a"

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 96
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object p0

    const-string v1, "b"

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->d(Ljava/lang/String;)V

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x3c

    if-le p0, v1, :cond_5

    const/4 p0, 0x0

    .line 102
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/samsung/android/sdk/ppmt/common/PpmtID;

    monitor-enter v0

    .line 22
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->q()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 26
    monitor-exit v0

    return-object v2

    .line 28
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/common/PpmtID;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0, p1}, Lcom/samsung/android/sdk/ppmt/common/PpmtID;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    .line 30
    monitor-exit v0

    return-object p0

    .line 32
    :cond_1
    :try_start_2
    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0

    throw p0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 45
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->r()Ljava/lang/String;

    move-result-object p1

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v1

    .line 49
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 110
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x1000

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 111
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 112
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 113
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return v0
.end method
