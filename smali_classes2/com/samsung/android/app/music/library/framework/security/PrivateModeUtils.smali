.class public Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    sget v0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->PREPARED:I

    sput v0, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->a:I

    .line 47
    sget v0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->MOUNTED:I

    sput v0, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->b:I

    .line 52
    sget v0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->CANCELLED:I

    sput v0, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->c:I

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/music/util/UiUtils;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Music"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 65
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->isPrivateMode()Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 0

    .line 72
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->isReady(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 0

    .line 79
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 89
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3

    .line 93
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->isPrivateMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {p0}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->e(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "PrivateMode"

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPrivateModeOnWithAutoOff autoOff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 2

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "personal_mode_auto_disable_when_screen_off"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
