.class Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/update/SamsungAppsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VersionCheckTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;,
        Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$StubUpdateInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[I>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/samsung/android/app/music/update/VersionCheckInfo;

.field private final c:Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;

.field private final d:Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/update/VersionCheckInfo;Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;->a:Landroid/content/Context;

    .line 178
    iput-object p2, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;->b:Lcom/samsung/android/app/music/update/VersionCheckInfo;

    .line 179
    iput-object p3, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;->c:Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;

    .line 180
    new-instance p2, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;-><init>(Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;Landroid/content/Context;Lcom/samsung/android/app/music/update/SamsungAppsManager$1;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;->d:Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/update/VersionCheckInfo;Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;Lcom/samsung/android/app/music/update/SamsungAppsManager$1;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/update/VersionCheckInfo;Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;)V

    return-void
.end method

.method private a()I
    .locals 4

    const/4 v0, 0x0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 213
    iget-object v2, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;->b:Lcom/samsung/android/app/music/update/VersionCheckInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/update/VersionCheckInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 214
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SamsungAppsManager"

    .line 217
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string v1, "SamsungAppsManager"

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppVersionCode() Current Version code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private a(Ljava/lang/String;)I
    .locals 2

    .line 225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SamsungAppsManager"

    const-string v1, "Given version code is not number format!"

    .line 229
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b()Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$StubUpdateInfo;
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;->d:Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;

    iget-object v1, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;->b:Lcom/samsung/android/app/music/update/VersionCheckInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/update/VersionCheckInfo;->b()Lcom/samsung/android/app/music/update/SamsungAppsManager$UrlParams;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->a(Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;Lcom/samsung/android/app/music/update/SamsungAppsManager$UrlParams;)Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$StubUpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;->a:Landroid/content/Context;

    const-string v1, "com.samsung.radio.start_client.force_update_version"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a([I)V
    .locals 2

    .line 202
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 203
    aget v0, p1, v0

    const/4 v1, 0x1

    .line 204
    aget p1, p1, v1

    .line 205
    iget-object v1, p0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;->c:Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;

    invoke-static {v1, v0, p1}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;->a(Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckPublisher;II)V

    return-void
.end method

.method protected varargs a([Ljava/lang/Void;)[I
    .locals 5

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;->a()I

    move-result p1

    .line 186
    invoke-direct {p0}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;->b()Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$StubUpdateInfo;

    move-result-object v0

    .line 187
    iget-object v1, v0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$StubUpdateInfo;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;->a(Ljava/lang/String;)I

    move-result v1

    .line 188
    iget-object v2, v0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$StubUpdateInfo;->b:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;->a(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 189
    iget-object v2, v0, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask$StubUpdateInfo;->b:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;->b(Ljava/lang/String;)V

    :cond_0
    const-string v2, "SamsungAppsManager"

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkUpdate - appVersionCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " updateVersionCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ge p1, v1, :cond_1

    .line 194
    new-array p1, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput v2, p1, v0

    aput v1, p1, v2

    return-object p1

    .line 196
    :cond_1
    new-array p1, v0, [I

    fill-array-data p1, :array_0

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 153
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;->a([Ljava/lang/Void;)[I

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 153
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/update/SamsungAppsManager$VersionCheckTask;->a([I)V

    return-void
.end method
