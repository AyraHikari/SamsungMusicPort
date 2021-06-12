.class public Lcom/samsung/android/app/music/browse/BrowseLauncher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/BrowseLauncher$TrackDetailActivityRequester;,
        Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;,
        Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;,
        Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;,
        Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;,
        Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequester;,
        Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;,
        Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;,
        Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "BrowseLauncher"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;
    .locals 1

    .line 95
    invoke-static {}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;->a()Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;
    .locals 1

    .line 77
    new-instance v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;-><init>(I)V

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Z)Lio/reactivex/disposables/Disposable;
    .locals 2
    .param p0    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 107
    invoke-static {p0}, Lcom/samsung/android/app/music/util/rx/AccountSignUpFlow;->a(Landroid/support/v4/app/FragmentActivity;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/browse/BrowseLauncher$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$1;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Z)V

    .line 118
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object p0

    .line 107
    invoke-virtual {v0, v1, p0}, Lio/reactivex/Single;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 252
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b()Lio/reactivex/Observable;

    move-result-object v0

    .line 253
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/functions/Function;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 254
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 255
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$2;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$2;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;)V

    new-instance p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$3;

    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$3;-><init>(Lcom/samsung/android/app/music/browse/BrowseLauncher$OnLaunchResultListener;)V

    .line 256
    invoke-virtual {p1, v0, p0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-static {p0, v0, p2}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 165
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/content/Context;Ljava/util/List;IZ)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;IZ)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .line 170
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    sget-object p0, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a:Ljava/lang/String;

    const-string p1, "url is empty"

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 175
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 177
    new-instance p1, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;->COVER_ART:Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.music"

    .line 178
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "contentLists"

    .line 179
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "contentDescriptions"

    .line 180
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "split_view"

    .line 181
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    instance-of p2, p0, Landroid/app/Activity;

    if-nez p2, :cond_1

    const/high16 p2, 0x10000000

    .line 183
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 185
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 123
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a(Landroid/content/Context;Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZI)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 129
    sget-object p0, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a:Ljava/lang/String;

    const-string p1, "launchVideoPlayer. activity is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 134
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p2

    .line 133
    invoke-static {p0, p2}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/UserInfo;)I

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "explicit-invalid"

    .line 140
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 139
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 145
    :cond_1
    new-instance p2, Landroid/content/Intent;

    sget-object v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;->VIDEO_PLAYER:Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_2

    const/high16 v0, 0x10000000

    .line 147
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    const-string v0, "com.sec.android.app.music"

    .line 149
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_id"

    .line 150
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_content_type"

    .line 151
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 234
    sget-object p0, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a:Ljava/lang/String;

    const-string p1, "move : linkType is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 238
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 239
    sget-object p0, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a:Ljava/lang/String;

    const-string p1, "move : linkUrl is null"

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 243
    :cond_1
    sget-object p1, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "move : link url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 245
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 246
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a(Landroid/support/v4/app/FragmentActivity;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;
    .locals 1

    .line 88
    new-instance v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;-><init>(I)V

    return-object v0
.end method
