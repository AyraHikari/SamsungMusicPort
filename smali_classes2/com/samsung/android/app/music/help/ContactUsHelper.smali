.class public Lcom/samsung/android/app/music/help/ContactUsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;,
        Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsFeedbackType;,
        Lcom/samsung/android/app/music/help/ContactUsHelper$ContactUsUriType;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Help-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/music/help/ContactUsHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/help/ContactUsHelper;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 6

    .line 210
    invoke-static {p0}, Lcom/samsung/android/app/music/help/ContactUsHelper;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    new-instance v0, Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "n10h313sxh"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/util/UserLogManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/util/UserLogManager;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Lcom/samsung/android/app/music/util/UserLogManager;->f()V

    .line 217
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v1

    .line 220
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v1

    .line 221
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/UserInfo;->hasPremiumOrderHistory()Z

    move-result v1

    const-string v3, "com.samsung.radio.KEY_STORE_DATA_CONFIGS_MEMBERS_PREBODY"

    .line 225
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b04ed

    .line 226
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 224
    invoke-static {p0, v3, v4}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\n"

    const-string v5, "line.separator"

    .line 228
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;

    const-string v3, "hint"

    .line 229
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;->c(Ljava/lang/String;)Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;

    .line 230
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;->a(Z)Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 233
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/help/MuseUtils;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;->d(Ljava/lang/String;)Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;

    :cond_0
    const-string v1, "Music"

    .line 237
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/help/ContactUsHelper$IntentBuilder;->a()Landroid/content/Intent;

    move-result-object v0

    .line 239
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 241
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 244
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 245
    sget-object p0, Lcom/samsung/android/app/music/help/ContactUsHelper;->a:Ljava/lang/String;

    const-string v0, "launchContactUs : Activity Not found!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_1
    sget-object p0, Lcom/samsung/android/app/music/help/ContactUsHelper;->a:Ljava/lang/String;

    const-string v0, "Can\'t launch contact us"

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.samsung.android.voc"

    .line 180
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/util/LaunchUtils;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-static {p0}, Lcom/samsung/android/app/music/help/ContactUsHelper;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    .line 186
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "com.samsung.android.voc"

    .line 190
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 191
    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    const v2, 0xa220268

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 193
    sget-object v2, Lcom/samsung/android/app/music/help/ContactUsHelper;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Samsung Members version is lower. installed version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v1

    .line 198
    :catch_0
    sget-object p0, Lcom/samsung/android/app/music/help/ContactUsHelper;->a:Ljava/lang/String;

    const-string v1, "Samsung Members package is not installed."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
