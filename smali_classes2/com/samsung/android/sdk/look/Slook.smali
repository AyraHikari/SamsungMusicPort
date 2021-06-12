.class public final Lcom/samsung/android/sdk/look/Slook;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/Slook$VERSION_CODES;
    }
.end annotation


# static fields
.field public static final AIRBUTTON:I = 0x1

.field public static final COCKTAIL_BAR:I = 0x6

.field public static final COCKTAIL_PANEL:I = 0x7

.field public static final SMARTCLIP:I = 0x2

.field public static final SPEN_BEZEL_INTERACTION:I = 0x5

.field public static final SPEN_HOVER_ICON:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Slook"

.field private static final VERSION_CODE:I = 0x7

.field private static final VERSION_NAME:Ljava/lang/String; = "1.4.0"

.field public static final WRITINGBUDDY:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private insertLog(Landroid/content/Context;)V
    .locals 4

    .line 233
    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "SM_SDK"

    const-string v0, "CONTEXTSERVICE_ENABLE_SURVEY_MODE is disable"

    .line 234
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 246
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.providers.context"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 248
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    const-string v1, "SM_SDK"

    const-string v2, "Could not find ContextProvider"

    .line 250
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "SM_SDK"

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "versionCode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const-string v0, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    .line 254
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 262
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/look/Slook;->getVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_id"

    .line 267
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    .line 268
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    .line 272
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "data"

    .line 273
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.providers.context"

    .line 275
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 255
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1

    :cond_2
    const-string p1, "SM_SDK"

    const-string v0, "Add com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission"

    .line 258
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception p1

    const-string v0, "SM_SDK"

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NoSuchMethodError : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_2
    move-exception p1

    const-string v0, "SM_SDK"

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NoClassDefFoundError : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isSupportedDevice()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v2, 0x13

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 175
    :pswitch_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_1

    .line 176
    invoke-static {}, Lcom/samsung/android/sdk/look/RefSlookImpl;->get()Lcom/samsung/android/sdk/look/RefSlookImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/look/RefSlookImpl;->isFeatureEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 179
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_2

    .line 180
    invoke-static {}, Lcom/samsung/android/sdk/look/RefSlookImpl;->get()Lcom/samsung/android/sdk/look/RefSlookImpl;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/look/RefSlookImpl;->isFeatureEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 168
    :pswitch_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_2

    .line 169
    invoke-static {}, Lcom/samsung/android/sdk/look/RefSlookImpl;->get()Lcom/samsung/android/sdk/look/RefSlookImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/look/RefSlookImpl;->isFeatureEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    .line 161
    :pswitch_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2

    .line 162
    invoke-static {}, Lcom/samsung/android/sdk/look/RefSlookImpl;->get()Lcom/samsung/android/sdk/look/RefSlookImpl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/look/RefSlookImpl;->isFeatureEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getVersionCode()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "1.4.0"

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/SsdkUnsupportedException;
        }
    .end annotation

    .line 135
    invoke-static {}, Lcom/samsung/android/sdk/SsdkVendorCheck;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/sdk/look/Slook;->isSupportedDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/look/Slook;->insertLog(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 146
    :catch_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission is required."

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const/4 v0, 0x1

    const-string v1, "This device is not supported."

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 136
    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/SsdkUnsupportedException;

    const/4 v0, 0x0

    const-string v1, "This device is not samsung product."

    invoke-direct {p1, v1, v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public isFeatureEnabled(I)Z
    .locals 3

    const/16 v0, 0x13

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The type("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is not supported."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :pswitch_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v0, :cond_0

    return v1

    .line 222
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_1

    .line 223
    invoke-static {}, Lcom/samsung/android/sdk/look/RefSlookImpl;->get()Lcom/samsung/android/sdk/look/RefSlookImpl;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/look/RefSlookImpl;->isFeatureEnabled(I)Z

    move-result p1

    return p1

    .line 225
    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/look/RefSlookImpl;->get()Lcom/samsung/android/sdk/look/RefSlookImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/look/RefSlookImpl;->isFeatureEnabled(I)Z

    move-result p1

    return p1

    .line 215
    :pswitch_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v0, :cond_2

    return v1

    .line 218
    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/look/RefSlookImpl;->get()Lcom/samsung/android/sdk/look/RefSlookImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/look/RefSlookImpl;->isFeatureEnabled(I)Z

    move-result p1

    return p1

    .line 210
    :pswitch_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v0, v2, :cond_3

    return v1

    .line 213
    :cond_3
    invoke-static {}, Lcom/samsung/android/sdk/look/RefSlookImpl;->get()Lcom/samsung/android/sdk/look/RefSlookImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/look/RefSlookImpl;->isFeatureEnabled(I)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
