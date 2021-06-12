.class public final Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;
.super Lcom/samsung/android/app/musiclibrary/core/service/receiver/EmptyDataSchemeIntentReceiverObserver;
.source "SourceFile"


# static fields
.field private static final ACTIONS:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV"

.field private static final TAG:Ljava/lang/String; = "SV"


# instance fields
.field private final mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    .line 21
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.intent.action.SCREEN_ON"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.intent.action.SCREEN_OFF"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "com.samsung.android.app.music.core.state.PLAYED_INFO_CHANGED"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;->ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/EmptyDataSchemeIntentReceiverObserver;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    return-void
.end method


# virtual methods
.method public getSupportedActions()[Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;->ACTIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 46
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {p2, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {p2, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const-string v0, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {p2, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string v0, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const-string v0, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 53
    invoke-interface {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    const-string v0, "com.samsung.android.app.music.core.state.PLAYED_INFO_CHANGED"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const-string v0, "com.samsung.android.app.music.core.state.PLAYED_INFO_CHANGED"

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 57
    invoke-interface {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 59
    :cond_4
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "reason"

    const/4 v2, 0x0

    .line 60
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 61
    sget v0, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->MODE_ENABLED:I

    if-eq p2, v0, :cond_5

    sget v0, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->MODE_ENABLING:I

    if-ne p2, v0, :cond_6

    .line 63
    :cond_5
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {p2, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 64
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "SMUSIC-SV"

    const-string p2, "The emergency mode is entering. The play back is terminated. And notify MusicInfo."

    .line 65
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/MusicExtraIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->stop()V

    :cond_6
    :goto_0
    return-void
.end method
