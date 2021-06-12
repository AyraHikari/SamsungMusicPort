.class public final Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;
    }
.end annotation


# static fields
.field private static final PERMISSION_API_USAGE_LOG:Ljava/lang/String; = "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

.field private static final TAG:Ljava/lang/String; = "SmartClip"

.field private static mApiUsageLogSent:Z


# instance fields
.field private mDataExtractionListener:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;

.field private mSlook:Lcom/samsung/android/sdk/look/Slook;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mView:Landroid/view/View;

    .line 86
    iput-object v0, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mDataExtractionListener:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;

    .line 94
    iput-object p1, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 96
    sget-boolean v0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mApiUsageLogSent:Z

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "SlookSmartClip"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->sendApiUsageLog(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 98
    sput-boolean p1, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mApiUsageLogSent:Z

    :cond_0
    return-void
.end method

.method private isSupport(I)Z
    .locals 1

    .line 220
    iget-object p1, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private sendApiUsageLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 231
    iget-object v0, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/look/Slook;->getVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.providers.context"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 238
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "SmartClip"

    const-string v3, "sendApiUsageLog : Could not find ContextProvider"

    .line 240
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    :goto_0
    const-string v3, "SmartClip"

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendApiUsageLog : Context framework\'s versionCode = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    const-string v2, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    .line 245
    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 254
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    .line 255
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "feature"

    .line 256
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "extra"

    .line 257
    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    .line 261
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "data"

    .line 262
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.providers.context"

    .line 263
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 246
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "SmartClip"

    const-string p2, "sendApiUsageLog : Add com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission"

    .line 249
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addMetaTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V
    .locals 6

    const/4 v0, 0x1

    .line 108
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->isSupport(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "com.samsung.android.smartclip.SmartClipMetaUtils"

    const-string v2, "addMetaTag"

    const/4 v3, 0x2

    .line 113
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mView:Landroid/view/View;

    aput-object v5, v3, v4

    aput-object p1, v3, v0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/look/smartclip/ReflectionUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SmartClip"

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to invoke the method. e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public clearAllMetaTag()V
    .locals 5

    const/4 v0, 0x1

    .line 144
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->isSupport(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "com.samsung.android.smartclip.SmartClipMetaUtils"

    const-string v2, "clearAllMetaTag"

    .line 149
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mView:Landroid/view/View;

    aput-object v4, v0, v3

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/look/smartclip/ReflectionUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SmartClip"

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to invoke the method. e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public extractDefaultSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 6

    const/4 v0, 0x1

    .line 186
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->isSupport(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mView:Landroid/view/View;

    if-nez v1, :cond_1

    const-string p1, "SmartClip"

    const-string p2, "extractDefaultSmartClipData : The view is null!"

    .line 191
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "SmartClip"

    const-string p2, "extractDefaultSmartClipData : The result element is null!"

    .line 196
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    if-nez p2, :cond_3

    const-string p1, "SmartClip"

    const-string p2, "extractDefaultSmartClipData : The cropped area is null!"

    .line 201
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    :try_start_0
    const-string v1, "com.samsung.android.smartclip.SmartClipMetaUtils"

    const-string v3, "extractDefaultSmartClipData"

    const/4 v4, 0x3

    .line 207
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mView:Landroid/view/View;

    aput-object v5, v4, v2

    aput-object p1, v4, v0

    const/4 p1, 0x2

    aput-object p2, v4, p1

    invoke-static {v1, v3, v4}, Lcom/samsung/android/sdk/look/smartclip/ReflectionUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SmartClip"

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to invoke the method. e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public removeMetaTag(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    .line 127
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->isSupport(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "com.samsung.android.smartclip.SmartClipMetaUtils"

    const-string v2, "removeMetaTag"

    const/4 v3, 0x2

    .line 132
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mView:Landroid/view/View;

    aput-object v5, v3, v4

    aput-object p1, v3, v0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/look/smartclip/ReflectionUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SmartClip"

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to invoke the method. e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setDataExtractionListener(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;)V
    .locals 6

    const/4 v0, 0x1

    .line 163
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->isSupport(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mDataExtractionListener:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;

    .line 169
    iget-object p1, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mDataExtractionListener:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;

    invoke-static {p1}, Lcom/samsung/android/sdk/look/smartclip/ExtractionListenerProxy;->newInstance(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip$DataExtractionListener;)Ljava/lang/Object;

    move-result-object p1

    :try_start_0
    const-string v1, "com.samsung.android.smartclip.SmartClipMetaUtils"

    const-string v2, "setDataExtractionListener"

    const/4 v3, 0x2

    .line 171
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClip;->mView:Landroid/view/View;

    aput-object v5, v3, v4

    aput-object p1, v3, v0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/look/smartclip/ReflectionUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SmartClip"

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to invoke the method. e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
