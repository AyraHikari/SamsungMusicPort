.class public Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->b:Landroid/view/View;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 71
    new-instance v0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;-><init>()V

    .line 72
    new-instance v1, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;-><init>(Ljava/lang/String;)V

    .line 73
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_from_screen"

    .line 74
    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "key_track_info"

    .line 75
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 76
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;
    .locals 2

    .line 82
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;

    invoke-direct {v1, p1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;-><init>(Ljava/lang/String;)V

    .line 84
    iput-object p2, v1, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;->b:Ljava/lang/String;

    .line 85
    iput-object p3, v1, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;->c:Ljava/lang/String;

    .line 86
    iput-object p4, v1, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;->d:Ljava/lang/String;

    .line 88
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "key_from_screen"

    .line 89
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "key_track_info"

    .line 90
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 91
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;)V
    .locals 2
    .param p1    # Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->e:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->f:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->a(Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "SimpleLyricPopup"

    .line 61
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p0, "SimpleLyricPopup"

    const-string p1, "show : already created!"

    .line 62
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_0
    invoke-static {p0, p2, p3, p4, p5}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;

    move-result-object p0

    const-string p2, "SimpleLyricPopup"

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static g(Landroid/content/Context;)Lio/reactivex/functions/Function;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/functions/Function<",
            "Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;",
            ">;>;"
        }
    .end annotation

    .line 177
    new-instance v0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$2;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static h(Landroid/content/Context;)Lio/reactivex/functions/Function;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/functions/Function<",
            "Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;",
            ">;>;"
        }
    .end annotation

    .line 203
    new-instance v0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$3;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f040149

    return v0
.end method

.method protected a(Landroid/content/Context;)I
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10028f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1
.end method

.method protected a(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 3

    .line 122
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->a(Landroid/app/Dialog;Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_from_screen"

    const/4 v2, 0x0

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->g:Ljava/lang/String;

    const-string v1, "key_track_info"

    .line 125
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->a:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;

    const/4 v0, 0x1

    .line 126
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 127
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    const v1, 0x7f1301a4

    .line 128
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->c:Landroid/widget/TextView;

    const v1, 0x7f13013b

    .line 129
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->e:Landroid/widget/TextView;

    const v1, 0x7f1303d9

    .line 130
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->f:Landroid/widget/TextView;

    const v1, 0x7f130372

    .line 131
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->b:Landroid/view/View;

    const v1, 0x7f1303d8

    .line 132
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->h:Landroid/widget/ScrollView;

    .line 134
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->a:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->a(Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    const-string v1, "key_saved_scroll_position"

    .line 138
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p2

    if-eqz p2, :cond_0

    .line 140
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->h:Landroid/widget/ScrollView;

    aget v2, p2, p1

    aget p2, p2, v0

    invoke-virtual {v1, v2, p2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 144
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->b:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->a:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;

    .line 147
    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->g(Landroid/content/Context;)Lio/reactivex/functions/Function;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->h(Landroid/content/Context;)Lio/reactivex/functions/Function;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 149
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/util/rx/ObservableLogger;

    const-string v0, "SimpleLyricPopup"

    const-string v1, "requestLyric"

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/app/music/util/rx/ObservableLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$1;-><init>(Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;)V

    .line 151
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method protected b()I
    .locals 1

    const v0, 0x7f110141

    return v0
.end method

.method protected b(Landroid/content/Context;)I
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10085c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1
.end method

.method protected d(Landroid/content/Context;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "SimpleLyricPopup"

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 162
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->h:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    const-string v0, "key_saved_scroll_position"

    const/4 v1, 0x2

    .line 164
    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->h:Landroid/widget/ScrollView;

    .line 165
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->h:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    aput v3, v1, v2

    .line 164
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "key_track_info"

    .line 166
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup;->a:Lcom/samsung/android/app/music/milk/store/popup/SimpleLyricPopup$TrackInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
