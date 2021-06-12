.class public Lcom/google/android/gms/common/GooglePlayServicesUtilLight;
.super Ljava/lang/Object;


# static fields
.field private static a:Z = false

.field public static final b:I = 0xbdfcb8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:Z

.field private static e:Z

.field private static f:Z

.field private static final g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 173
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 174
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8
    sget v1, Lcom/google/android/gms/common/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included."

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "com.google.android.gms"

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    sget-object v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzp;->b(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    sget v1, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->b:I

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    sget p1, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->b:I

    const/16 v1, 0x140

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "The meta-data tag in your app\'s AndroidManifest.xml does not have the right value.  Expected "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but found "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A required meta-data tag in your app\'s AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 22
    :goto_2
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->a(Landroid/content/Context;ZI)I

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;ZI)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 23
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->b(Z)V

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x9

    if-eqz p1, :cond_1

    :try_start_0
    const-string v3, "com.android.vending"

    const/16 v5, 0x2040

    .line 28
    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "GooglePlayServicesUtil"

    const-string p1, "Google Play Store is missing."

    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    :goto_1
    :try_start_1
    const-string v5, "com.google.android.gms"

    const/16 v6, 0x40

    .line 34
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 39
    invoke-static {p0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 40
    invoke-static {v5, v1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "GooglePlayServicesUtil"

    const-string p1, "Google Play services signature invalid."

    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    if-eqz p1, :cond_4

    .line 44
    invoke-static {v3, v1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p0, p0, v0

    iget-object p1, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p1, p1, v0

    .line 45
    invoke-virtual {p0, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    const-string p0, "GooglePlayServicesUtil"

    const-string p1, "Google Play Store signature invalid."

    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 48
    :cond_4
    iget p0, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Lcom/google/android/gms/common/util/zzb;->a(I)I

    move-result p0

    .line 49
    invoke-static {p2}, Lcom/google/android/gms/common/util/zzb;->a(I)I

    move-result p1

    if-ge p0, p1, :cond_5

    const-string p0, "GooglePlayServicesUtil"

    .line 51
    iget p1, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v0, 0x4d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Google Play services out of date.  Requires "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " but found "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    .line 53
    :cond_5
    iget-object p0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p0, :cond_6

    :try_start_2
    const-string p0, "com.google.android.gms"

    .line 55
    invoke-virtual {v2, p0, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    const-string p1, "GooglePlayServicesUtil"

    const-string p2, "Google Play services missing when getting application info."

    .line 58
    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 60
    :cond_6
    :goto_2
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p0, :cond_7

    const/4 p0, 0x3

    return p0

    :cond_7
    return v0

    :catch_2
    const-string p0, "GooglePlayServicesUtil"

    const-string p1, "Google Play services is missing."

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static a(I)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/common/ConnectionResult;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/util/UidVerifier;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "com.google.android.gms"

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 143
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->g()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 144
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 149
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :catch_0
    return v3

    .line 152
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v4, 0x2000

    .line 154
    :try_start_1
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 156
    iget-boolean p0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    return p0

    .line 157
    :cond_2
    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->f(Landroid/content/Context;)Z

    move-result p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v3

    :catch_1
    return v3
.end method

.method public static b(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 5

    .line 78
    sget-boolean v0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->f:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 80
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const-string v3, "com.google.android.gms"

    const/16 v4, 0x40

    .line 82
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 83
    invoke-static {p0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;

    if-eqz v0, :cond_0

    .line 85
    invoke-static {v0, v1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    if-nez p0, :cond_0

    .line 86
    invoke-static {v0, v2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 87
    sput-boolean v2, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->e:Z

    goto :goto_0

    .line 88
    :cond_0
    sput-boolean v1, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->e:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :goto_0
    sput-boolean v2, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->f:Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "GooglePlayServicesUtil"

    const-string v3, "Cannot find Google Play services package name."

    .line 92
    invoke-static {v0, v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    sput-boolean v2, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->f:Z

    goto :goto_2

    .line 95
    :goto_1
    sput-boolean v2, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->f:Z

    throw p0

    .line 96
    :cond_1
    :goto_2
    sget-boolean p0, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->e:Z

    if-nez p0, :cond_3

    .line 98
    invoke-static {}, Lcom/google/android/gms/common/util/DeviceProperties;->a()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    return v1

    :cond_3
    :goto_3
    return v2
.end method

.method public static b(Landroid/content/Context;I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x12

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    if-ne p1, v0, :cond_1

    const-string p1, "com.google.android.gms"

    .line 137
    invoke-static {p0, p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 1

    .line 116
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.google.android.gms"

    .line 117
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    :try_start_0
    const-string v0, "com.google.android.gms"

    const/4 v1, 0x3

    .line 121
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 127
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.google.android.gms"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    return p0

    :catch_0
    const-string p0, "GooglePlayServicesUtil"

    const-string v1, "Google Play services is missing."

    .line 130
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 160
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "user"

    .line 162
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "true"

    const-string v1, "restricted_profile"

    .line 165
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
