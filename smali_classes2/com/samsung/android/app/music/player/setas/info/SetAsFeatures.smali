.class public Lcom/samsung/android/app/music/player/setas/info/SetAsFeatures;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static c:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetAs-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/music/player/setas/info/SetAsFeatures;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/player/setas/info/SetAsFeatures;->a:Ljava/lang/String;

    const-string v1, "jfvelte"

    const-string v2, "ja3g"

    const-string v3, "jftdd"

    const-string v4, "jflte"

    const-string v5, "jsglte"

    const-string v6, "ks01lte"

    const-string v7, "jalte"

    const-string v8, "jfwifi"

    const-string v9, "jactivelte"

    const-string v10, "jgedlte"

    const-string v11, "kccat6"

    const-string v12, "klte"

    const-string v13, "k3g"

    const-string v14, "kvolte"

    const-string v15, "s5velte"

    const-string v16, "kwifi"

    const-string v17, "lentislte"

    const-string v18, "kactivelte"

    const-string v19, "ha3g"

    const-string v20, "hl3g"

    const-string v21, "hlte"

    const-string v22, "hllte"

    const-string v23, "htdlte"

    const-string v24, "frescolte"

    const-string v25, "trlte"

    const-string v26, "trelte"

    const-string v27, "trhplte"

    const-string v28, "tre3g"

    const-string v29, "tblte"

    const-string v30, "tbelte"

    const-string v31, "tre3calte"

    .line 19
    filled-new-array/range {v1 .. v31}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/player/setas/info/SetAsFeatures;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .locals 6

    .line 59
    sget-object v0, Lcom/samsung/android/app/music/player/setas/info/SetAsFeatures;->b:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 60
    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .line 34
    sget-object v0, Lcom/samsung/android/app/music/player/setas/info/SetAsFeatures;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 35
    sget-object p0, Lcom/samsung/android/app/music/player/setas/info/SetAsFeatures;->c:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 37
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/music/player/setas/info/SetAsFeatures;->c:Ljava/lang/Boolean;

    .line 38
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x1

    if-lt v1, v2, :cond_1

    .line 40
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/app/music/player/setas/info/SetAsFeatures;->c:Ljava/lang/Boolean;

    return v3

    :cond_1
    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    const/16 v2, 0x17

    if-gt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 45
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/music/player/setas/info/SetAsFeatures;->a()Z

    move-result v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 47
    invoke-static {p0}, Lcom/samsung/android/app/music/player/setas/info/SetAsFeatures;->b(Landroid/content/Context;)Z

    move-result p0

    .line 48
    sget-object v0, Lcom/samsung/android/app/music/player/setas/info/SetAsFeatures;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Model : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Highlight Setting Feature On : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Alarm Ringtone Feature On : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/app/music/player/setas/info/SetAsFeatures;->c:Ljava/lang/Boolean;

    .line 55
    :cond_3
    sget-object p0, Lcom/samsung/android/app/music/player/setas/info/SetAsFeatures;->c:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 3

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "alarm://com.sec.android.app.clockpackage/alarmlist/"

    .line 69
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v1, 0x10000

    .line 72
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 73
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 74
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
