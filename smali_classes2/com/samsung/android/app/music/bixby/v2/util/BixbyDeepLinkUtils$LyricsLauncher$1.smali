.class Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher$1;->a:Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    .line 165
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher$1;->a:Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;->b(Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;)Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;

    move-result-object p1

    const-string p2, "withPlayerLyrics"

    const/4 v0, 0x1

    .line 166
    invoke-static {v0, p2}, Lcom/samsung/android/app/music/ActivityLauncher;->a(ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 165
    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$OnExtractListener;->a(Landroid/content/Intent;)V

    .line 168
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher$1;->a:Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;->c(Lcom/samsung/android/app/music/bixby/v2/util/BixbyDeepLinkUtils$LyricsLauncher;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b()V

    return-void
.end method
