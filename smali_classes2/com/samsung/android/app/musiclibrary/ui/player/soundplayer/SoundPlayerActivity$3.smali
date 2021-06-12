.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;J)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$3;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    iput-wide p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$3;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 361
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$3;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 364
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$3;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->c(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$3;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->c(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 365
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$3;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$3;->a:J

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$3;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->n()J

    move-result-wide v6

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$3;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    .line 366
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->r()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v8, 0x0

    .line 365
    :goto_0
    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a(Ljava/lang/String;JJZ)V

    return-void
.end method
