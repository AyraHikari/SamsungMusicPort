.class public Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SoundPlayerActivity"

.field private static final b:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field private c:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

.field private g:Landroid/net/Uri;

.field private h:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:I

.field private final q:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;

.field private final r:Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;

.field private final s:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

.field private final t:Landroid/content/BroadcastReceiver;

.field private final u:Landroid/content/BroadcastReceiver;

.field private final v:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->i:Z

    const/4 v1, 0x1

    .line 103
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->j:Z

    .line 105
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->k:Z

    .line 107
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->l:Z

    const/4 v1, 0x3

    .line 109
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->m:I

    .line 113
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->o:Z

    .line 117
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;

    .line 136
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->r:Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;

    .line 374
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$4;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->s:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

    .line 837
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$6;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->t:Landroid/content/BroadcastReceiver;

    .line 881
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$7;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->u:Landroid/content/BroadcastReceiver;

    .line 924
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$8;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->v:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 7

    const/4 v0, 0x0

    .line 769
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_0

    .line 771
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "_id"

    .line 773
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    .line 772
    invoke-static {p1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 777
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_1
    move-exception p1

    move-object p2, v0

    :goto_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1
.end method

.method private a(Landroid/content/Intent;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;
    .locals 3

    .line 620
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    const-string v1, "processWebContents()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;-><init>()V

    const-string v1, "from-myfiles"

    const/4 v2, 0x0

    .line 622
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "title_name"

    .line 623
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->c:Ljava/lang/String;

    goto :goto_0

    .line 625
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->c:Ljava/lang/String;

    .line 627
    :goto_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;
    .locals 3

    .line 632
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    const-string v1, "processLocalContents()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;-><init>()V

    .line 635
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    .line 637
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->c:Ljava/lang/String;

    goto :goto_0

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo;->a(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    move-result-object v0

    .line 642
    :goto_0
    sget-boolean p2, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->E:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const-string p2, "isAnsweringMemo"

    .line 645
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 648
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->setVolumeControlStream(I)V

    .line 649
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->m:I

    const-string p2, "displayName"

    .line 653
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 656
    iput-object p2, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p2, 0x3

    .line 659
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->setVolumeControlStream(I)V

    .line 660
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->m:I

    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 666
    iget-object p2, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->b:Ljava/lang/String;

    if-nez p2, :cond_4

    .line 667
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    const-string v2, "processLocalContents there are no path information thus using file uri"

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "content://com.sec.android.app.myfiles.FileProvider/"

    .line 670
    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "key_filename"

    .line 680
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->b:Ljava/lang/String;

    goto :goto_2

    .line 687
    :cond_3
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->g:Landroid/net/Uri;

    .line 688
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->g:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->b:Ljava/lang/String;

    .line 690
    :goto_2
    iget-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "%"

    const-string p2, "%25"

    .line 693
    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "#"

    const-string p3, "%23"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 694
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->g:Landroid/net/Uri;

    .line 695
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->g:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->b:Ljava/lang/String;

    .line 696
    iget-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a(Ljava/lang/String;)Z

    move-result p1

    goto :goto_3

    .line 699
    :cond_4
    iget-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a(Ljava/lang/String;)Z

    move-result p1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :cond_6
    :goto_3
    if-nez p1, :cond_7

    .line 704
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->unable_to_find_item:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 705
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    return-object p1

    :cond_7
    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 403
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->close_btn:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 404
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$5;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 415
    sget p1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->a:I

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->f:I

    or-int/2addr p1, v1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/Window;IZ)V
    .locals 2

    if-nez p3, :cond_0

    .line 256
    iget p3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->p:I

    if-eq p3, p2, :cond_1

    .line 257
    :cond_0
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/samsung/android/app/musiclibrary/R$dimen;->sound_player_view_min_width:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p2, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/util/TypedValue;->getFloat()F

    move-result p2

    mul-float p3, p3, p2

    float-to-int p2, p3

    const/4 p3, -0x2

    .line 260
    invoke-virtual {p1, p2, p3}, Landroid/view/Window;->setLayout(II)V

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->p:I

    .line 265
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    const-string p2, "adjustDialogWindow(): orientation was changed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 6

    .line 565
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->g:Landroid/net/Uri;

    .line 566
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->g:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 567
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    const-string v0, "processIntent() - There\'s no uri so can\'t play."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 570
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 571
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processIntent() - intent action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 573
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processIntent() - MediaPlayer is preparing, ignore this request, action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 579
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->n:Ljava/lang/String;

    .line 581
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 585
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->g:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a(Landroid/net/Uri;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->g:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v4, "content"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "@"

    .line 586
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 587
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 588
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->g:Landroid/net/Uri;

    :cond_2
    const-string v2, "http"

    .line 591
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 592
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->g:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a(Landroid/content/Intent;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    goto :goto_1

    :cond_3
    const-string v2, "file"

    .line 593
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "content://com.sec.android.app.myfiles.FileProvider/"

    .line 594
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 596
    :cond_4
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SoundPlayerFileInfo;->a:Landroid/net/Uri;

    .line 597
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 598
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_5

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 599
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 601
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    const-string v0, "processIntent() - request permission"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->l:Z

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 603
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1

    .line 606
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->g:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b(Landroid/content/Intent;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    goto :goto_1

    .line 609
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->g:Landroid/net/Uri;

    invoke-direct {p0, p1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    goto :goto_1

    .line 595
    :cond_7
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->g:Landroid/net/Uri;

    invoke-direct {p0, p1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    .line 612
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    if-eqz p1, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 616
    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;)Z
    .locals 4

    const-string v0, "hunActivated"

    const/4 v1, 0x0

    .line 278
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->a(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    const-string v2, "dontShowCheck"

    .line 280
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->a(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    const-string v3, "notiCount"

    .line 281
    invoke-virtual {p1, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;->b(Ljava/lang/String;I)I

    move-result p1

    .line 283
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->j()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->i()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->h()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->i:Z

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->o:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 713
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 714
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 718
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private b(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 9

    const-string v0, "_id"

    .line 748
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v7, "_data COLLATE NOCASE = ?"

    const/4 v1, 0x1

    .line 750
    new-array v8, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v8, v1

    .line 752
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SoundPlayerFileInfo;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, v0

    move-object v4, v7

    move-object v5, v8

    .line 753
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    .line 757
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SoundPlayerFileInfo;->b:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, v0

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    return-object p0
.end method

.method private b(Landroid/content/Intent;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;
    .locals 2

    .line 724
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    const-string v1, "processMediaStoreContents()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;
    .locals 2

    .line 729
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    const-string v1, "processOtherContents()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 733
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;-><init>()V

    .line 734
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->c:Ljava/lang/String;

    :cond_0
    const-string p2, "content://mms/part/"

    .line 738
    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "content://security_mms/part/"

    .line 739
    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const-string p2, "title_name"

    .line 740
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p2, "title_name"

    .line 741
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "title_name"

    .line 742
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->c:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->k:Z

    return p1
.end method

.method static synthetic c(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    return-object p0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Z
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->j()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Landroid/net/Uri;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->g:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->n:Ljava/lang/String;

    return-object p0
.end method

.method private g()V
    .locals 6

    .line 175
    sget v0, Lcom/samsung/android/app/musiclibrary/R$layout;->sound_player_common:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->setContentView(I)V

    .line 177
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->sound_player_root:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 185
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    .line 186
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;-><init>(Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    .line 188
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .line 189
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->m:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(I)V

    .line 190
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$1;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;)V

    .line 191
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;)V

    .line 194
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-direct {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->c()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->a(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V

    .line 198
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Ljava/lang/String;)V

    .line 202
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerPlayingItemText;

    invoke-direct {v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerPlayingItemText;-><init>(Landroid/view/View;)V

    .line 203
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 207
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;)V

    .line 209
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 213
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;

    invoke-direct {v3, p0, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a(Landroid/content/Context;)V

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->k()V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->r:Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;

    .line 223
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->registerObserver(Landroid/app/Activity;Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;)V

    .line 225
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->o()V

    .line 226
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->m()V

    .line 227
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->n()V

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->l()V

    .line 230
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 233
    sget v2, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->MULTIWINDOW_FLAG_DISABLE_FLOATING_WINDOW:I

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->addMultiWindowFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 236
    sget v2, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->PRIVATE_FLAG_NO_MOVE_ANIMATION:I

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->addPrivateFlags(Landroid/view/WindowManager$LayoutParams;I)V

    .line 238
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 241
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;-><init>(Landroid/content/Context;)V

    .line 242
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->e:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;

    invoke-direct {v2, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunPreference;)V

    const/4 v0, 0x0

    .line 244
    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/HunNotificationUpdater;->a(Z)V

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->p:I

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a(Landroid/view/Window;IZ)V

    .line 250
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    :cond_2
    return-void

    .line 179
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, " Failed to make sound player. Current layout does not have view with id attribute \'R.id.sound_player_root\'."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic g(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->j:Z

    return p0
.end method

.method private h()Z
    .locals 3

    const/4 v0, 0x0

    .line 289
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "com.google.android.music"

    .line 291
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "com.google.android.music"

    .line 292
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 298
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private i()Z
    .locals 3

    const/4 v0, 0x0

    .line 305
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "com.samsung.android.app.music.chn"

    .line 307
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 312
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private j()Z
    .locals 7

    const/4 v0, 0x0

    .line 319
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "com.sec.android.app.music"

    .line 323
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "com.sec.android.app.music"

    .line 324
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 325
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.sec.android.app.music, isInstalled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isNmp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", currPackage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 325
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v1

    .line 331
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method private k()V
    .locals 7

    .line 337
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    if-nez v0, :cond_0

    return-void

    .line 341
    :cond_0
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->sound_player_shortcut_btn:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 342
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->j()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->e:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 343
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    iget-wide v3, v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->a:J

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a(J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    .line 345
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setShortCutButton() - There is no playable id, the current audio id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    iget-wide v4, v4, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 352
    :cond_1
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->sound_player_shortcut:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 353
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->z_:Z

    if-eqz v2, :cond_2

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->sound_player_shortcut_text_for_jpn:I

    .line 354
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->sound_player_shortcut_text:I

    .line 355
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 353
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 357
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 358
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$3;

    invoke-direct {v1, p0, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;J)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 370
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private l()V
    .locals 3

    .line 550
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->h:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerInfo$SongInfo;)V

    .line 553
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->g:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(Landroid/net/Uri;Z)V

    .line 555
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    goto :goto_0

    .line 559
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    const-string v1, "startSoundPlayer() mCurrentSongInfo is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method private m()V
    .locals 2

    .line 813
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 814
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 815
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    .line 816
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 817
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private n()V
    .locals 2

    .line 821
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 822
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 823
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    .line 824
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.intent.action.START_WATCH"

    .line 825
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.camera.ACTION_CAMERA_START"

    .line 826
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 827
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private o()V
    .locals 2

    .line 831
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    .line 832
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 833
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 834
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected a(J)J
    .locals 0

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V
    .locals 2

    .line 792
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    .line 793
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 2

    .line 806
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    .line 807
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->b()V

    goto :goto_0

    .line 809
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->finish()V

    return-void
.end method

.method public b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V
    .locals 2

    .line 785
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    .line 786
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c()Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V
    .locals 2

    .line 799
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;

    .line 800
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerStateListener;->c(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 271
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 273
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a(Landroid/view/Window;IZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 159
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->finish()V

    return-void

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 168
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->g()V

    goto :goto_0

    .line 169
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->l:Z

    if-nez p1, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->v:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 496
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 497
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :catch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->b()V

    .line 503
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->c()V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->r:Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->unregisterObserver(Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;)V

    .line 509
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 514
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 515
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->b()V

    .line 518
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 519
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->l()V

    goto :goto_0

    .line 521
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 470
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onPause()V

    const/4 v0, 0x1

    .line 471
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->i:Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 528
    array-length p2, p3

    if-nez p2, :cond_0

    .line 531
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    const-string p2, "onRequestPermissionsResult() - It\'s returned because grandResults length is zero"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 p2, 0x64

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 535
    aget p2, p3, p1

    if-nez p2, :cond_1

    .line 537
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->a(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 538
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->l:Z

    .line 539
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->g()V

    goto :goto_0

    .line 541
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 455
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onResume()V

    .line 456
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 460
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->o:Z

    .line 461
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->i:Z

    .line 462
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(Z)V

    .line 464
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    const-string v1, "onResume(): set mediasession active."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 438
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onStart()V

    .line 439
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->s:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

    .line 443
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->a(Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;)V

    .line 444
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->addOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V

    const/4 v0, 0x0

    .line 445
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->j:Z

    .line 446
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(Z)V

    .line 448
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    const-string v1, "onStart(): set mediasession active."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 3

    .line 476
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop() is called, mUserLeftHintIndirectly : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->c:Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver;->a(Lcom/samsung/android/app/musiclibrary/ui/database/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;)V

    .line 480
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->o:Z

    if-eqz v0, :cond_2

    .line 481
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->k:Z

    if-nez v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a()V

    .line 483
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(Z)V

    .line 485
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->k:Z

    :cond_2
    const/4 v0, 0x1

    .line 487
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->j:Z

    .line 488
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->q:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->removeOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V

    .line 489
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onStop()V

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 2

    .line 421
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->l:Z

    if-eqz v0, :cond_0

    .line 422
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onUserLeaveHint()V

    return-void

    .line 426
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b:Ljava/lang/String;

    const-string v1, "onUserLeaveHint() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->k:Z

    if-nez v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a()V

    .line 429
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->f:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(Z)V

    .line 431
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->k:Z

    .line 432
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->o:Z

    .line 433
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->onUserLeaveHint()V

    return-void
.end method
