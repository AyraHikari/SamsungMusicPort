.class public final Lcom/samsung/android/app/music/menu/ListMenuGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;,
        Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;,
        Lcom/samsung/android/app/music/menu/ListMenuGroup$DeleteableMenu;,
        Lcom/samsung/android/app/music/menu/ListMenuGroup$PlayableMenu;,
        Lcom/samsung/android/app/music/menu/ListMenuGroup$DownloadableMenu;,
        Lcom/samsung/android/app/music/menu/ListMenuGroup$PlaylistMenu;,
        Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;,
        Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;,
        Lcom/samsung/android/app/music/menu/ListMenuGroup$ShortCutMenu;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v4/app/FragmentActivity;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:[J

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private final k:Lcom/samsung/android/app/music/network/NetworkManager;

.field private final l:Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;

.field private final m:Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;

.field private final n:Landroid/support/v4/app/Fragment;

.field private final o:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;IZ)V
    .locals 3

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->n:Landroid/support/v4/app/Fragment;

    iput p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->o:I

    .line 75
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->n:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->b:Landroid/content/Context;

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c:Ljava/util/ArrayList;

    .line 95
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    instance-of p2, p1, Lcom/samsung/android/app/music/network/NetworkManager;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    move-object p1, v0

    :cond_1
    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->k:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz p3, :cond_5

    .line 103
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_3

    .line 104
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/app/music/menu/MyMusicModeOffMenu;

    iget-object p3, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    if-nez p3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-direct {p2, p3}, Lcom/samsung/android/app/music/menu/MyMusicModeOffMenu;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/app/music/menu/MyInfoMenu;

    iget-object p3, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p2, p3}, Lcom/samsung/android/app/music/menu/MyInfoMenu;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_3
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->t_:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/app/music/menu/VzwOpCloudMenu;

    iget-object p3, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    if-nez p3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    check-cast p3, Landroid/app/Activity;

    invoke-direct {p2, p3}, Lcom/samsung/android/app/music/menu/VzwOpCloudMenu;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;

    iget-object p3, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->n:Landroid/support/v4/app/Fragment;

    invoke-direct {p2, p3}, Lcom/samsung/android/app/music/list/analytics/ListMenuAnalytics;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;

    iget-object p3, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->n:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p2, p3, v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;-><init>(Landroid/support/v4/app/Fragment;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$CommonMenu;-><init>(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$AddToableMenu;-><init>(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlayableMenu;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlayableMenu;-><init>(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/app/music/menu/ListMenuGroup$DeleteableMenu;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$DeleteableMenu;-><init>(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/app/music/menu/ShareMenu;

    iget-object p3, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->n:Landroid/support/v4/app/Fragment;

    invoke-direct {p2, p3}, Lcom/samsung/android/app/music/menu/ShareMenu;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/app/music/menu/ListMenuGroup$DownloadableMenu;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$DownloadableMenu;-><init>(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlaylistMenu;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PlaylistMenu;-><init>(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance p1, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;-><init>(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->m:Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;

    .line 121
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->m:Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance p1, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;-><init>(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->l:Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;

    .line 123
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->l:Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/app/music/menu/LaunchMenu;

    iget-object p3, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->n:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->n:Landroid/support/v4/app/Fragment;

    invoke-direct {p2, p3, v0}, Lcom/samsung/android/app/music/menu/LaunchMenu;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/app/music/menu/HeartMenu;

    iget-object p3, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->n:Landroid/support/v4/app/Fragment;

    invoke-direct {p2, p3}, Lcom/samsung/android/app/music/menu/HeartMenu;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/app/music/menu/ListMenuGroup$ShortCutMenu;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$ShortCutMenu;-><init>(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->o_:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/app/music/regional/kor/LgtMenu;

    iget-object p3, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->n:Landroid/support/v4/app/Fragment;

    invoke-direct {p2, p3}, Lcom/samsung/android/app/music/regional/kor/LgtMenu;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public synthetic constructor <init>(Landroid/support/v4/app/Fragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 72
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZ)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/menu/ListMenuGroup;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->e:I

    return p0
.end method

.method private final a()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->n:Landroid/support/v4/app/Fragment;

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;->K()V

    :cond_1
    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/FragmentActivity;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->a:Landroid/support/v4/app/FragmentActivity;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->n:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/menu/ListMenuGroup;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d:I

    return p0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->i:Z

    return p0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->a()V

    return-void
.end method

.method public static final synthetic h(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->j:Z

    return p0
.end method

.method public static final synthetic i(Lcom/samsung/android/app/music/menu/ListMenuGroup;)[J
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->f:[J

    return-object p0
.end method

.method public static final synthetic j(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->g:Z

    return p0
.end method

.method public static final synthetic k(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->h:Z

    return p0
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 6

    if-eqz p1, :cond_7

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->n:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_6

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    const/4 v1, 0x0

    .line 146
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->f:[J

    .line 147
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d:I

    .line 148
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->w_()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->e:I

    .line 151
    iget-object v2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->k:Lcom/samsung/android/app/music/network/NetworkManager;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->k:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v2}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v2, v2, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->j:Z

    const/4 v1, 0x0

    .line 153
    check-cast v1, [J

    .line 155
    iget-object v2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isEnableMoveToKnox(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->m:Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->b(Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    invoke-interface {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(I)[J

    move-result-object v1

    .line 157
    iget-object v2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/app/music/util/MediaDbUtils;->b(Landroid/content/Context;[J)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->h:Z

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->l:Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;

    iget-object v4, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->b:Landroid/content/Context;

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 161
    iget-object v2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->l:Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->b(Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v1, :cond_3

    .line 164
    invoke-interface {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(I)[J

    move-result-object v1

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->l:Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a([J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->g:Z

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 859
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 169
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;)V

    goto :goto_0

    :cond_5
    return-void

    .line 144
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.CheckableList"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 132
    instance-of v0, p1, Landroid/view/ContextMenu;

    iput-boolean v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->i:Z

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 135
    instance-of v2, v1, Lcom/samsung/android/app/music/menu/AddableMenu;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/samsung/android/app/music/menu/AddableMenu;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/music/menu/AddableMenu;->b(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .line 138
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz p2, :cond_2

    iget v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->o:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 175
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return v1
.end method
