.class final Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$settingObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$settingObserver$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "my_music_mode_option"

    .line 679
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 680
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$settingObserver$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->e(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;Z)V

    :cond_1
    return-void
.end method
