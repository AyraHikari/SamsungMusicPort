.class public Lcom/samsung/android/app/music/settings/SettingsFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/regional/spotify/ISpotifyFeatureChangedListener;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;
    }
.end annotation


# instance fields
.field private A:Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;

.field private B:Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;

.field private C:Landroid/support/v7/preference/Preference;

.field private D:Landroid/support/v7/preference/Preference;

.field private E:Landroid/support/v7/preference/Preference;

.field private F:Landroid/support/v7/preference/Preference;

.field private G:Landroid/support/v7/preference/Preference;

.field private H:Landroid/support/v7/preference/Preference;

.field private I:Landroid/support/v7/preference/PreferenceCategory;

.field private J:Landroid/support/v7/preference/PreferenceCategory;

.field private K:Ljava/util/Timer;

.field private L:Ljava/util/TimerTask;

.field private final M:Landroid/os/Handler;

.field private N:I

.field private O:Z

.field private P:Landroid/text/Html$ImageGetter;

.field private final Q:Landroid/content/BroadcastReceiver;

.field private final R:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final S:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private b:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

.field private c:Landroid/support/v7/preference/PreferenceScreen;

.field private d:Landroid/content/SharedPreferences;

.field private e:Landroid/support/v7/preference/Preference;

.field private f:Landroid/support/v7/preference/Preference;

.field private g:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

.field private h:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

.field private i:Landroid/support/v7/preference/Preference;

.field private j:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private k:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private l:Lcom/samsung/android/app/music/settings/preference/MusicCustomPreference;

.field private m:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private n:Z

.field private o:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private p:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private q:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private r:Landroid/support/v7/preference/Preference;

.field private s:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private t:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private u:Landroid/support/v7/preference/SwitchPreferenceCompat;

.field private v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

.field private w:Landroid/support/v7/preference/Preference;

.field private x:Landroid/support/v7/preference/Preference;

.field private y:Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;

