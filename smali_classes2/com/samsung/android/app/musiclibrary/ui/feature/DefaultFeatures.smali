.class public Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Z

.field public static final d:Z

.field public static final e:Z

.field public static final f:Z

.field public static final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "2015A"

    .line 14
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/BuildCompat;->getUxVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "americano"

    const-string v1, "ro.build.scafe"

    .line 15
    invoke-static {v1}, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->a:Z

    const-string v0, "2016B"

    .line 17
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/BuildCompat;->getUxVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->b:Z

    const-string v0, "N"

    .line 19
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/BuildCompat;->getUxVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->c:Z

    .line 22
    invoke-static {}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->isUhqSupported()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->d:Z

    .line 26
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v1, 0x31769

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->e:Z

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->f:Z

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    sput-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->g:Z

    return-void
.end method
