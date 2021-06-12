.class public Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_INTENT_ADAPT_SOUND_CHECKED:Ljava/lang/String; = "com.sec.hearingadjust.checkmusic"

.field public static final ACTION_INTENT_LAUNCH_HEARING_ADJUST:Ljava/lang/String; = "com.sec.hearingadjust.launch"

.field private static final ADAPT_SOUND_EACH_SIDE_RESULT_LENGTH:I = 0x6

.field public static final ADAPT_SOUND_PACKAGE_NAME:Ljava/lang/String; = "com.sec.hearingadjust"

.field private static final CLASSNAME:Ljava/lang/String; = "AdaptSound"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "app_package_name"

.field public static final POPUP_UI_RECEIVER_CLASS:Ljava/lang/String; = "com.sec.android.app.popupuireceiver"

.field public static final POPUP_UI_RECEIVER_DISABLE_APP_CLASS:Ljava/lang/String; = "com.sec.android.app.popupuireceiver.DisableApp"

.field private static final SETTING_ADAPTSOUND_CHECKED:Ljava/lang/String; = "hearing_musiccheck"

.field private static final SETTING_ADAPTSOUND_DIAGNOSIS:Ljava/lang/String; = "hearing_diagnosis"

.field private static final SETTING_ADAPTSOUND_PARAMETERS:Ljava/lang/String; = "hearing_parameters"


# instance fields
.field private final mAdaptSound:Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->mContext:Landroid/content/Context;

    .line 65
    new-instance p1, Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;-><init>(II)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->mAdaptSound:Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;

    return-void
.end method

.method private getAnalyzedGain()Ljava/lang/String;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hearing_parameters"

    .line 96
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAdaptSoundOn(Landroid/content/Context;)Z
    .locals 2

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hearing_musiccheck"

    const/4 v1, 0x0

    .line 133
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAlreadyDiagnosed(Landroid/content/Context;)Z
    .locals 2

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hearing_diagnosis"

    const/4 v1, 0x0

    .line 123
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setAdaptSoundOn(Landroid/content/Context;Z)V
    .locals 1

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "hearing_musiccheck"

    .line 143
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private updateGain()V
    .locals 9

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->getAnalyzedGain()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    .line 74
    new-array v2, v1, [I

    .line 75
    new-array v3, v1, [I

    if-eqz v0, :cond_2

    const-string v4, ","

    .line 78
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 80
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    if-ge v5, v1, :cond_0

    .line 83
    aget-object v6, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v2, v5

    .line 84
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->CLASSNAME:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, v2, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v5, -0x6

    .line 86
    aget-object v7, v0, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v3, v6

    .line 87
    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->CLASSNAME:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget v6, v3, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->mAdaptSound:Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;->setGain([I[I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public activate(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->updateGain()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->mAdaptSound:Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;->setEnabled(Z)I

    return-void
.end method

.method public release()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->mAdaptSound:Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;->release()V

    return-void
.end method