.field private z:Landroid/support/v7/preference/SwitchPreferenceCompat;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;-><init>()V

    .line 240
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->M:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 242
    iput v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->N:I

    .line 244
    iput-boolean v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->O:Z

    .line 1075
    new-instance v0, Lcom/samsung/android/app/music/settings/SettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/settings/SettingsFragment$2;-><init>(Lcom/samsung/android/app/music/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->P:Landroid/text/Html$ImageGetter;

    .line 1495
    new-instance v0, Lcom/samsung/android/app/music/settings/SettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/settings/SettingsFragment$4;-><init>(Lcom/samsung/android/app/music/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->Q:Landroid/content/BroadcastReceiver;

    .line 1509
    new-instance v0, Lcom/samsung/android/app/music/settings/SettingsFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/settings/SettingsFragment$5;-><init>(Lcom/samsung/android/app/music/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->R:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 1777
    new-instance v0, Lcom/samsung/android/app/music/settings/SettingsFragment$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/settings/SettingsFragment$7;-><init>(Lcom/samsung/android/app/music/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->S:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method private A()Landroid/content/SharedPreferences;
    .locals 3

    .line 1464
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "music_service_pref"

    const/4 v2, 0x4

    .line 1465
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private B()V
    .locals 3

    .line 1470
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "adapt_sound"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1471
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 1472
    new-instance v0, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;-><init>()V

    const/4 v1, 0x1

    .line 1473
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1474
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "adapt_sound"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private C()V
    .locals 3

    .line 1489
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.app.music.core.action.AUDIO_PATH_CHANGED"

    .line 1490
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.app.music.core.action.MUSIC_AUTO_OFF"

    .line 1491
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1492
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->Q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private D()V
    .locals 3

    .line 1757
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->i()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x7f0b04c6

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1759
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const v0, 0x7f0b04c4

    .line 1762
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private E()V
    .locals 3

    .line 1766
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1767
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/app/music/settings/SettingsFragment$6;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/settings/SettingsFragment$6;-><init>(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1774
    invoke-virtual {v1}, Ljava/lang/Thread;->run()V

    return-void
.end method

.method private a(I)I
    .locals 5

    .line 758
    invoke-static {}, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;->values()[Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 759
    iget v4, v3, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;->value:I

    if-ne v4, p1, :cond_0

    .line 760
    iget p1, v3, Lcom/samsung/android/app/music/settings/SettingsFragment$SquareEffectList;->title:I

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const p1, 0x7f0b00f3

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/SettingsFragment;)Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    return-object p0
.end method

.method private a(J)Ljava/lang/String;
    .locals 10

    const-wide/32 v0, 0xea60

    add-long/2addr p1, v0

    .line 1137
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    .line 1138
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr p1, v2

    .line 1139
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide p1

    .line 1141
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    cmp-long v9, v0, v3

    if-nez v9, :cond_1

    cmp-long v0, p1, v5

    if-gtz v0, :cond_0

    const p1, 0x7f0b0319

    .line 1145
    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    const v0, 0x7f0b031d

    .line 1147
    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v7

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    cmp-long v9, v0, v5

    if-nez v9, :cond_4

    cmp-long v0, p1, v3

    if-nez v0, :cond_2

    const p1, 0x7f0b0316

    .line 1151
    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    cmp-long v0, p1, v5

    if-gtz v0, :cond_3

    const p1, 0x7f0b0317

    .line 1153
    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const v0, 0x7f0b0318

    .line 1155
    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v7

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    cmp-long v3, p1, v3

    if-nez v3, :cond_5

    const p1, 0x7f0b031a

    .line 1159
    new-array p2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, v7

    invoke-virtual {v2, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    cmp-long v3, p1, v5

    if-gtz v3, :cond_6

    const p1, 0x7f0b031b

    .line 1161
    new-array p2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, v7

    invoke-virtual {v2, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    const v3, 0x7f0b031c

    const/4 v4, 0x2

    .line 1163
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/SettingsFragment;J)Ljava/lang/String;
    .locals 0

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 969
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->b(Ljava/lang/String;)I

    move-result p1

    .line 971
    invoke-static {p1}, Lcom/samsung/android/app/music/model/AudioQuality;->getAudioQualityDetailResId(I)I

    move-result p1

    .line 972
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .locals 5

    .line 1222
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "smart_volume"

    const/4 v2, 0x0

    .line 1223
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1225
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->b:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->b:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolume()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolumeNumber(I)I

    move-result v1

    .line 1227
    sget-boolean v3, Lcom/samsung/android/app/music/info/features/AppFeatures;->SUPPORT_FW_FINE_VOLUME:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const v3, 0x7f0b038f

    .line 1228
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    .line 1229
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    .line 1228
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v3, 0x7f0b0393

    .line 1231
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1234
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1235
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    const-string v1, "SVOL"

    if-eqz p1, :cond_2

    const-string v2, "On"

    goto :goto_1

    :cond_2
    const-string v2, "Off"

    .line 1239
    :goto_1
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->setSmartVolume(Z)V

    return-void
.end method

.method private a(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 3

    .line 1211
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1212
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 1213
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f0f02c7

    .line 1212
    invoke-static {p2, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 1214
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x437f0000    # 255.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42cc0000    # 102.0f

    :goto_0
    float-to-int v1, v1

    int-to-byte v1, v1

    shl-int/lit8 v1, v1, 0x18

    const v2, 0xffffff

    and-int/2addr p2, v2

    or-int/2addr p2, v1

    .line 1217
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result p2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p2, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1218
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/SettingsFragment;Ljava/lang/String;J)V
    .locals 0

    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->g:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    if-nez v0, :cond_0

    return-void

    .line 803
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->e(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 806
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->g:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->setEnabled(Z)V

    goto :goto_1

    .line 804
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->g:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2

    .line 1712
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "401"

    .line 1713
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "connectivity"

    .line 616
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 618
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v1, "isNetworkSupported"

    const/4 v2, 0x1

    .line 622
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 623
    new-array v1, v2, [Ljava/lang/Object;

    .line 624
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->O:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MusicSettings"

    const-string v1, "hasMobileNetwork exception"

    .line 626
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 630
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->O:Z

    return p1
.end method

.method private b(Ljava/lang/String;)I
    .locals 2

    const-string v0, "milk_download_quality"

    .line 979
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 982
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result p1

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/settings/SettingsFragment;)Landroid/support/v7/preference/Preference;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->i:Landroid/support/v7/preference/Preference;

    return-object p0
.end method

.method private b(J)V
    .locals 8

    .line 1170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-string p1, "MusicSettings"

    .line 1172
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAutoOffTimer remaining time : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1175
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->i:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    .line 1177
    new-instance v2, Lcom/samsung/android/app/music/settings/SettingsFragment$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/app/music/settings/SettingsFragment$3;-><init>(Lcom/samsung/android/app/music/settings/SettingsFragment;J)V

    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->L:Ljava/util/TimerTask;

    .line 1194
    new-instance p1, Ljava/util/Timer;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/Timer;-><init>(Z)V

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->K:Ljava/util/Timer;

    .line 1195
    iget-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->K:Ljava/util/Timer;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->L:Ljava/util/TimerTask;

    const-wide/32 p1, 0xea60

    rem-long v4, v0, p1

    const-wide/32 v6, 0xea60

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private b(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "skip_silences"

    const/4 v1, 0x0

    .line 1245
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1246
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->setSkipSilence(Z)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->b(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    .line 811
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->h:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    if-nez p1, :cond_0

    return-void

    .line 814
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 815
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->h:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->setEnabled(Z)V

    goto :goto_0

    .line 817
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->h:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 1446
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1447
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 1449
    invoke-static {v0}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1450
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VOICE_SETTING_BARGEIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1452
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1454
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "voice_input_control_music"

    const/4 v0, 0x1

    .line 1455
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const-string p1, "voice_input_control_music"

    const/4 v0, 0x0

    .line 1459
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/settings/SettingsFragment;)Landroid/os/Handler;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->M:Landroid/os/Handler;

    return-object p0
.end method

.method private c(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "lock_screen"

    .line 1250
    iget-boolean v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->n:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1251
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->setLockScreen(Z)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->c(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private c(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3

    .line 822
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->j:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_0

    return-void

    .line 825
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->e(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 828
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->A()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 829
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->j:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const-string v2, "smart_volume"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    .line 830
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->j:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    goto :goto_1

    .line 826
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->j:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 1708
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "401"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "screen_off_music"

    const/4 v1, 0x1

    .line 1255
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1256
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->setScreenOffMusic(Z)V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/settings/SettingsFragment;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->i()V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->d(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private d(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 835
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->k:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_0

    return-void

    .line 838
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->e(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 841
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->A()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "skip_silences"

    .line 842
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 843
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->k:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_2

    .line 844
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->k:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    .line 846
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->k:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    goto :goto_1

    .line 839
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->k:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private e(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "dark_theme"

    const/4 v1, 0x0

    .line 1260
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1262
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/ThemeManager;->a:Lcom/samsung/android/app/musiclibrary/ui/ThemeManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/ThemeManager;->a(I)V

    goto :goto_0

    .line 1264
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/ThemeManager;->a:Lcom/samsung/android/app/musiclibrary/ui/ThemeManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/ThemeManager;->a(I)V

    .line 1266
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "dark_theme"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/settings/SettingsFragment;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->y()V

    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->g(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private e(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 5

    .line 1479
    iget v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->N:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, "MusicSettings"

    .line 1483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLocalOrNoList() : m.isLocal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isLocal()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", EmptyMusicMetadata.equals(m) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1483
    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isLocal()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private f()V
    .locals 6

    .line 383
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v2, "manage_tabs"

    .line 385
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/settings/preference/MusicCustomPreference;

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->l:Lcom/samsung/android/app/music/settings/preference/MusicCustomPreference;

    .line 386
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v2, "sound_alive"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->e:Landroid/support/v7/preference/Preference;

    .line 387
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v2, "adapt_sound"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->f:Landroid/support/v7/preference/Preference;

    .line 388
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v2, "play_speed"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->g:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    .line 389
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->g:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    const v2, 0x7f0401c4

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;->setLayoutResource(I)V

    .line 390
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->o:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->g:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 392
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->g:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "cross_fade"

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->h:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    .line 395
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->h:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    const v3, 0x7f040053

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;->setLayoutResource(I)V

    .line 396
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->E_:Z

    if-nez v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->h:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 398
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->h:Lcom/samsung/android/app/music/settings/preference/CrossfadePreference;

    .line 400
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "music_auto_off"

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->i:Landroid/support/v7/preference/Preference;

    .line 401
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "smart_volume"

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->j:Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 402
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "skip_silences"

    .line 403
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->k:Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 404
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "lock_screen"

    .line 405
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->m:Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 406
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/util/UiUtils;->i(Landroid/content/Context;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 407
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->m:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const v3, 0x7f0b037f

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setSummary(Ljava/lang/CharSequence;)V

    .line 410
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "screen_off_music"

    .line 411
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->o:Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 412
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "edge_lighting"

    .line 413
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->p:Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 415
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->p:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 416
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->p:Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 419
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "barge_in"

    .line 420
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->q:Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 422
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "dark_theme"

    .line 423
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->u:Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 425
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "about"

    .line 426
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/settings/preference/AboutPreference;

    const v3, 0x7f040003

    .line 427
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/settings/preference/AboutPreference;->setLayoutResource(I)V

    .line 428
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/util/AppNameUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/settings/preference/AboutPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "app_update_ticket"

    .line 431
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;

    const v3, 0x7f040243

    .line 432
    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->setLayoutResource(I)V

    .line 433
    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/app/music/settings/preference/AppUpdatePreference;->a(Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v4/app/FragmentActivity;)V

    .line 435
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->b:Z

    if-nez v1, :cond_3

    .line 436
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->j:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 437
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->j:Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 439
    :cond_3
    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 440
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->k:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 441
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->k:Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 449
    :cond_4
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 450
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->e()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 451
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 452
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->m:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 453
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->m:Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 455
    :cond_6
    sget-boolean v3, Lcom/samsung/android/app/music/info/features/AppFeatures;->d:Z

    if-eqz v3, :cond_7

    if-nez v1, :cond_7

    .line 456
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->e()Z

    move-result v3

    if-nez v3, :cond_8

    .line 457
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->o:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 458
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->o:Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 461
    :cond_8
    sget-boolean v3, Lcom/samsung/android/app/music/info/features/AppFeatures;->f:Z

    if-eqz v3, :cond_9

    if-eqz v1, :cond_a

    .line 462
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->f:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 463
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->f:Landroid/support/v7/preference/Preference;

    .line 465
    :cond_a
    invoke-static {v0}, Lcom/samsung/android/app/music/util/UiUtils;->e(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_d

    .line 466
    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->f:Landroid/support/v7/preference/Preference;

    if-eqz v3, :cond_b

    .line 467
    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->f:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 469
    :cond_b
    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->e:Landroid/support/v7/preference/Preference;

    if-eqz v3, :cond_c

    .line 470
    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->e:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 473
    :cond_c
    sget v3, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v5, 0x316a2

    if-gt v3, v5, :cond_d

    .line 474
    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->i:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 475
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->i:Landroid/support/v7/preference/Preference;

    .line 479
    :cond_d
    sget-boolean v3, Lcom/samsung/android/app/music/info/features/AppFeatures;->g:Z

    if-eqz v3, :cond_e

    if-eqz v1, :cond_f

    .line 480
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->q:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 481
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->q:Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 485
    :cond_f
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "my_music_mode_option"

    .line 486
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->t:Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 487
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "mobile_data"

    .line 488
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    .line 489
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 490
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "current_playlist"

    .line 491
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->r:Landroid/support/v7/preference/Preference;

    .line 492
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "streaming_audio_quality"

    .line 493
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->w:Landroid/support/v7/preference/Preference;

    .line 494
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "download_audio_quality"

    .line 495
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->x:Landroid/support/v7/preference/Preference;

    .line 496
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "duplicate_option"

    .line 497
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->s:Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 498
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "explicit_option"

    .line 499
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->y:Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;

    .line 500
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "similar_station"

    .line 501
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SwitchPreferenceCompat;

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->z:Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 502
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "push_notification"

    .line 503
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->A:Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;

    .line 504
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->A:Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 505
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "cache_size"

    .line 506
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->B:Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;

    .line 507
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->B:Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;

    const v3, 0x7f040045

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->setLayoutResource(I)V

    .line 508
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "device_management"

    .line 509
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->C:Landroid/support/v7/preference/Preference;

    .line 511
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "drm_license"

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->D:Landroid/support/v7/preference/Preference;

    .line 514
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "category_playlists"

    .line 515
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->I:Landroid/support/v7/preference/PreferenceCategory;

    .line 516
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "category_streaming"

    .line 517
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->J:Landroid/support/v7/preference/PreferenceCategory;

    .line 520
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->z:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 521
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->z:Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 524
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "drm_license_test_menu"

    .line 525
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->E:Landroid/support/v7/preference/Preference;

    .line 527
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "import_playlists"

    .line 528
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->G:Landroid/support/v7/preference/Preference;

    .line 529
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "export_playlists"

    .line 530
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->H:Landroid/support/v7/preference/Preference;

    .line 532
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->k:Z

    if-eqz v1, :cond_10

    .line 533
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->G:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 534
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->H:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 537
    :cond_10
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v3, "hidden_menu_backup_db_files"

    .line 538
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->F:Landroid/support/v7/preference/Preference;

    .line 540
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-nez v1, :cond_13

    .line 541
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->t:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 542
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->r:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 543
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->w:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 544
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->x:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 545
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->s:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 546
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->y:Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 547
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->A:Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 548
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->B:Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 549
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->C:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 550
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->D:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 551
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->E:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 552
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->I:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 553
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->J:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 555
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->t:Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 556
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->r:Landroid/support/v7/preference/Preference;

    .line 557
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->w:Landroid/support/v7/preference/Preference;

    .line 558
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->x:Landroid/support/v7/preference/Preference;

    .line 559
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->s:Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 560
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->y:Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;

    .line 561
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->z:Landroid/support/v7/preference/SwitchPreferenceCompat;

    .line 562
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->A:Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;

    .line 563
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->B:Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;

    .line 564
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->C:Landroid/support/v7/preference/Preference;

    .line 565
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->D:Landroid/support/v7/preference/Preference;

    .line 566
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->I:Landroid/support/v7/preference/PreferenceCategory;

    .line 567
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->J:Landroid/support/v7/preference/PreferenceCategory;

    .line 570
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 571
    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 572
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->hasSimCard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 573
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->setChecked(Z)V

    .line 574
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->setEnabled(Z)V

    goto :goto_0

    .line 577
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 578
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    goto :goto_0

    .line 581
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 582
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    goto :goto_0

    .line 584
    :cond_13
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isEnableTelephony(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 585
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 586
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    .line 591
    :cond_14
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Landroid/content/res/Resources;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v0

    const-string v1, "drmExpiredTest"

    .line 592
    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_15

    .line 595
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->E:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 596
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->E:Landroid/support/v7/preference/Preference;

    .line 600
    :cond_15
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Landroid/content/res/Resources;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v0

    const-string v1, "dbBackupTest"

    .line 601
    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_16

    .line 604
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->F:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 605
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->F:Landroid/support/v7/preference/Preference;

    .line 608
    :cond_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_17

    .line 609
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->u:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 610
    iput-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->u:Landroid/support/v7/preference/SwitchPreferenceCompat;

    :cond_17
    return-void
.end method

.method private f(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "edge_lighting"

    const/4 v1, 0x1

    .line 1271
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1272
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "edge_lighting"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic f(Lcom/samsung/android/app/music/settings/SettingsFragment;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->z()V

    return-void
.end method

.method static synthetic f(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->f(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private g()V
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 636
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->x()V

    .line 637
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->i()V

    .line 638
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->j()V

    .line 639
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 640
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 641
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->k()V

    .line 642
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->c(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 643
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->d(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 644
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->l()V

    .line 645
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->m()V

    .line 646
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->n()V

    .line 647
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->o()V

    .line 648
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->q()V

    .line 650
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 651
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->p()V

    .line 652
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->r()V

    .line 653
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->c()V

    .line 654
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a()V

    .line 655
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->b()V

    .line 656
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->t()V

    .line 657
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->u()V

    .line 658
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->v()V

    .line 659
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->w()V

    .line 660
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->d()V

    .line 664
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->r()V

    :cond_1
    return-void
.end method

.method private g(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "barge_in"

    const/4 v1, 0x0

    .line 1276
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1277
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->setBargeIn(Z)V

    .line 1278
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->b(Z)V

    return-void
.end method

.method static synthetic g(Lcom/samsung/android/app/music/settings/SettingsFragment;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->r()V

    return-void
.end method

.method static synthetic g(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->h(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic h(Lcom/samsung/android/app/music/settings/SettingsFragment;)Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->A:Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;

    return-object p0
.end method

.method private h(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "explicit_option"

    const/4 v1, 0x0

    .line 1282
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1283
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "explicit_option"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "explicit"

    .line 1284
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic h(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->i(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private h()Z
    .locals 2

    .line 738
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    .line 739
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private i()V
    .locals 3

    .line 743
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->e:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 747
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SOUNDALIVE_GENRE_INDEX"

    sget v2, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils$PresetConstants;->PRESET_NORMAL:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 749
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->e:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 750
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->e:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->h()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private i(Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "similar_station"

    const/4 v1, 0x0

    .line 1289
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1290
    invoke-static {p1}, Lcom/samsung/android/app/music/settings/MilkSettings;->b(Z)V

    const-string v0, "auto_rotation"

    .line 1291
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic i(Lcom/samsung/android/app/music/settings/SettingsFragment;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->w()V

    return-void
.end method

.method static synthetic i(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->e(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method static synthetic j(Lcom/samsung/android/app/music/settings/SettingsFragment;)Landroid/support/v7/preference/Preference;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->H:Landroid/support/v7/preference/Preference;

    return-object p0
.end method

.method private j()V
    .locals 2

    .line 767
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->f:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 770
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->isAdaptSoundOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 772
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->f:Landroid/support/v7/preference/Preference;

    const v1, 0x7f0b02d4

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 774
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->f:Landroid/support/v7/preference/Preference;

    const v1, 0x7f0b02d2

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 776
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->f:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->h()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method static synthetic k(Lcom/samsung/android/app/music/settings/SettingsFragment;)Landroid/support/v7/preference/Preference;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->G:Landroid/support/v7/preference/Preference;

    return-object p0
.end method

.method private k()V
    .locals 6

    .line 780
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->i:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 784
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/AutoOffUtils;->hasAutoOffPendingIntent(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MusicSettings"

    const-string v1, "updateAutoOff() : pi is null"

    .line 785
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->y()V

    return-void

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->d:Landroid/content/SharedPreferences;

    const-string v1, "music_auto_off_target_time"

    const-wide/16 v2, 0x0

    .line 791
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v0, v4

    cmp-long v2, v4, v2

    if-gtz v2, :cond_2

    goto :goto_0

    .line 796
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->b(J)V

    return-void

    .line 793
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->y()V

    return-void
.end method

.method private l()V
    .locals 3

    .line 851
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->m:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_0

    return-void

    .line 854
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->A()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lock_screen"

    .line 855
    iget-boolean v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->n:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 856
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->m:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 857
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->m:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private m()V
    .locals 2

    .line 862
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->o:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_0

    return-void

    .line 865
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getScreenOffMusic()Z

    move-result v0

    .line 866
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->o:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 867
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->o:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private n()V
    .locals 3

    .line 872
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->p:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_0

    return-void

    .line 875
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "edge_lighting"

    const/4 v2, 0x1

    .line 876
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 877
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->p:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 878
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->p:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private o()V
    .locals 2

    .line 883
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->q:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_0

    return-void

    .line 887
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->a(Landroid/content/Context;)Z

    move-result v0

    .line 888
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->q:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 889
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->q:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->q:Landroid/support/v7/preference/SwitchPreferenceCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setEnabled(Z)V

    return-void
.end method

.method private p()V
    .locals 2

    .line 895
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->t:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_0

    return-void

    .line 898
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    .line 899
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->t:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 900
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->t:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private q()V
    .locals 3

    .line 905
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->u:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_0

    return-void

    .line 909
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "dark_theme"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 910
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->u:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 911
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->u:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private r()V
    .locals 3

    .line 916
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    if-nez v0, :cond_0

    return-void

    .line 920
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/util/AndroidUtils;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "MusicSettings"

    const-string v2, "updateMobileData - SIM"

    .line 921
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->setChecked(Z)V

    .line 923
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->setEnabled(Z)V

    goto :goto_1

    .line 925
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MusicSettings"

    const-string v2, "updateMobileData - Offline"

    .line 926
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "MusicSettings"

    const-string v2, "updateMobileData - Normal"

    .line 929
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->setEnabled(Z)V

    .line 934
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v2, "mobile_data"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 935
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_3

    .line 936
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;->setChecked(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private s()Ljava/lang/String;
    .locals 5

    const-string v0, "milk_streaming_quality_mobile"

    const-string v1, "milk_streaming_quality_wifi"

    .line 962
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isEnableTelephony(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0b03bc

    .line 963
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 964
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 963
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "milk_streaming_quality_wifi"

    .line 965
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private t()V
    .locals 2

    .line 1011
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->s:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_0

    return-void

    .line 1014
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->c()Z

    move-result v0

    .line 1015
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->s:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1016
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->s:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private u()V
    .locals 4

    .line 1021
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->y:Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;

    if-nez v0, :cond_0

    return-void

    .line 1025
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    const-string v1, "1"

    .line 1026
    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->getAdultCertifyYn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MusicSettings"

    .line 1027
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdultCertifyYn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->getAdultCertifyYn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1031
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "explicit_option"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1032
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->y:Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_2

    .line 1033
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->y:Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/settings/preference/ExplicitPreference;->setChecked(Z)V

    :cond_2
    return-void
.end method

.method private v()V
    .locals 2

    .line 1038
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->z:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_0

    return-void

    .line 1041
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->d()Z

    move-result v0

    .line 1042
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->z:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1043
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->z:Landroid/support/v7/preference/SwitchPreferenceCompat;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SwitchPreferenceCompat;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private w()V
    .locals 2

    .line 1048
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->A:Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;

    if-nez v0, :cond_0

    return-void

    .line 1051
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->f()Z

    move-result v0

    .line 1052
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->A:Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1053
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->A:Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/settings/preference/ReceiveMarketingPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private x()V
    .locals 5

    .line 1093
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->l:Lcom/samsung/android/app/music/settings/preference/MusicCustomPreference;

    if-nez v0, :cond_0

    return-void

    .line 1096
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1097
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1098
    new-instance v2, Ljava/util/StringTokenizer;

    .line 1099
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/util/TabUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "|"

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 1102
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1103
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1104
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1105
    invoke-static {v4}, Lcom/samsung/android/app/music/util/ListUtils;->a(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1106
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1107
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1108
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "ar"

    .line 1109
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "\u060c "

    .line 1110
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v4, "\u060c "

    .line 1111
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_2
    const-string v4, ", "

    .line 1113
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v4, ", "

    .line 1114
    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 1119
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f02c7

    .line 1120
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1119
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 1121
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1122
    iget-object v2, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->l:Lcom/samsung/android/app/music/settings/preference/MusicCustomPreference;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/settings/preference/MusicCustomPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1123
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->l:Lcom/samsung/android/app/music/settings/preference/MusicCustomPreference;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/settings/preference/MusicCustomPreference;->a(Ljava/lang/String;)V

    return-void
.end method

.method private y()V
    .locals 2

    .line 1127
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->i:Landroid/support/v7/preference/Preference;

    const v1, 0x7f0b02d2

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    .line 1128
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "music_auto_off_entry_position"

    .line 1129
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "music_auto_off_target_time"

    .line 1130
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private z()V
    .locals 2

    .line 1200
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->L:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->L:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1202
    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->L:Ljava/util/TimerTask;

    .line 1204
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->K:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 1205
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->K:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1206
    iput-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->K:Ljava/util/Timer;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 942
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->w:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->w:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->s()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 2

    .line 1297
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1298
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 1299
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    const-string p2, "explicit_option"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1302
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Lcom/samsung/android/app/music/network/request/usersetting/UserSettingApi;->a(Landroid/content/Context;IZLjava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    const-string v0, "MusicSettings"

    .line 1718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIsSupportedLocation - b : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-nez v0, :cond_2

    .line 1720
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->hasSimCard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1722
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    if-nez p1, :cond_0

    .line 1723
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v0, "mobile_data"

    .line 1724
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    .line 1726
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 1728
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 p1, 0x0

    .line 1729
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->v:Lcom/samsung/android/app/music/settings/preference/MobileDataPreference;

    :cond_2
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 950
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->x:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->x:Landroid/support/v7/preference/Preference;

    const-string v1, "milk_download_quality"

    .line 955
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 954
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 6

    .line 989
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->r:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 993
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->a()I

    move-result v0

    .line 994
    new-instance v1, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$PlayOptionSettingItems;

    invoke-direct {v1}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$PlayOptionSettingItems;-><init>()V

    .line 996
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->b()I

    move-result v2

    .line 997
    new-instance v3, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$EnqueueOptionSettingItems;

    invoke-direct {v3}, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity$EnqueueOptionSettingItems;-><init>()V

    .line 999
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1001
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;->a(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;->c(I)I

    move-result v1

    .line 1000
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, ", "

    .line 1003
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;->a(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/music/settings/SettingsListActivity$SettingItems;->c(I)I

    move-result v0

    .line 1003
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->r:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1058
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->B:Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;

    if-nez v0, :cond_0

    const-string v0, "MusicSettings"

    const-string v1, "CacheSize preference null"

    .line 1059
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->B:Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->b()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 368
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->j()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 248
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 249
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 254
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f090004

    .line 255
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->addPreferencesFromResource(I)V

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 258
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->b:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    const-string v0, "music_player_pref"

    const/4 v1, 0x0

    .line 261
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->d:Landroid/content/SharedPreferences;

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 264
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->f()V

    .line 265
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->C()V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->m:Landroid/support/v7/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->A()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 270
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/library/framework/PackageManagerCompat;->a(Landroid/content/SharedPreferences;Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->n:Z

    .line 273
    :cond_0
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 274
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    const-string v1, "my_music_mode_option"

    invoke-virtual {p1, p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 275
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    const-string v1, "explicit_option"

    invoke-virtual {p1, p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 276
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    const-string v1, "similar_station"

    invoke-virtual {p1, p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 279
    :cond_1
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->k:Z

    if-nez p1, :cond_2

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->S:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->S:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p1, v0, v2, v1}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 284
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;

    move-result-object p1

    .line 285
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->a(Lcom/samsung/android/app/music/regional/spotify/ISpotifyFeatureChangedListener;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 352
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->Q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 353
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 354
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "my_music_mode_option"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "explicit_option"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "similar_station"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;

    move-result-object v0

    .line 359
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->b(Lcom/samsung/android/app/music/regional/spotify/ISpotifyFeatureChangedListener;)V

    .line 360
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 1683
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 1684
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->N:I

    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 1654
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->g:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    if-eqz v0, :cond_1

    .line 1655
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getSoundQuality()J

    move-result-wide v0

    .line 1656
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->g(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1659
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->g:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 1661
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->g:Lcom/samsung/android/app/music/settings/preference/PlaySpeedPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1665
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->j()V

    .line 1666
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 1667
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 1668
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->c(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 1669
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->d(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 338
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->z()V

    .line 339
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->onPause()V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    .line 671
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 672
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 674
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "manage_tabs"

    .line 675
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 676
    const-class v1, Lcom/samsung/android/app/music/activity/SettingReorderActivity;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 677
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    const-string v0, "5001"

    .line 678
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string v3, "sound_alive"

    .line 679
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 680
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getAudioSessionId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/util/SoundAliveLauncher;->a(Landroid/support/v4/app/FragmentActivity;I)V

    goto/16 :goto_0

    :cond_1
    const-string v3, "adapt_sound"

    .line 681
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 682
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->B()V

    goto/16 :goto_0

    :cond_2
    const-string v3, "music_auto_off"

    .line 683
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 684
    const-class v1, Lcom/samsung/android/app/music/settings/MusicAutoOffActivity;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 685
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    const-string v0, "5005"

    .line 686
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v3, "about"

    .line 687
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 688
    const-class v1, Lcom/samsung/android/app/music/activity/AboutActivity;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 689
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    const-string v0, "5008"

    .line 690
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v3, "current_playlist"

    .line 691
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 692
    const-class v1, Lcom/samsung/android/app/music/settings/CurrentPlaylistSettingsActivity;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 693
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    const-string v0, "5206"

    .line 694
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v3, "streaming_audio_quality"

    .line 695
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 696
    const-class v1, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 697
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    const-string v0, "5203"

    .line 698
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "download_audio_quality"

    .line 699
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 700
    const-class v1, Lcom/samsung/android/app/music/settings/DownloadAudioQualityActivity;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 701
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    const-string v0, "5204"

    .line 702
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "cache_size"

    .line 703
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 704
    const-class v1, Lcom/samsung/android/app/music/settings/CacheSizeSettingsActivity;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 705
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    const-string v0, "5211"

    .line 706
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "device_management"

    .line 707
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 708
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/dialog/MilkBaseLauncher;->a(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string p1, "MusicSettings"

    const-string v0, "Can not connect to network"

    .line 709
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 712
    :cond_9
    const-class v1, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 713
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    const-string v0, "5213"

    .line 714
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const-string v0, "drm_license"

    .line 715
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 716
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity;->a(Landroid/support/v4/app/FragmentActivity;)V

    const-string v0, "5214"

    .line 717
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const-string v0, "drm_license_test_menu"

    .line 718
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 720
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->D()V

    goto :goto_0

    :cond_c
    const-string v0, "hidden_menu_backup_db_files"

    .line 721
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 722
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->E()V

    goto :goto_0

    :cond_d
    const-string v0, "import_playlists"

    .line 723
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 724
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "ImportPlaylistsDialog"

    .line 725
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_f

    .line 726
    new-instance v1, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog;-><init>()V

    const-string v2, "ImportPlaylistsDialog"

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/music/list/playlist/ImportPlaylistsDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_e
    const-string v0, "export_playlists"

    .line 728
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 729
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "ExportPlaylistsDialog"

    .line 730
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_f

    .line 731
    new-instance v1, Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog;-><init>()V

    const-string v2, "ExportPlaylistsDialog"

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/music/list/playlist/ExportPlaylistsDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 734
    :cond_f
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 331
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->onResume()V

    .line 332
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    .line 333
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "more_settings"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1690
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->u()V

    .line 1691
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->v()V

    const-string p2, "my_music_mode_option"

    .line 1692
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1693
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->p()V

    .line 1694
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->r()V

    .line 1695
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p1

    const-string p2, "5201"

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 1696
    :goto_0
    invoke-direct {p0, p2, v0, v1}, Lcom/samsung/android/app/music/settings/SettingsFragment;->a(Ljava/lang/String;J)V

    .line 1698
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1700
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "settings_localMusicOnlyMode"

    if-eqz p1, :cond_1

    const-string p1, "On"

    goto :goto_1

    :cond_1
    const-string p1, "Off"

    :goto_1
    invoke-static {p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 323
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->onStart()V

    .line 324
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->g()V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->R:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 326
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->c:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/SettingsFragment;->R:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 345
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 346
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 295
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BasePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 298
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "no_mobile_data"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x102000a

    .line 300
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    if-eqz p1, :cond_0

    .line 302
    new-instance p2, Lcom/samsung/android/app/music/settings/SettingsFragment$1;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/music/settings/SettingsFragment$1;-><init>(Lcom/samsung/android/app/music/settings/SettingsFragment;Landroid/widget/ListView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, p2, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->e()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const-string v0, "Settings"

    const/4 v2, 0x3

    .line 314
    new-array v2, v2, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/LaunchAutoOffExecutor;

    invoke-direct {v3, p1, p2}, Lcom/samsung/android/app/music/bixby/v1/executor/settings/global/LaunchAutoOffExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/app/Activity;)V

    aput-object v3, v2, v1

    const/4 p2, 0x1

    new-instance v1, Lcom/samsung/android/app/music/bixby/v1/executor/settings/LaunchSettingsResponseExecutor;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/settings/LaunchSettingsResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V

    aput-object v1, v2, p2

    const/4 p2, 0x2

    new-instance v1, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/app/music/bixby/v1/executor/settings/kr/SetPlaySettingExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/music/settings/SettingsFragment;)V

    aput-object v1, v2, p2

    invoke-interface {p1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    :cond_1
    return-void
.end method
