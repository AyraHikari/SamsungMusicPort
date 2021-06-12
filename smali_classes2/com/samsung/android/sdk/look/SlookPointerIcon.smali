.class public Lcom/samsung/android/sdk/look/SlookPointerIcon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SlookPointerIcon"


# instance fields
.field private HOVERING_SPENICON_CUSTOM:I

.field private HOVERING_SPENICON_DEFAULT:I

.field private bLoggingFlag:Z

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mSlook:Lcom/samsung/android/sdk/look/Slook;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon;->bLoggingFlag:Z

    .line 34
    iput v0, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon;->HOVERING_SPENICON_CUSTOM:I

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon;->HOVERING_SPENICON_DEFAULT:I

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/android/sdk/look/SlookPointerIcon;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon;->HOVERING_SPENICON_CUSTOM:I

    return p0
.end method

.method static synthetic access$1(Lcom/samsung/android/sdk/look/SlookPointerIcon;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$2(Lcom/samsung/android/sdk/look/SlookPointerIcon;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon;->HOVERING_SPENICON_DEFAULT:I

    return p0
.end method

.method private insertLogForAPI(Ljava/lang/String;)V
    .locals 6

    .line 111
    iget-object v0, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 122
    new-instance v1, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v1}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    .line 123
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/Slook;->getVersionCode()I

    move-result v1

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.providers.context"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 130
    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    const-string v3, "SM_SDK"

    const-string v4, "Could not find ContextProvider"

    .line 132
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v3, "SM_SDK"

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "context framework\'s  versionCode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    .line 138
    iget-object v0, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    .line 139
    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    .line 150
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "feature"

    .line 151
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "extra"

    .line 152
    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SlookPointerIcon"

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    .line 158
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "data"

    .line 159
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.providers.context"

    .line 160
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v0, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 140
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1

    :cond_2
    const-string p1, "SM_SDK"

    const-string v0, "Add com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission"

    .line 143
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isSupport(I)Z
    .locals 1

    .line 104
    iget-object p1, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public setHoverIcon(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x1

    .line 52
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/SlookPointerIcon;->isSupport(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "SlookPointerIcon"

    const-string p2, "setHoverIcon does not support from Android N OS"

    .line 53
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon;->mContext:Landroid/content/Context;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 64
    invoke-static {}, Lcom/samsung/android/sdk/look/RefPointerIcon;->get()Lcom/samsung/android/sdk/look/RefPointerIcon;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon;->HOVERING_SPENICON_DEFAULT:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/sdk/look/RefPointerIcon;->setHoveringSpenIcon(II)V

    return-void

    .line 68
    :cond_1
    iput-object p2, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    new-instance p2, Lcom/samsung/android/sdk/look/SlookPointerIcon$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/look/SlookPointerIcon$1;-><init>(Lcom/samsung/android/sdk/look/SlookPointerIcon;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 89
    :try_start_0
    iget-boolean p1, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon;->bLoggingFlag:Z

    if-nez p1, :cond_2

    const-string p1, "setHoverIcon"

    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/look/SlookPointerIcon;->insertLogForAPI(Ljava/lang/String;)V

    .line 91
    iput-boolean v0, p0, Lcom/samsung/android/sdk/look/SlookPointerIcon;->bLoggingFlag:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    .line 94
    :catch_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission is required."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "view is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
