.class public interface abstract Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final D:Z

.field public static final E:Z

.field public static final H:Z

.field public static final I:Z

.field public static final k_:Z

.field public static final l_:Z

.field public static final m_:Z

.field public static final n_:Z

.field public static final o_:Z

.field public static final p_:Z

.field public static final q_:Z

.field public static final r_:Z

.field public static final s_:Z

.field public static final t_:Z

.field public static final u_:Z

.field public static final v_:Z

.field public static final w:Z

.field public static final w_:Z

.field public static final x_:Z

.field public static final y_:Z

.field public static final z_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "CscFeature_Common_SupportMirrorCall"

    .line 8
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "CscFeature_Common_SupportUwaApp"

    .line 9
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->k_:Z

    const-string v0, "CscFeature_Music_SupportPinyinSort"

    .line 18
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CHINA"

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/feature/SystemPropertyFeatures;->q:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    sput-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->l_:Z

    const-string v0, "CscFeature_Common_DisableGoogle"

    .line 21
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->m_:Z

    const-string v0, "CscFeature_MMFW_ConfigFileExtension"

    .line 24
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->n_:Z

    const-string v0, "CscFeature_Music_SupportMusicBelling"

    .line 27
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->o_:Z

    const-string v0, "CscFeature_Common_ReplaceStringWifi"

    .line 30
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wlan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->p_:Z

    const-string v0, "CscFeature_Music_SupportDataPromptPopup"

    .line 33
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->q_:Z

    const-string v0, "CscFeature_Music_SupportPlaybackDuringCall"

    .line 36
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->w:Z

    const-string v0, "CscFeature_Music_ConfigExtraLyricEncoding"

    .line 39
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->r_:Z

    const-string v0, "CscFeature_Music_ConfigExtraLyricEncoding"

    .line 42
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->s_:Z

    const-string v0, "CscFeature_Music_ConfigOpCloud"

    .line 45
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->t_:Z

    const-string v0, "CscFeature_Music_SupportNoItemBubbleView"

    .line 48
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->u_:Z

    const-string v0, "CscFeature_Music_DisableResetSettings"

    .line 51
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->v_:Z

    const-string v0, "CscFeature_Common_SupportMinimizedSip"

    .line 54
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->w_:Z

    const-string v0, "CscFeature_Music_ConfigRulePlayListRepeat"

    .line 57
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EndFirst"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->D:Z

    const-string v0, "CscFeature_VoiceCall_SupportAutoAnsweringMemo"

    .line 61
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->E:Z

    const-string v0, "CscFeature_Milk_ConfigDeepLinkInMusic"

    .line 64
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->x_:Z

    const-string v0, "CscFeature_Milk_ConfigDeepLinkInMusic"

    .line 67
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->y_:Z

    const-string v0, "CscFeature_Common_ConfigOperatorDrmReq"

    .line 70
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlockPlayReadyDRM"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->H:Z

    const-string v0, "CscFeature_Music_SupportBatteryAdcThreshold"

    .line 74
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->I:Z

    const-string v0, "CscFeature_Common_ReplaceSecBrandAsGalaxy"

    .line 77
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/app/CscFeatureCompat;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->z_:Z

    return-void
.end method
