.class final Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;
.super Lcom/samsung/android/app/music/AbsDeleteableWithDialog;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/menu/PlayerMenuGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlayerDeletableImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl$Companion;


# instance fields
.field private final b:Landroid/support/v4/app/FragmentManager;

.field private final c:Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;

.field private final d:Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;

.field private final e:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl$playerSceneStateListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;ILjava/lang/Object;)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/PluralsRes;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instance"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/AbsDeleteableWithDialog;-><init>(Landroid/support/v4/app/FragmentActivity;I)V

    .line 555
    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;->b:Landroid/support/v4/app/FragmentManager;

    .line 556
    instance-of p2, p1, Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;->c:Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;

    .line 557
    instance-of p1, p3, Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;

    if-nez p1, :cond_1

    move-object p3, v0

    :cond_1
    check-cast p3, Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;

    iput-object p3, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;->d:Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;

    .line 562
    new-instance p1, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl$playerSceneStateListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl$playerSceneStateListener$1;-><init>(Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;->e:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl$playerSceneStateListener$1;

    .line 573
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;->c:Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;->e:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl$playerSceneStateListener$1;

    check-cast p2, Lcom/samsung/android/app/music/player/PlayerSceneStateListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;->addPlayerSceneStateListener(Lcom/samsung/android/app/music/player/PlayerSceneStateListener;)V

    :cond_2
    return-void
.end method

.method private final a()J
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;->d:Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/music/player/fullplayer/PlayerInfoGetter;->k()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;)Landroid/support/v4/app/FragmentManager;
    .locals 0

    .line 551
    iget-object p0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;->b:Landroid/support/v4/app/FragmentManager;

    return-object p0
.end method


# virtual methods
.method protected deleteItemsInternal(Landroid/app/Activity;[J)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "PlayerMenuGroup"

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteItemsInternal() id count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    new-instance v0, Lcom/samsung/android/app/music/util/task/DeleteItemTask;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers;->ALL:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/samsung/android/app/music/util/task/DeleteItemTask;-><init>(Landroid/app/Activity;[JLcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;Z)V

    new-array p1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/util/task/DeleteItemTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_2
    :goto_1
    const-string p1, "SMUSIC-UiPlayer"

    const-string p2, "deleteItemsInternal() activity is finishing or destroyed."

    .line 590
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected getDeleteItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getDeleteItemIds()[J
    .locals 5

    .line 577
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;->a()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 578
    new-array v0, v2, [J

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 579
    new-array v0, v0, [J

    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;->a()J

    move-result-wide v3

    aput-wide v3, v0, v2

    :goto_0
    return-object v0
.end method

.method public release()V
    .locals 2

    .line 598
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;->c:Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;->e:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl$playerSceneStateListener$1;

    check-cast v1, Lcom/samsung/android/app/music/player/PlayerSceneStateListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/player/PlayerSceneStatePublisher;->removePlayerSceneStateListener(Lcom/samsung/android/app/music/player/PlayerSceneStateListener;)V

    :cond_0
    return-void
.end method
