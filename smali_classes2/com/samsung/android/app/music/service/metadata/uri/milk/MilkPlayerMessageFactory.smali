.class public final Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$RadioFreeUserMessage;,
        Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage;,
        Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;,
        Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$TicketMessage;,
        Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$LoginMessage;,
        Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$DefaultMessage;,
        Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;
    }
.end annotation


# direct methods
.method public static a(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_result_code"

    .line 106
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sparse-switch p0, :sswitch_data_0

    .line 130
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$DefaultMessage;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 128
    :sswitch_0
    invoke-static {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$RadioFreeUserMessage;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 112
    :sswitch_1
    invoke-static {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$TicketMessage;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 109
    :sswitch_2
    invoke-static {v0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$LoginMessage;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 118
    :sswitch_3
    invoke-static {v0, p1, p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;->a(Landroid/os/Bundle;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 126
    :sswitch_4
    invoke-static {v0, p1, p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage;->a(Landroid/os/Bundle;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_4
        -0x3 -> :sswitch_4
        -0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x1389 -> :sswitch_4
        0x138a -> :sswitch_4
        0x138b -> :sswitch_4
        0x2711 -> :sswitch_3
        0x2712 -> :sswitch_3
        0x2715 -> :sswitch_3
        0x2716 -> :sswitch_3
        0x2717 -> :sswitch_3
        0x2af8 -> :sswitch_2
        0x2ee0 -> :sswitch_1
        0x36b0 -> :sswitch_1
        0x3e80 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;
    .locals 1

    const-string v0, "extra_result_code"

    .line 138
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 162
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$DefaultMessage;->a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    move-result-object p0

    return-object p0

    .line 160
    :sswitch_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$RadioFreeUserMessage;->a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    move-result-object p0

    return-object p0

    .line 144
    :sswitch_1
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$TicketMessage;->a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    move-result-object p0

    return-object p0

    .line 141
    :sswitch_2
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$LoginMessage;->a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    move-result-object p0

    return-object p0

    .line 150
    :sswitch_3
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ExplicitMessage;->a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    move-result-object p0

    return-object p0

    .line 158
    :sswitch_4
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$ServerErrorMessage;->a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_4
        -0x3 -> :sswitch_4
        -0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x1389 -> :sswitch_4
        0x138a -> :sswitch_4
        0x138b -> :sswitch_4
        0x2711 -> :sswitch_3
        0x2712 -> :sswitch_3
        0x2715 -> :sswitch_3
        0x2716 -> :sswitch_3
        0x2717 -> :sswitch_3
        0x2af8 -> :sswitch_2
        0x2ee0 -> :sswitch_1
        0x36b0 -> :sswitch_1
        0x3e80 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a()Z
    .locals 1

    .line 52
    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory;->b()Z

    move-result v0

    return v0
.end method

.method private static b()Z
    .locals 2

    .line 650
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 651
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
