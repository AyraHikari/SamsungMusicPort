.class public Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/regional/spotify/ISpotifyFeatureChangedListener;
.implements Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpView;
.implements Lcom/samsung/android/app/music/regional/spotify/tab/RestartableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;,
        Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistViewHolder;,
        Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyPlaylistAdapter;,
        Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyViewHolder;,
        Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SpotifyFragment"


# instance fields
.field private b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

.field private c:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;

.field private d:Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpPresenter;

.field private e:Landroid/widget/ProgressBar;

.field private f:Lcom/samsung/android/app/music/network/NetworkManager;

.field private g:Landroid/view/View;

.field private final h:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 243
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$1;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->h:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 4

    .line 252
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->DISCONNECTED_ALL:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    .line 253
    iget-object v1, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v1, v1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz v1, :cond_0

    .line 254
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->CONNECTED:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    goto :goto_0

    .line 255
    :cond_0
    iget-object p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->d:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz p1, :cond_1

    .line 256
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->MOBILE_DATA_USAGE_OFF:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;

    .line 258
    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkUi NetworkState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->b()V

    .line 261
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->g:Landroid/view/View;

    const v1, 0x7f130189

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 262
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->g:Landroid/view/View;

    const v2, 0x7f13018a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 263
    sget-object v2, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$4;->a:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$NetworkState;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 287
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b03af

    .line 289
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0b0310

    .line 290
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 291
    new-instance p1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$3;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 270
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b03b2

    .line 272
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0b0262

    .line 273
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 274
    new-instance p1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$2;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 265
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setVisibility(I)V

    .line 266
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->g:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->d()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->a(Lcom/samsung/android/app/music/network/NetworkInfo;)V

    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 159
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->a:Ljava/lang/String;

    const-string v1, "showProgress : in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->e:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 162
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->a:Ljava/lang/String;

    const-string v1, "showProgress : Progressbar is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public a(II)V
    .locals 3

    .line 207
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showError : in rsp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", resumed: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->isResumed()Z

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 207
    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    .line 211
    invoke-interface {p1}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->a(Lcom/samsung/android/app/music/network/NetworkInfo;)V

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->b()V

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b0260

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 220
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 222
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;",
            ">;)V"
        }
    .end annotation

    .line 181
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->a:Ljava/lang/String;

    const-string v1, "updateSpotifyPlaylistsCache : in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_0

    .line 184
    sget-object p1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->a:Ljava/lang/String;

    const-string v0, "updateSpotifyPlaylistsCache : Recyclerview is null"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const v1, 0x3ebd70a4    # 0.37f

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAlpha(F)V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->c:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 232
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIsSupportedLocation - b : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 170
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->a:Ljava/lang/String;

    const-string v1, "hideProgress : in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->e:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 173
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->a:Ljava/lang/String;

    const-string v1, "hideProgress : Progressbar is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifySimplifiedPlaylistView;",
            ">;)V"
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->a:Ljava/lang/String;

    const-string v1, "updateSpotifyPlaylists : in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-nez v0, :cond_0

    .line 197
    sget-object p1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->a:Ljava/lang/String;

    const-string v0, "updateSpotifyPlaylists : Recyclerview is null"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAlpha(F)V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->c:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;->a(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;Ljava/util/List;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 227
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->a:Ljava/lang/String;

    const-string v1, "hideError : in "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 237
    sget-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->a:Ljava/lang/String;

    const-string v1, "restartList"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->d:Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->c:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->d:Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpPresenter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpPresenter;->c()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 80
    instance-of v0, p1, Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 81
    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->f:Lcom/samsung/android/app/music/network/NetworkManager;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 87
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 88
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->setHasOptionsMenu(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 90
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyPresenter;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->d:Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpPresenter;

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;

    move-result-object p1

    .line 92
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->a(Lcom/samsung/android/app/music/regional/spotify/ISpotifyFeatureChangedListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 153
    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup;

    const v1, 0x7f140029

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup;-><init>(Landroid/support/v4/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 154
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f040257

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 133
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroy()V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->d:Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpPresenter;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->d:Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpPresenter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpPresenter;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->d:Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpPresenter;

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;

    move-result-object v0

    .line 140
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/regional/spotify/SpotifyFeatureChangedListener;->b(Lcom/samsung/android/app/music/regional/spotify/ISpotifyFeatureChangedListener;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 119
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStart()V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->f:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->f:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->h:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->f:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->h:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 128
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 103
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f130126

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->e:Landroid/widget/ProgressBar;

    const p2, 0x7f130577

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const p2, 0x7f130320

    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->g:Landroid/view/View;

    .line 107
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 109
    new-instance p1, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p0, p2}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;-><init>(Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->c:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;

    .line 110
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->c:Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment$SpotifyAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 111
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->seslGetGoToTopBottomPadding()I

    move-result p2

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10086c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p2, v0

    .line 111
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->seslSetGoToTopBottomPadding(I)V

    .line 113
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->d:Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpPresenter;

    invoke-interface {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpPresenter;->a()V

    .line 114
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->d:Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpPresenter;

    invoke-interface {p1}, Lcom/samsung/android/app/music/regional/spotify/tab/ISpotifyTabMvp$MvpPresenter;->c()V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 145
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->setUserVisibleHint(Z)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setGoToTopEnabled(Z)V

    :cond_0
    return-void
.end method
