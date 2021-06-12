.class Lcom/facebook/appevents/internal/SourceApplicationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/internal/SourceApplicationInfo$Factory;
    }
.end annotation


# static fields
.field private static final CALL_APPLICATION_PACKAGE_KEY:Ljava/lang/String; = "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

.field private static final OPENED_BY_APP_LINK_KEY:Ljava/lang/String; = "com.facebook.appevents.SourceApplicationInfo.openedByApplink"

.field private static final SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT:Ljava/lang/String; = "_fbSourceApplicationHasBeenSet"


# instance fields
.field private callingApplicationPackage:Ljava/lang/String;

.field private openedByAppLink:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->callingApplicationPackage:Ljava/lang/String;

    .line 47
    iput-boolean p2, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->openedByAppLink:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLcom/facebook/appevents/internal/SourceApplicationInfo$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/facebook/appevents/internal/SourceApplicationInfo;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public static clearSavedSourceApplicationInfoFromDisk()V
    .locals 2

    .line 70
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

    .line 72
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.facebook.appevents.SourceApplicationInfo.openedByApplink"

    .line 73
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static getStoredSourceApplicatioInfo()Lcom/facebook/appevents/internal/SourceApplicationInfo;
    .locals 4

    .line 53
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

    .line 55
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

    .line 59
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.facebook.appevents.SourceApplicationInfo.openedByApplink"

    const/4 v3, 0x0

    .line 62
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 64
    new-instance v2, Lcom/facebook/appevents/internal/SourceApplicationInfo;

    invoke-direct {v2, v1, v0}, Lcom/facebook/appevents/internal/SourceApplicationInfo;-><init>(Ljava/lang/String;Z)V

    return-object v2
.end method


# virtual methods
.method public getCallingApplicationPackage()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->callingApplicationPackage:Ljava/lang/String;

    return-object v0
.end method

.method public isOpenedByAppLink()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->openedByAppLink:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Unclassified"

    .line 88
    iget-boolean v1, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->openedByAppLink:Z

    if-eqz v1, :cond_0

    const-string v0, "Applink"

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->callingApplicationPackage:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->callingApplicationPackage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v0
.end method

.method public writeSourceApplicationInfoToDisk()V
    .locals 3

    .line 101
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

    .line 103
    iget-object v2, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->callingApplicationPackage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.facebook.appevents.SourceApplicationInfo.openedByApplink"

    .line 104
    iget-boolean v2, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->openedByAppLink:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
