.class public Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:[I


# instance fields
.field private A:Lio/reactivex/disposables/CompositeDisposable;

.field private b:Ljava/lang/String;

.field private c:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

.field private e:Z

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/support/v7/widget/SwitchCompat;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field private u:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

.field private v:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

.field private w:Z

.field private x:Z

.field private y:Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;

.field private z:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    .line 47
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a:[I

    return-void

    :array_0
    .array-data 4
        0x7f1301ac
        0x7f1301ad
        0x7f1301a8
        0x7f1301ae
        0x7f1301a7
        0x7f1301a5
        0x7f13002c
        0x7f1301aa
        0x7f1301a9
        0x7f1301af
        0x7f1301ab
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->w:Z

    .line 94
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->x:Z

    .line 100
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->A:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static a(Lcom/samsung/android/app/music/model/SimpleTrack;)Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "BrowseTrackDetailPopup"

    const-string v0, "newInstance : track is null"

    .line 104
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 107
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;-><init>()V

    .line 108
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "track_object"

    .line 109
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 110
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Ljava/lang/String;Z)Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "BrowseTrackDetailPopup"

    const-string p1, "newInstance : track id is null"

    .line 120
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 123
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "track_id"

    .line 124
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "show_ban"

    .line 125
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    new-instance p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;-><init>()V

    .line 127
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;)Lcom/samsung/android/app/music/model/base/TrackInfoModel;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->c:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;Lcom/samsung/android/app/music/model/base/TrackInfoModel;)Lcom/samsung/android/app/music/model/base/TrackInfoModel;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->c:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    return-object p1
.end method

.method private a(Landroid/view/View;I)V
    .locals 3

    const v0, 0x7f13002c

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p2, v0, :cond_2

    const v0, 0x7f1301a5

    if-eq p2, v0, :cond_1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 287
    :pswitch_0
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->n:Landroid/view/View;

    .line 288
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->n:Landroid/view/View;

    const v0, 0x7f0b00aa

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->b(Landroid/view/View;I)V

    .line 289
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->n:Landroid/view/View;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->e:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->n:Landroid/view/View;

    const v0, 0x7f1301b0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/SwitchCompat;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->o:Landroid/support/v7/widget/SwitchCompat;

    goto :goto_0

    .line 283
    :pswitch_1
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->g:Landroid/view/View;

    .line 284
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->g:Landroid/view/View;

    const v0, 0x7f0b023f

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->b(Landroid/view/View;I)V

    goto :goto_0

    .line 279
    :pswitch_2
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->i:Landroid/view/View;

    .line 280
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->i:Landroid/view/View;

    const v0, 0x7f0b023d

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->b(Landroid/view/View;I)V

    goto :goto_0

    .line 275
    :pswitch_3
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->h:Landroid/view/View;

    .line 276
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->h:Landroid/view/View;

    const v0, 0x7f0b023c

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->b(Landroid/view/View;I)V

    goto :goto_0

    .line 271
    :pswitch_4
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->m:Landroid/view/View;

    .line 272
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->m:Landroid/view/View;

    const v0, 0x7f0b00af

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->b(Landroid/view/View;I)V

    goto :goto_0

    .line 267
    :pswitch_5
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->k:Landroid/view/View;

    .line 268
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->k:Landroid/view/View;

    const v0, 0x7f0b0192

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->b(Landroid/view/View;I)V

    goto :goto_0

    .line 263
    :pswitch_6
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->q:Landroid/view/View;

    .line 264
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->q:Landroid/view/View;

    const v0, 0x7f0b00ae

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->b(Landroid/view/View;I)V

    goto :goto_0

    .line 259
    :pswitch_7
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->p:Landroid/view/View;

    .line 260
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->p:Landroid/view/View;

    const v0, 0x7f0b023e

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->b(Landroid/view/View;I)V

    goto :goto_0

    .line 255
    :pswitch_8
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->f:Landroid/view/View;

    .line 256
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->f:Landroid/view/View;

    const v0, 0x7f0b023b

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->b(Landroid/view/View;I)V

    goto :goto_0

    .line 247
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->j:Landroid/view/View;

    .line 248
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->j:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 251
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->l:Landroid/view/View;

    .line 252
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->l:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 292
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Landroid/view/View;Z)V

    .line 294
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_3

    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 296
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x7f1301a7
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/view/View;Z)V
    .locals 1

    .line 308
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f13015f

    .line 309
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 311
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 358
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->w:Z

    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->j:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b0210

    .line 360
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const v2, 0x7f0b0351

    goto :goto_0

    :cond_0
    const v2, 0x7f0b02cc

    .line 361
    :goto_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->j:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;)Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->v:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    return-object p0
.end method

