.class public final Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;
.super Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "com.samsung.android.app.music.player.fullplayer.recommend.RecommendDialog"


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/PlayListModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->d:Ljava/util/List;

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/music/model/base/PlayListModel;)V
    .locals 8

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 151
    instance-of v1, v0, Lcom/samsung/android/app/music/navigate/NavigationManager;

    if-eqz v1, :cond_0

    .line 152
    move-object v2, v0

    check-cast v2, Lcom/samsung/android/app/music/navigate/NavigationManager;

    const v3, 0x20000050

    .line 153
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistId()Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 153
    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/app/music/navigate/NavigationManager;->navigate(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 156
    :cond_0
    sget-object p1, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->a:Ljava/lang/String;

    const-string v0, "launchDetails() Activity is not NavigationManager"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;Lcom/samsung/android/app/music/model/base/PlayListModel;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->a(Lcom/samsung/android/app/music/model/base/PlayListModel;)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 6

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/model/base/PlayListModel;

    const v2, 0x7f1302c2

    .line 112
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1302c3

    .line 113
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 114
    new-instance v4, Lcom/samsung/android/app/music/browse/util/EllipsizeController;

    invoke-direct {v4, v2, v3}, Lcom/samsung/android/app/music/browse/util/EllipsizeController;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 115
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->a(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v2, 0x2

    .line 116
    invoke-virtual {v4, v2}, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->a(I)V

    .line 117
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getPlaylistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/music/browse/util/EllipsizeController;->a(Ljava/lang/String;)V

    const v2, 0x7f1302c1

    .line 119
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getTrackList()Ljava/util/List;

    move-result-object v1

    .line 122
    invoke-static {v2, v1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;Ljava/util/List;)Z

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    .line 124
    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/PlayListModel;->getArtistList()Ljava/util/List;

    move-result-object v1

    .line 125
    invoke-static {v2, v1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->b(Landroid/view/View;Ljava/util/List;)Z

    .line 128
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1001d1

    .line 130
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 131
    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;

    int-to-float v4, v4

    invoke-direct {v5, v4}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;-><init>(F)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 132
    invoke-virtual {v2, v3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 134
    new-instance v2, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog$1;-><init>(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;ILandroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    .line 88
    sget-object p1, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->a:Ljava/lang/String;

    const-string v0, "updateRecommendListView() View is not ready"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->d:Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->b:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->b(Landroid/view/View;)V

    .line 100
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_2

    .line 101
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->c:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->b(Landroid/view/View;)V

    .line 102
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 104
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->c:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    .line 92
    :cond_3
    :goto_1
    sget-object p1, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->a:Ljava/lang/String;

    const-string v1, "updateRecommendListView() recommendList is null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0b014c

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->dismiss()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/PlayListModel;",
            ">;)V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->d:Ljava/util/List;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0400aa

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f1302be

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->b:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f1302bf

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->c:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->c:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const v2, 0x7f0b0311

    .line 68
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 70
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 72
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const/16 v3, 0x50

    .line 74
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, -0x1

    .line 75
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 76
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendDialog;->a(Landroid/view/View;)V

    return-object v0
.end method
