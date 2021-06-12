.class final Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleServerMessage"
.end annotation


# static fields
.field private static volatile a:Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;


# instance fields
.field private b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;->c:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;
    .locals 2

    .line 127
    sget-object v0, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;->a:Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;

    if-nez v0, :cond_1

    .line 128
    const-class v0, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;

    monitor-enter v0

    .line 129
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;->a:Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;

    invoke-direct {v1}, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;-><init>()V

    sput-object v1, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;->a:Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;

    .line 132
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 134
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;->a:Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;

    return-object v0
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 179
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isResumedState()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int p3, v0

    .line 184
    invoke-static {p1, p4, p3}, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver;->a(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;I)V

    .line 185
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;->c:Ljava/util/List;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getMessageTimeStamp()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private a(Landroid/os/Bundle;)Z
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "extra_result_code"

    .line 190
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    :sswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x1389 -> :sswitch_0
        0x138a -> :sswitch_0
        0x138b -> :sswitch_0
        0x2711 -> :sswitch_0
        0x2712 -> :sswitch_0
        0x2715 -> :sswitch_0
        0x2716 -> :sswitch_0
        0x2717 -> :sswitch_0
        0x2af8 -> :sswitch_0
        0x2ee0 -> :sswitch_0
        0x36b0 -> :sswitch_0
        0x3a98 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 142
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isEditedMetadata()Z

    move-result p1

    if-nez p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V
    .locals 3
    .param p2    # Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;->c:Ljava/util/List;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getMessageTimeStamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "SMUSIC-ServerMessage"

    const-string p2, "pushPlaybackState but already consumed message"

    .line 152
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 155
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getMessage()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 159
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 168
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;->a(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 169
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 170
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-direct {p0, p2, p1, v1, v0}, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;->a(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "SMUSIC-ServerMessage"

    .line 164
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pushPlaybackState but current state - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 173
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-direct {p0, p2, p1, v1, v0}, Lcom/samsung/android/app/music/activity/StreamingServerMessageReceiver$SingleServerMessage;->a(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Landroid/os/Bundle;)V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