.method private b(Landroid/view/View;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const v0, 0x7f13015f

    .line 301
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 303
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 366
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->x:Z

    .line 367
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->o:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method private c()V
    .locals 4

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->c:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    if-nez v0, :cond_0

    const-string v0, "BrowseTrackDetailPopup"

    const-string v1, "updateView : info null"

    .line 317
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->c:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->s:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->s:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->c:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getArtistList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->c:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getAlbumArtUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->c(Landroid/content/Context;)Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Landroid/view/View;Z)V

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->q:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Landroid/view/View;Z)V

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->m:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Landroid/view/View;Z)V

    .line 337
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->g:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->c:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->hasMusicVideo()Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Landroid/view/View;Z)V

    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->p:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->c:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->isDownloadable()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->c:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->isCelebTrack()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Landroid/view/View;Z)V

    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->h:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->c:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->hasAvailableAlbum()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->c:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->isCelebTrack()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Landroid/view/View;Z)V

    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->i:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->c:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->hasAvailableArtist()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->c:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->isCelebTrack()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Landroid/view/View;Z)V

    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->k:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->c:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->hasLyric()Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Landroid/view/View;Z)V

    .line 343
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->e:Z

    if-eqz v0, :cond_7

    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->n:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Landroid/view/View;Z)V

    .line 345
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->x:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->b(Z)V

    .line 349
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->c:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->isPlayable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->f:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Landroid/view/View;Z)V

    .line 351
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->j:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Landroid/view/View;Z)V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 354
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->v:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->z:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->c()V

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->f()V

    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;)Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->y:Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;

    return-object p0
.end method

.method private f()V
    .locals 1

    .line 448
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 451
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    .line 452
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->dismissAllowingStateLoss()V

    :cond_2
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f04003c

    return v0
.end method

.method protected a(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 5

    .line 147
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->a(Landroid/app/Dialog;Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->t:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    if-nez v1, :cond_0

    .line 152
    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->t:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->u:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    if-nez v1, :cond_1

    .line 156
    new-instance v1, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->u:Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->v:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    if-nez v1, :cond_2

    .line 160
    new-instance v1, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->v:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    :cond_2
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    const-string v2, "key_banned"

    .line 164
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->x:Z

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    instance-of p2, p2, Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;

    if-eqz p2, :cond_3

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;

    .line 167
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;)V

    :cond_3
    const/4 p2, 0x1

    .line 172
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 173
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 v2, 0x50

    invoke-virtual {p2, v2}, Landroid/view/Window;->setGravity(I)V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v2, "track_id"

    .line 176
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->b:Ljava/lang/String;

    const-string v2, "track_object"

    .line 177
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/SimpleTrack;

    .line 178
    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 179
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->b:Ljava/lang/String;

    :cond_4
    const-string v2, "show_ban"

    .line 181
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->e:Z

    const p2, 0x7f1301a4

    .line 183
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->r:Landroid/widget/TextView;

    const p2, 0x7f13013b

    .line 184
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->s:Landroid/widget/TextView;

    .line 186
    sget-object p2, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a:[I

    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_5

    aget v3, p2, v1

    .line 187
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 188
    invoke-direct {p0, v4, v3}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->A:Lio/reactivex/disposables/CompositeDisposable;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->b:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->c(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p2

    .line 192
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    .line 193
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$1;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;)V

    new-instance v1, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$2;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;)V

    .line 194
    invoke-virtual {p2, v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p2

    .line 191
    invoke-virtual {p1, p2}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    .line 214
    new-instance p1, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$3;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->z:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->y:Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;

    return-void
.end method

.method protected b()I
    .locals 1

    const v0, 0x7f110141

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->c:Lcom/samsung/android/app/music/model/base/TrackInfoModel;

    if-nez v0, :cond_0

    const-string p1, "BrowseTrackDetailPopup"

    const-string v0, "onClick : mTrackInfo is null"

    .line 373
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->f()V

    return-void

    .line 380
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f13002c

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const v0, 0x7f1301a5

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 432
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->v:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->x:Z

    xor-int/2addr v0, v1

    new-instance v1, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$5;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a(ZLcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;)V

    goto :goto_1

    .line 407
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->v:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->e()V

    goto :goto_0

    .line 394
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->v:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->b(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0

    .line 390
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->v:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->d()V

    goto :goto_0

    .line 398
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->v:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->e:Z

    iget-boolean v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->x:Z

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a(ZZ)V

    goto :goto_0

    .line 412
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->v:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_1

    .line 421
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->v:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$4;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->b(Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;)V

    goto :goto_1

    .line 386
    :pswitch_7
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->v:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->c()V

    goto :goto_0

    .line 382
    :pswitch_8
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->v:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->b()V

    goto :goto_0

    .line 417
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->v:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->w:Z

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->z:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a(ZLcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;)V

    goto :goto_1

    .line 402
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->v:Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    .line 443
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->f()V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x7f1301a7
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 228
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 233
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onDestroy()V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->A:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->a()V

    const-string v0, "BrowseTrackDetailPopup"

    const-string v1, "onDestroy"

    .line 235
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 458
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onDismiss(Landroid/content/DialogInterface;)V

    const-string p1, "BrowseTrackDetailPopup"

    const-string v0, "onDismiss"

    .line 459
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 464
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onResume()V

    .line 465
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "discover_track_detail"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/GoogleFireBaseAnalyticsManager;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 240
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_banned"

    .line 241
    iget-boolean v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->x:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
