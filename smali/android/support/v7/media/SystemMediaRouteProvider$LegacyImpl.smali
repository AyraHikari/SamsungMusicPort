.class Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;
.super Landroid/support/v7/media/SystemMediaRouteProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/SystemMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LegacyImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$VolumeChangeReceiver;,
        Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;
    }
.end annotation


# static fields
.field private static final CONTROL_FILTERS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field static final PLAYBACK_STREAM:I = 0x3


# instance fields
.field final mAudioManager:Landroid/media/AudioManager;

.field mLastReportedVolume:I

.field private final mVolumeChangeReceiver:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$VolumeChangeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.intent.category.LIVE_AUDIO"

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "android.media.intent.category.LIVE_VIDEO"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->CONTROL_FILTERS:Ljava/util/ArrayList;

    .line 125
    sget-object v1, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->CONTROL_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 133
    invoke-direct {p0, p1}, Landroid/support/v7/media/SystemMediaRouteProvider;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 130
    iput v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mLastReportedVolume:I

    const-string v0, "audio"

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 135
    new-instance v0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$VolumeChangeReceiver;

    invoke-direct {v0, p0}, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$VolumeChangeReceiver;-><init>(Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;)V

    iput-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mVolumeChangeReceiver:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$VolumeChangeReceiver;

    .line 137
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mVolumeChangeReceiver:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$VolumeChangeReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->publishRoutes()V

    return-void
.end method


# virtual methods
.method public onCreateRouteController(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;
    .locals 1

    const-string v0, "DEFAULT_ROUTE"

    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 166
    new-instance p1, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;

    invoke-direct {p1, p0}, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;-><init>(Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method publishRoutes()V
    .locals 6

    .line 143
    invoke-virtual {p0}, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 144
    iget-object v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 145
    iget-object v3, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mLastReportedVolume:I

    .line 146
    new-instance v3, Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    const-string v4, "DEFAULT_ROUTE"

    sget v5, Landroid/support/v7/mediarouter/R$string;->mr_system_route_name:I

    .line 147
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->CONTROL_FILTERS:Ljava/util/ArrayList;

    .line 148
    invoke-virtual {v3, v0}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->addControlFilters(Ljava/util/Collection;)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0, v2}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setPlaybackStream(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 150
    invoke-virtual {v0, v2}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setPlaybackType(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 151
    invoke-virtual {v0, v2}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setVolumeHandling(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setVolumeMax(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mLastReportedVolume:I

    .line 153
    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->setVolume(I)Landroid/support/v7/media/MediaRouteDescriptor$Builder;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteDescriptor$Builder;->build()Landroid/support/v7/media/MediaRouteDescriptor;

    move-result-object v0

    .line 156
    new-instance v1, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;

    invoke-direct {v1}, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;-><init>()V

    .line 158
    invoke-virtual {v1, v0}, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->addRoute(Landroid/support/v7/media/MediaRouteDescriptor;)Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProviderDescriptor$Builder;->build()Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v0

    .line 160
    invoke-virtual {p0, v0}, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->setDescriptor(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    return-void
.end method
