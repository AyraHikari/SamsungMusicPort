.class final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder$myMusicModeSettingObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;-><init>(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder$myMusicModeSettingObserver$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "my_music_mode_option"

    .line 71
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder$myMusicModeSettingObserver$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->b(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;)Landroid/view/View;

    .line 73
    sget-object p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;

    .line 341
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "SMUSIC-MiniPlayerLayoutBuilder"

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "My music mode is changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder$myMusicModeSettingObserver$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;

    iget-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder$myMusicModeSettingObserver$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;

    invoke-static {p2}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->c(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;)Z

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder$myMusicModeSettingObserver$1;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->d(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;)Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;->a(Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;ZZ)V

    :cond_1
    return-void
.end method
