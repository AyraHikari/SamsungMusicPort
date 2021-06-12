.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Z

.field public static final B:Z

.field public static final C:Ljava/lang/String;

.field public static final F:Ljava/lang/String;

.field public static final G:Z

.field public static final J:Z

.field public static final a_:Z

.field public static final b_:Z

.field public static final c_:Z

.field public static final d_:Z

.field public static final e_:Z

.field public static final f_:Z

.field public static final g_:Z

.field public static final h_:Z

.field public static final i_:Z

.field public static final j_:Z

.field public static final t:Z

.field public static final v:Ljava/lang/String;

.field public static final x:Z

.field public static final y:Ljava/lang/String;

.field public static final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 11
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->a_:Z

    const-string v0, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_MUSIC_AUTO_RECOMMENDATION"

    .line 15
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->b_:Z

    const-string v0, "SEC_FLOATING_FEATURE_MUSICPLAYER_SUPPORT_COVER_FLOW_NEXT_PREV_VI"

    .line 18
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 19
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/feature/RuntimeFeatures;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->c_:Z

    const-string v0, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_MUSIC_ALBUMART_3DAUDIO"

    .line 22
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->d_:Z

    .line 25
    sput-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->t:Z

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_MILK_DEEP_INTEG"

    .line 29
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->e_:Z

    const-string v0, "SEC_FLOATING_FEATURE_AUDIO_CONFIG_SOUNDALIVE"

    .line 32
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->v:Ljava/lang/String;

    const-string v0, "SEC_FLOATING_FEATURE_MUSICPLAYER_SUPPORT_SCREEN_OFF_MUSIC"

    .line 35
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->f_:Z

    const-string v0, "SEC_FLOATING_FEATURE_MUSICPLAYER_SUPPORT_INTERNAL_SOUNDALIVE"

    .line 38
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->x:Z

    const-string v0, "SEC_FLOATING_FEATURE_SYSTEMUI_CONFIG_NOTIFICATION_BG_COLOR"

    .line 41
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->y:Ljava/lang/String;

    const-string v0, "SEC_FLOATING_FEATURE_QUICKCONNECT_CONFIG_PACKAGE_NAME"

    .line 44
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->z:Ljava/lang/String;

    const-string v0, "SEC_FLOATING_FEATURE_MUSICPLAYER_SUPPORT_BARGEIN"

    .line 47
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->A:Z

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BIXBY"

    .line 50
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->B:Z

    const-string v0, "SEC_FLOATING_FEATURE_AUDIO_CONFIG_JDM_ITEMS"

    .line 53
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->C:Ljava/lang/String;

    const-string v0, "com.samsung.android.smartmirroring"

    const-string v3, "SEC_FLOATING_FEATURE_MMFW_CONFIG_SMART_MIRRORING_PACKAGE_NAME"

    .line 63
    invoke-static {v3}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->g_:Z

    const-string v0, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_MULTI_DEVICE_SOUND"

    .line 66
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->h_:Z

    const-string v0, "SEC_FLOATING_FEATURE_ALLSHARE_CONFIG_VERSION"

    .line 75
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->F:Ljava/lang/String;

    const-string v0, "ALL"

    .line 77
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->F:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DMC_ONLY"

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->F:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->G:Z

    const-string v0, "ALL"

    .line 80
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->F:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->i_:Z

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_DISPLAY_CUTOUT"

    .line 83
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->j_:Z

    const-string v0, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    .line 93
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/support/samsung/feature/FloatingFeatureCompat;->getInteger(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    sput-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->J:Z

    return-void
.end method
