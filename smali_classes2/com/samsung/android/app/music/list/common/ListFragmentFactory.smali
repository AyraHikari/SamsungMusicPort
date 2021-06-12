.class public final Lcom/samsung/android/app/music/list/common/ListFragmentFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/common/ListFragmentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/samsung/android/app/music/list/common/ListFragmentFactory;

    invoke-direct {v0}, Lcom/samsung/android/app/music/list/common/ListFragmentFactory;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/list/common/ListFragmentFactory;->a:Lcom/samsung/android/app/music/list/common/ListFragmentFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(ILjava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 2

    .line 47
    sget-object v0, Lcom/samsung/android/app/music/list/common/ListFragmentFactory;->a:Lcom/samsung/android/app/music/list/common/ListFragmentFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/samsung/android/app/music/list/common/ListFragmentFactory;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static final a(ILjava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 2

    .line 52
    sget-object v0, Lcom/samsung/android/app/music/list/common/ListFragmentFactory;->a:Lcom/samsung/android/app/music/list/common/ListFragmentFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/android/app/music/list/common/ListFragmentFactory;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 57
    sget-object v0, Lcom/samsung/android/app/music/list/common/ListFragmentFactory;->a:Lcom/samsung/android/app/music/list/common/ListFragmentFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/common/ListFragmentFactory;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method private final b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Landroid/support/v4/app/Fragment;
    .locals 7

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    goto/16 :goto_0

    .line 77
    :sswitch_0
    sget-object p1, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->a:Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$Companion;

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    if-nez p4, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$Companion;->a(Ljava/lang/String;I)Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto/16 :goto_0

    .line 69
    :sswitch_1
    new-instance p1, Lcom/samsung/android/app/music/list/local/AllTrackFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto/16 :goto_0

    .line 83
    :sswitch_2
    sget-object p1, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->a:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$Companion;

    if-nez p2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$Companion;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto/16 :goto_0

    .line 81
    :sswitch_3
    sget-object p1, Lcom/samsung/android/app/music/list/local/ComposerDetailFragment;->a:Lcom/samsung/android/app/music/list/local/ComposerDetailFragment$Companion;

    if-nez p2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/ComposerDetailFragment$Companion;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/ComposerDetailFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto/16 :goto_0

    .line 80
    :sswitch_4
    sget-object p1, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;->a:Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment$Companion;

    if-nez p2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    if-nez p3, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment$Companion;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/folder/FolderDetailFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto/16 :goto_0

    .line 79
    :sswitch_5
    sget-object p1, Lcom/samsung/android/app/music/list/local/GenreDetailFragment;->a:Lcom/samsung/android/app/music/list/local/GenreDetailFragment$Companion;

    if-nez p2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/GenreDetailFragment$Companion;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/GenreDetailFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto/16 :goto_0

    .line 68
    :sswitch_6
    sget-object p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->b:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$Companion;

    if-nez p2, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    if-nez p3, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_8
    invoke-virtual {p1, v0, v1, p3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$Companion;->a(JLjava/lang/String;)Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto/16 :goto_0

    .line 76
    :sswitch_7
    sget-object p1, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->b:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$Companion;

    if-nez p2, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_9
    if-nez p3, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_a
    invoke-virtual {p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$Companion;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto/16 :goto_0

    .line 75
    :sswitch_8
    sget-object v0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;->b:Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;

    if-nez p2, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_b
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    if-nez p3, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_c
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;->a(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$Companion;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/local/AlbumDetailFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 85
    :sswitch_9
    new-instance p1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 84
    :sswitch_a
    new-instance p1, Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 78
    :sswitch_b
    sget-object p1, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->a:Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$Companion;

    if-nez p2, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_d
    if-nez p4, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_e
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$Companion;->a(Ljava/lang/String;I)Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 82
    :sswitch_c
    new-instance p1, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/list/local/DlnaDmsFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 74
    :sswitch_d
    new-instance p1, Lcom/samsung/android/app/music/list/local/ComposerFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/list/local/ComposerFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 73
    :sswitch_e
    new-instance p1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 72
    :sswitch_f
    new-instance p1, Lcom/samsung/android/app/music/list/local/GenreFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/list/local/GenreFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 67
    :sswitch_10
    new-instance p1, Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 71
    :sswitch_11
    new-instance p1, Lcom/samsung/android/app/music/list/local/ArtistFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/list/local/ArtistFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 70
    :sswitch_12
    new-instance p1, Lcom/samsung/android/app/music/list/local/AlbumFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/list/local/AlbumFragment;-><init>()V

    check-cast p1, Landroid/support/v4/app/Fragment;

    :goto_0
    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_12
        0x10003 -> :sswitch_11
        0x10004 -> :sswitch_10
        0x10006 -> :sswitch_f
        0x10007 -> :sswitch_e
        0x10008 -> :sswitch_d
        0x1000b -> :sswitch_c
        0x10027 -> :sswitch_b
        0x10030 -> :sswitch_a
        0x10100 -> :sswitch_9
        0x100002 -> :sswitch_8
        0x100003 -> :sswitch_7
        0x100004 -> :sswitch_6
        0x100006 -> :sswitch_5
        0x100007 -> :sswitch_4
        0x100008 -> :sswitch_3
        0x10000b -> :sswitch_2
        0x110001 -> :sswitch_1
        0x110027 -> :sswitch_0
    .end sparse-switch
.end method
